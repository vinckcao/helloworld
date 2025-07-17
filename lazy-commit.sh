#!/bin/bash

# 终极偷懒提交脚本

echo "🦥 懒人提交模式启动..."

# 随机选择一个提交信息
MESSAGES=(
    "🚀 又是充实的一天"
    "💻 代码写得不错"
    "✨ 添加了一些功能"
    "🐛 修复了一些问题"
    "📝 更新了文档"
    "🔧 调整了配置"
    "⚡ 性能优化"
    "💄 界面美化"
    "🎉 功能完善"
    "🔥 代码优化"
)

# 随机选择一条信息
RANDOM_INDEX=$((RANDOM % ${#MESSAGES[@]}))
MESSAGE=${MESSAGES[$RANDOM_INDEX]}

# 添加时间戳
TIMESTAMP=$(date +"%m-%d %H:%M")
FULL_MESSAGE="$MESSAGE ($TIMESTAMP)"

echo "📝 随机生成: $FULL_MESSAGE"

# 执行提交
git add .
git commit -m "$FULL_MESSAGE"
git push

echo "🎉 懒人提交完成！"
