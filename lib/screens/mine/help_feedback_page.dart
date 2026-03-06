import 'package:flutter/material.dart';
import 'package:fox_player/core/theme/app_theme.dart';

class HelpFeedbackPage extends StatelessWidget {
  const HelpFeedbackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('帮助与反馈'), centerTitle: true),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 常见问题
            _buildSectionTitle('常见问题'),
            const SizedBox(height: 12),
            _buildFAQItem(
              '视频无法播放？',
              '请检查：① URL 是否有效且可公开访问 ② 视频格式是否为 MP4/HLS ③ 设备网络是否正常。本播放器不支持 DRM 保护内容。',
              context,
            ),
            _buildFAQItem(
              '播放卡顿/缓冲慢？',
              '此为网络视频正常现象，取决于视频源服务器带宽与您的网络环境。应用本身不进行额外缓冲优化（练习项目定位）。',
              context,
            ),
            _buildFAQItem(
              '为什么没有“下载视频”功能？',
              '本项目聚焦播放器核心能力实现，未集成下载模块。如需下载实现，可自行参考学习。',
              context,
            ),
            _buildFAQItem(
              '会收集我的播放记录吗？',
              '不会。所有操作仅在设备本地完成，无任何数据上传行为。详见「隐私政策」页面。',
              context,
            ),
            const SizedBox(height: 24),

            // 反馈渠道
            _buildSectionTitle('反馈渠道'),
            _buildTextTextItem(
              icon: Icons.bug_report,
              title: '报告问题',
              subtitle: '遇到 Bug 或异常行为？请通过 GitHub Issues 提交详细描述与复现步骤',
              context: context,
            ),

            _buildTextTextItem(
              icon: Icons.lightbulb_outline,
              title: '功能建议',
              subtitle: '有好的想法？欢迎提交 Feature Request，我会在学习过程中评估实现',
              context: context,
            ),

            _buildTextTextItem(
              icon: Icons.code,
              title: '参与贡献',
              subtitle: '发现代码问题或优化点？欢迎 Fork 仓库并提交 Pull Request',
              context: context,
            ),
            const SizedBox(height: 12),
            Center(
              child: Text(
                '💡 提示：作为个人练习项目，反馈回复可能不及时，敬请谅解',
                style: TextStyle(
                  fontSize: 13,
                  color: Theme.of(
                    context,
                  ).colorScheme.onSurface.withValues(alpha: .6),
                ),
              ),
            ),
            const SizedBox(height: 28),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    );
  }

  Widget _buildFAQItem(String question, String answer, BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Q: $question',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: AppThemes.getPrimaryTextColor(context),
            ),
          ),
          const SizedBox(height: 6),
          Text(
            'A: $answer',
            style: TextStyle(
              height: 1.6,
              color: Theme.of(
                context,
              ).colorScheme.onSurface.withValues(alpha: .8),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTextTextItem({
    required IconData icon,
    required String title,
    String? subtitle,
    required BuildContext context,
  }) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: AppThemes.primaryGray.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Icon(icon, color: AppThemes.primaryGray),
        ),
        title: Text(
          title,
          style: TextStyle(color: AppThemes.getPrimaryTextColor(context)),
        ),
        subtitle: subtitle != null ? Text(subtitle) : null,
      ),
    );
  }
}
