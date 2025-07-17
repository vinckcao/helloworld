#!/bin/bash

# 智能提交脚本 - 根据文件变化自动生成提交信息

echo "🤖 智能分析代码变化..."

# 检查修改的文件类型
if git diff --cached --name-only | grep -q "\.md$"; then
    MESSAGE="📝 docs: 更新文档"
elif git diff --cached --name-only | grep -q "\.cs$"; then
    MESSAGE="💻 feat: 更新C#代码"
elif git diff --cached --name-only | grep -q "\.json$\|\.config$"; then
    MESSAGE="🔧 chore: 更新配置文件"
elif git diff --cached --name-only | grep -q "\.txt$"; then
    MESSAGE="📄 chore: 更新文本文件"
else
    MESSAGE="🚀 chore: 常规更新"
fi

# 添加时间戳
TIMESTAMP=$(date +"%Y-%m-%d %H:%M")
FULL_MESSAGE="$MESSAGE ($TIMESTAMP)"

echo "📝 生成的提交信息: $FULL_MESSAGE"
echo "❓ 是否使用此提交信息? (y/n)"
read -r response

if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]; then
    git commit -m "$FULL_MESSAGE"
    echo "✅ 提交成功!"
    echo "🚀 是否推送到远程? (y/n)"
    read -r push_response
    if [[ "$push_response" =~ ^([yY][eE][sS]|[yY])$ ]]; then
        git push
        echo "🎉 推送完成!"
    fi
else
    echo "❌ 已取消提交"
fi
