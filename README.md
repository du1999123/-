# Silly Tavern Character Tracker Plugin

一个功能强大的Silly Tavern插件，用于追踪角色信息、性格特征和关系网络，并生成性格比重饼图发送给AI。

## 🚀 快速安装

### 方法1：Git URL安装（推荐）
1. 在Silly Tavern中，进入 **Settings** → **Extensions**
2. 在 **Git URL** 字段中输入：
   ```
   https://github.com/yourusername/sillytavern-character-tracker.git
   ```
3. 点击 **Install** 按钮
4. 重启Silly Tavern
5. 在菜单中查找 "👥 Character Tracker" 按钮

### 方法2：手动安装
1. 下载插件文件到本地
2. 在Silly Tavern中，将整个插件文件夹复制到 `public/plugins/` 目录
3. 重启Silly Tavern
4. 在菜单中会看到 "👥 Character Tracker" 按钮

### 方法3：构建后使用
1. 安装依赖：
```bash
npm install
```

2. 构建插件：
```bash
npm run build
```

3. 将 `dist/` 目录中的文件复制到Silly Tavern的插件目录

## 功能特性

### 🎭 角色管理
- 添加、编辑、删除角色
- 记录角色基本信息（姓名、角色、备注）
- 支持多个角色同时管理

### 🧠 性格特征追踪
- 为每个角色添加性格特征
- 设置特征权重（1-10分）
- 生成性格比重饼图
- 提供性格分析和洞察

### 🌐 关系网络管理
- 定义角色间的关系类型（朋友、敌人、恋人、家人、同事等）
- 可视化关系网络图
- 分析关系模式和网络密度
- 生成关系洞察报告

### 📊 数据分析和报告
- 生成AI友好的角色分析报告
- 导出角色数据为JSON格式
- 性格特征统计和分布分析
- 关系网络模式分析

## 使用方法

### 基本操作
1. 点击菜单中的 "👥 Character Tracker" 按钮打开插件界面
2. 使用标签页切换不同功能：
   - **Characters**: 管理角色列表
   - **Personality**: 查看性格分析和饼图
   - **Relationships**: 管理关系网络
   - **Analysis**: 生成AI报告和导出数据

### 添加角色
1. 在Characters标签页点击 "+ Add New Character"
2. 输入角色姓名和角色类型
3. 点击编辑按钮添加性格特征和关系

### 管理性格特征
1. 在角色编辑器中，找到"Personality Traits"部分
2. 输入特征名称和权重（1-10分）
3. 点击"Add Trait"添加特征
4. 在Personality标签页查看饼图和统计信息

### 管理关系网络
1. 在角色编辑器中，找到"Relationships"部分
2. 选择关系目标角色、类型和添加备注
3. 点击"Add Relationship"添加关系
4. 在Relationships标签页查看关系网络图

### 生成AI报告
1. 在Analysis标签页点击"Generate AI Report"
2. 查看生成的详细角色分析报告
3. 点击"Copy to Clipboard"复制报告内容
4. 将报告发送给AI进行分析

## 数据结构

### 角色数据结构
```json
{
  "name": "角色姓名",
  "role": "角色类型",
  "personalityTraits": [
    {
      "name": "特征名称",
      "weight": 8
    }
  ],
  "relationships": [
    {
      "target": "目标角色",
      "type": "关系类型",
      "notes": "关系备注"
    }
  ],
  "notes": "角色备注",
  "createdAt": "创建时间"
}
```

### 关系类型
- `friend`: 朋友
- `enemy`: 敌人
- `lover`: 恋人
- `family`: 家人
- `colleague`: 同事
- `other`: 其他

## 技术特性

- **响应式设计**: 支持桌面和移动设备
- **数据持久化**: 使用localStorage保存数据
- **动态图表**: 使用Chart.js生成交互式饼图
- **模块化架构**: 清晰的代码结构和组件分离
- **现代化UI**: 深色主题，流畅的动画效果

## 浏览器兼容性

- Chrome 80+
- Firefox 75+
- Safari 13+
- Edge 80+

## 故障排除

### 插件不显示
1. 检查浏览器控制台是否有错误信息
2. 确认插件文件已正确放置在插件目录
3. 重启Silly Tavern

### 图表不显示
1. 检查网络连接，确保Chart.js能正常加载
2. 刷新页面重试
3. 检查浏览器是否支持Canvas

### 数据丢失
1. 检查浏览器localStorage是否被清除
2. 确认没有其他插件冲突
3. 定期导出数据备份

## 开发说明

### 项目结构
```
src/
├── index.js              # 主入口文件
├── CharacterTracker.js   # 角色追踪器
├── PersonalityAnalyzer.js # 性格分析器
├── RelationshipNetwork.js # 关系网络管理
└── styles.css           # 样式文件
```

### 构建命令
```bash
# 开发模式（监听文件变化）
npm run dev

# 生产构建
npm run build
```

### 自定义开发
- 修改 `src/styles.css` 自定义界面样式
- 在 `CharacterTracker.js` 中添加新的角色属性
- 扩展 `PersonalityAnalyzer.js` 添加新的分析功能
- 在 `RelationshipNetwork.js` 中添加新的关系类型

## 许可证

MIT License

## 贡献

欢迎提交Issue和Pull Request来改进这个插件！

## 更新日志

### v1.0.0
- 初始版本发布
- 基础角色管理功能
- 性格特征追踪和饼图生成
- 关系网络管理
- AI报告生成功能 