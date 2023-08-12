import os
from toml import load
from toml.decoder import TomlDecodeError

files = [f for f in os.listdir("files") if f != "example.toml"]

file = os.path.join("files", files[0])

try: dict = load(file)
except TomlDecodeError:
    print("格式错误：" + file)
    raise

assert "editor" in dict, "缺少编辑：" + file
assert "name" in dict["editor"], "缺少编辑名字：" + file
assert "degree" in dict["editor"], "缺少编辑学位：" + file

try:
    articles = dict["article"]
except:
    print("缺少文章：" + file)
    raise

for i in range(len(articles)):
    try:
        article = articles[str(i + 1)]
    except:
        print("缺少文章：" + file)
        raise
    assert "title" in article, "缺少文章标题：" + file
    assert "doi" in article, "缺少doi：" + file
    assert "authors" in article, "缺少作者：" + file
    assert "journal" in article, "缺少期刊名：" + file
    assert "publish" in article, "缺少发布信息：" + file
    assert "category" in article, "缺少分类：" + file
    assert "summary" in article, "缺少概括：" + file
    assert "abstract" in article, "缺少abstract：" + file
    assert "keywords" in article, "缺少关键词：" + file
