import 'package:flutter/material.dart';
import 'package:reddit_clone/_presentation/core/constants/colors.dart';
import 'package:reddit_clone/_presentation/core/constants/ui.dart';
import 'package:reddit_clone/_presentation/core/reusable/app_header.dart';
import 'package:reddit_clone/domain/subreddit/subreddit_rule.dart';
import 'package:reddit_clone/ext/configurable_expansion_panel.dart';
import 'package:reddit_clone/utility/mock_objects.dart';

class SubredditAboutTabPage extends StatelessWidget {
  const SubredditAboutTabPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: UIConstants.physics,
      slivers: [
        SubredditRulesList(rules: fakeRules),
      ],
    );
  }
}

class SubredditRulesList extends StatelessWidget {
  final List<SubredditRule> rules;
  const SubredditRulesList({
    Key? key,
    required this.rules,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          if (index == 0) {
            return _buildListHeader();
          }
          final idx = index - 1;
          final content = rules[idx].content;
          final header = rules[idx].header;

          return CustomExpansionTile(
            content: content,
            header: '$index. $header',
          );
        },
        childCount: rules.length + 1,
      ),
    );
  }

  Widget _buildListHeader() {
    return Container(
      color: AppColors.lightBlack,
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppHeaderText(
            'Rules',
            fontSizeFactor: 0.75,
            fontWeightDelta: 2,
          ),
          Divider(
            color: AppColors.mmoreLightGrey,
          ),
        ],
      ),
    );
  }
}

class CustomExpansionTile extends StatelessWidget {
  final String header;
  final String content;
  const CustomExpansionTile({
    Key? key,
    required this.header,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.lightBlack,
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
      child: ConfigurableExpansionTile(
        headerExpanded: _header(true),
        header: _header(false),
        // initiallyExpanded: true,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: AppHeaderText(
                    content,
                    fontSizeFactor: 0.7,
                    fontWeightDelta: -1,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _header(bool expanded) {
    return Padding(
      // padding: const EdgeInsets.symmetric(horizontal: 20.0),
      padding: EdgeInsets.zero,
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: AppHeaderText(
              header,
              fontSizeFactor: 0.7,
              maxLines: 2,
              fontWeightDelta: -1,
            ),
          ),
          // Spacer(),
          Icon(
            expanded ? Icons.expand_less : Icons.expand_more,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
