/*
Navicat MySQL Data Transfer

Source Server         : yzy
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : blog

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-06-24 18:58:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('5', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('8', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('9', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('10', 'Can add user', '4', 'add_user');
INSERT INTO `auth_permission` VALUES ('11', 'Can change user', '4', 'change_user');
INSERT INTO `auth_permission` VALUES ('12', 'Can delete user', '4', 'delete_user');
INSERT INTO `auth_permission` VALUES ('13', 'Can add content type', '5', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('14', 'Can change content type', '5', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete content type', '5', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('16', 'Can add session', '6', 'add_session');
INSERT INTO `auth_permission` VALUES ('17', 'Can change session', '6', 'change_session');
INSERT INTO `auth_permission` VALUES ('18', 'Can delete session', '6', 'delete_session');
INSERT INTO `auth_permission` VALUES ('19', 'Can add category', '7', 'add_category');
INSERT INTO `auth_permission` VALUES ('20', 'Can change category', '7', 'change_category');
INSERT INTO `auth_permission` VALUES ('21', 'Can delete category', '7', 'delete_category');
INSERT INTO `auth_permission` VALUES ('22', 'Can add post', '8', 'add_post');
INSERT INTO `auth_permission` VALUES ('23', 'Can change post', '8', 'change_post');
INSERT INTO `auth_permission` VALUES ('24', 'Can delete post', '8', 'delete_post');
INSERT INTO `auth_permission` VALUES ('25', 'Can add tag', '9', 'add_tag');
INSERT INTO `auth_permission` VALUES ('26', 'Can change tag', '9', 'change_tag');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete tag', '9', 'delete_tag');
INSERT INTO `auth_permission` VALUES ('28', 'Can add comment', '10', 'add_comment');
INSERT INTO `auth_permission` VALUES ('29', 'Can change comment', '10', 'change_comment');
INSERT INTO `auth_permission` VALUES ('30', 'Can delete comment', '10', 'delete_comment');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES ('1', 'pbkdf2_sha256$100000$R1WcstDM5Ey7$c/jb48AeUQXrb9MCPCWC7og+04eqmL9qYTHqVH3uObU=', '2018-06-24 10:42:06.942136', '1', 'yuzy', '', '', 'soiger@163.com', '1', '1', '2018-06-14 01:50:31.126234');
INSERT INTO `auth_user` VALUES ('2', 'pbkdf2_sha256$100000$A5UkeordtoF7$ONo/lwl4FoNr+LIhQUlibFCRX2I6YP3FJaLhXmPXq5g=', '2018-06-24 09:51:00.000000', '0', 'teacher', '', '', '', '0', '1', '2018-06-24 09:50:00.000000');

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------
INSERT INTO `auth_user_user_permissions` VALUES ('2', '2', '19');
INSERT INTO `auth_user_user_permissions` VALUES ('3', '2', '22');
INSERT INTO `auth_user_user_permissions` VALUES ('1', '2', '25');

-- ----------------------------
-- Table structure for blog_category
-- ----------------------------
DROP TABLE IF EXISTS `blog_category`;
CREATE TABLE `blog_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_category
-- ----------------------------
INSERT INTO `blog_category` VALUES ('1', 'category test');
INSERT INTO `blog_category` VALUES ('2', '测试');
INSERT INTO `blog_category` VALUES ('3', '自言自语');
INSERT INTO `blog_category` VALUES ('4', '江湖一梦');

-- ----------------------------
-- Table structure for blog_post
-- ----------------------------
DROP TABLE IF EXISTS `blog_post`;
CREATE TABLE `blog_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(70) NOT NULL,
  `body` longtext NOT NULL,
  `created_time` datetime(6) NOT NULL,
  `modified_time` datetime(6) NOT NULL,
  `excerpt` varchar(200) NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_post_author_id_dd7a8485_fk_auth_user_id` (`author_id`),
  KEY `blog_post_category_id_c326dbf8_fk_blog_category_id` (`category_id`),
  CONSTRAINT `blog_post_author_id_dd7a8485_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `blog_post_category_id_c326dbf8_fk_blog_category_id` FOREIGN KEY (`category_id`) REFERENCES `blog_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_post
-- ----------------------------
INSERT INTO `blog_post` VALUES ('1', 'title test', 'body test', '2018-06-14 01:54:40.779345', '2018-06-14 01:54:40.779345', '', '1', '1');
INSERT INTO `blog_post` VALUES ('2', '第一篇日志', '这是我写的第一篇日志，用来测试网站是否成功运行。以下为凑字数。\r\n每个人心中都有一个江湖梦。\r\n那何为江湖？\r\n少室山上绕梁钟声是江湖。\r\n真武殿前袅袅青烟是江湖。\r\n哪怕是席梦思上黄粱一梦，亦是江湖。\r\n人之所向，人之所往，即为江湖。\r\n故事的开始，一个普通的大学生，以为自己在寝室床上昏昏睡去，再度睁眼，已是江湖。\r\n他讨厌富二代，却意外出身世家；他厌恶纷争，却难以逃脱算计与争端。\r\n更为意外的是，这里似乎有一个庞大的组织，搅乱了这个世界，也搅乱了他的生活。\r\n当他接近斗争的漩涡，等待着他的，却是出乎意料的景象。\r\n假作真时真亦假，无为有处有还无。\r\n最后的最后，是黄粱一梦，还是江湖现实？\r\n答案，也许就在你心中。', '2018-06-14 10:36:26.000000', '2018-06-14 10:36:38.000000', '这是我写的第一篇日志，用来测试网站是否成功运行。', '1', '2');
INSERT INTO `blog_post` VALUES ('3', '另一个测试样例', '# 一级标题\r\n\r\n## 二级标题\r\n\r\n### 三级标题\r\n\r\n- 列表项1\r\n- 列表项2\r\n- 列表项3\r\n\r\n> 这是一段引用\r\n~~~~python\r\ndef detail(request, pk):\r\n    post = get_object_or_404(Post, pk=pk)\r\n    post.body = markdown.markdown(post.body,\r\n                                  extensions=[\r\n                                      \'markdown.extensions.extra\',\r\n                                      \'markdown.extensions.codehilite\',\r\n                                      \'markdown.extensions.toc\',\r\n                                  ])\r\n    return render(request, \'blog/detail.html\', context={\'post\': post})\r\n~~~~', '2018-06-14 11:20:01.000000', '2018-06-14 11:20:02.000000', '测试Markdown的效果', '1', '2');
INSERT INTO `blog_post` VALUES ('4', '前言', '- 余幼时好词赋，尝兴浓而为诗，以之自愉。适一友至，异而读之。及毕，笑曰：“该稼轩之‘为赋新词强说愁’哉？以此观之，古之骚客亦未必以真情为诗。”余默然，似未闻，寻书此于夜。\r\n- 诗者，所以寄情抒怀咏叹也。故为诗之人，虽有万钟而不加，虽有千金而不纳，虽有佳丽而不睬，虽有圣诏而不顾。其为诗也，取心乱之一瞬，撷情动之一刹，追蛛丝一念，抒万丈情思。若无一瞬一刹之情动，虽登高山亦无舒啸，虽临清流而难赋诗，虽举首而疏壮志,虽俯怀而乏咏词。若无真情在胸，虽成文辞，犹似东施之捧心，何来所谓诗者哉？\r\n- 或曰：“人生悲苦者，莫过生老病死。年少人弱冠之时，未深涉世，何来悲愁哉？”余以为不然。天地有遵其心者，以日曜为乐，以阴翳为悲；以娇沐雨为乐，以霜摧花为悲；以虫鸟一鸣为乐，以瑟风长啸为悲，一草一木，皆能因而兴怀。故穷途末路，阮籍痛哭；嘲讽周礼，接舆狂乐，此皆其人也。稼轩之叹“少年不知愁滋味”，盖指后日愁死之浓，岂知其年少无惘然之情？况少年虽无生老病死之苦，亦有怀故友叹兴替失所爱抒壮志之思，岂云无快意悲愁者哉？\r\n-  故余之为诗，或于凄清月色，思他乡未归人；或于幽暗烛火，悟书中之妙理。月色之中，烛火之下，撷取心乱情动之一念，因以为诗。余为诗也，不顾万贯钱财，不慕八斗之名，不期佳丽倾心,不盼奉旨填词。盖余笔之行处，即余心之行处。何来“强说愁”一辞哉？', '2018-06-24 10:49:00.000000', '2018-06-24 10:49:00.000000', '写在最前的一点自言自语', '1', '3');

-- ----------------------------
-- Table structure for blog_post_tags
-- ----------------------------
DROP TABLE IF EXISTS `blog_post_tags`;
CREATE TABLE `blog_post_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blog_post_tags_post_id_tag_id_4925ec37_uniq` (`post_id`,`tag_id`),
  KEY `blog_post_tags_tag_id_0875c551_fk_blog_tag_id` (`tag_id`),
  CONSTRAINT `blog_post_tags_post_id_a1c71c8a_fk_blog_post_id` FOREIGN KEY (`post_id`) REFERENCES `blog_post` (`id`),
  CONSTRAINT `blog_post_tags_tag_id_0875c551_fk_blog_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `blog_tag` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_post_tags
-- ----------------------------
INSERT INTO `blog_post_tags` VALUES ('1', '2', '2');
INSERT INTO `blog_post_tags` VALUES ('2', '3', '2');
INSERT INTO `blog_post_tags` VALUES ('3', '4', '2');
INSERT INTO `blog_post_tags` VALUES ('4', '4', '3');

-- ----------------------------
-- Table structure for blog_tag
-- ----------------------------
DROP TABLE IF EXISTS `blog_tag`;
CREATE TABLE `blog_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_tag
-- ----------------------------
INSERT INTO `blog_tag` VALUES ('1', 'tag test');
INSERT INTO `blog_tag` VALUES ('2', '测试');
INSERT INTO `blog_tag` VALUES ('3', '前言');

-- ----------------------------
-- Table structure for comments_comment
-- ----------------------------
DROP TABLE IF EXISTS `comments_comment`;
CREATE TABLE `comments_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `url` varchar(200) NOT NULL,
  `text` longtext NOT NULL,
  `created_time` datetime(6) NOT NULL,
  `post_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `comments_comment_post_id_96a9ac05_fk_blog_post_id` (`post_id`),
  CONSTRAINT `comments_comment_post_id_96a9ac05_fk_blog_post_id` FOREIGN KEY (`post_id`) REFERENCES `blog_post` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comments_comment
-- ----------------------------
INSERT INTO `comments_comment` VALUES ('1', '测试者1', '123@123.com', 'http://127.0.0.1:8000/post/3/', '这一次的功能实现的不错', '2018-06-20 17:30:34.034286', '3');
INSERT INTO `comments_comment` VALUES ('2', '123', '123@123.com', '', '再来试试', '2018-06-20 17:31:49.976711', '3');
INSERT INTO `comments_comment` VALUES ('3', 'lyy', 'lyy666@163.com', '', '你这个网站做的不错，比我做的好', '2018-06-21 21:57:45.864121', '3');
INSERT INTO `comments_comment` VALUES ('4', 'zxt', 'zxt@163.com', '', '你居然做的这么好，我真是自叹弗如。', '2018-06-21 22:25:33.884175', '3');
INSERT INTO `comments_comment` VALUES ('5', '游客001', 'yk001@163.com', '', '希望你不忘初心，砥砺前行。', '2018-06-24 11:01:50.684276', '4');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES ('1', '2018-06-14 02:36:49.204615', '2', 'Category object (2)', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('2', '2018-06-14 02:37:05.688448', '2', 'Tag object (2)', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('3', '2018-06-14 02:37:11.450791', '2', 'Post object (2)', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('4', '2018-06-14 02:38:01.637272', '2', 'Post object (2)', '2', '[{\"changed\": {\"fields\": [\"excerpt\"]}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('5', '2018-06-14 03:20:23.162691', '3', '另一个测试样例', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('6', '2018-06-24 09:50:16.996583', '2', 'teacher', '1', '[{\"added\": {}}]', '4', '1');
INSERT INTO `django_admin_log` VALUES ('7', '2018-06-24 09:51:17.197206', '2', 'teacher', '2', '[{\"changed\": {\"fields\": [\"user_permissions\", \"last_login\"]}}]', '4', '1');
INSERT INTO `django_admin_log` VALUES ('8', '2018-06-24 10:50:13.843739', '3', '自言自语', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('9', '2018-06-24 10:50:20.747256', '4', '江湖一梦', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('10', '2018-06-24 10:50:28.268732', '3', '前言', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('11', '2018-06-24 10:50:43.940275', '4', '前言', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('12', '2018-06-24 10:52:33.318512', '4', '前言', '2', '[]', '8', '1');

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('4', 'auth', 'user');
INSERT INTO `django_content_type` VALUES ('7', 'blog', 'category');
INSERT INTO `django_content_type` VALUES ('8', 'blog', 'post');
INSERT INTO `django_content_type` VALUES ('9', 'blog', 'tag');
INSERT INTO `django_content_type` VALUES ('10', 'comments', 'comment');
INSERT INTO `django_content_type` VALUES ('5', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('6', 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2018-06-14 01:44:48.101328');
INSERT INTO `django_migrations` VALUES ('2', 'auth', '0001_initial', '2018-06-14 01:44:49.350890');
INSERT INTO `django_migrations` VALUES ('3', 'admin', '0001_initial', '2018-06-14 01:44:49.635454');
INSERT INTO `django_migrations` VALUES ('4', 'admin', '0002_logentry_remove_auto_add', '2018-06-14 01:44:49.648485');
INSERT INTO `django_migrations` VALUES ('5', 'contenttypes', '0002_remove_content_type_name', '2018-06-14 01:44:49.806860');
INSERT INTO `django_migrations` VALUES ('6', 'auth', '0002_alter_permission_name_max_length', '2018-06-14 01:44:49.913210');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0003_alter_user_email_max_length', '2018-06-14 01:44:50.081101');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0004_alter_user_username_opts', '2018-06-14 01:44:50.096142');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0005_alter_user_last_login_null', '2018-06-14 01:44:50.188076');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0006_require_contenttypes_0002', '2018-06-14 01:44:50.195502');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0007_alter_validators_add_error_messages', '2018-06-14 01:44:50.206560');
INSERT INTO `django_migrations` VALUES ('12', 'auth', '0008_alter_user_username_max_length', '2018-06-14 01:44:50.314207');
INSERT INTO `django_migrations` VALUES ('13', 'auth', '0009_alter_user_last_name_max_length', '2018-06-14 01:44:50.456463');
INSERT INTO `django_migrations` VALUES ('14', 'blog', '0001_initial', '2018-06-14 01:44:51.139115');
INSERT INTO `django_migrations` VALUES ('15', 'sessions', '0001_initial', '2018-06-14 01:44:51.226969');
INSERT INTO `django_migrations` VALUES ('16', 'comments', '0001_initial', '2018-06-20 16:47:30.829094');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('me8c9yvovyljqw0u9x4o9z6uty67uxlt', 'ODQ3YTEwY2M1YzY2OWEwOWFjN2YxNTMyZjdkYzZjMmRhNzVmNmQ2ZTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwZmY1OWNhNTRkMjEyOWNmNTM4OTQxYmFhNWNkM2RiMjg0ZTRhMDFmIn0=', '2018-07-08 10:42:06.948078');
INSERT INTO `django_session` VALUES ('pl4h0xxticcp9vh2u8nmy3s22gg8xypz', 'ODQ3YTEwY2M1YzY2OWEwOWFjN2YxNTMyZjdkYzZjMmRhNzVmNmQ2ZTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwZmY1OWNhNTRkMjEyOWNmNTM4OTQxYmFhNWNkM2RiMjg0ZTRhMDFmIn0=', '2018-06-28 02:38:55.378114');
