/*
 Navicat MySQL Data Transfer

 Source Server         : authors_db
 Source Server Type    : MySQL
 Source Server Version : 80032
 Source Host           : 127.0.0.1:3306
 Source Schema         : myweb

 Target Server Type    : MySQL
 Target Server Version : 80032
 File Encoding         : 65001

 Date: 27/10/2023 14:09:56
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for answer_detail_info
-- ----------------------------
DROP TABLE IF EXISTS `answer_detail_info`;
CREATE TABLE `answer_detail_info`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer_message_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `option_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of answer_detail_info
-- ----------------------------
INSERT INTO `answer_detail_info` VALUES ('016e782f9ba747b4bdbd6ec48328f3cd', 'a54bb06deeac4925b79bceabab6d8ef5', '339b4e6989354932b59aebe5312663fd', NULL);
INSERT INTO `answer_detail_info` VALUES ('01d0b372ceb54aaf90c216b1a3381e8c', 'b6ae98169b054e528d17132d72854347', '8dccc9b692d24e14a14e9dfdd4f7cf8f', NULL);
INSERT INTO `answer_detail_info` VALUES ('06a4460bf72649c391bc32fa59949c37', '69e2200fa0bc4a02a542376d14f618b8', 'f07eff9b4993458ebc7817df0c620377', NULL);
INSERT INTO `answer_detail_info` VALUES ('0793978962244f7eb8184613509bd8b5', 'ee6062da8f8948f3a50b1d5af5d555f6', '1b4fd213d954413bb6011aaf0b9a7b7a', NULL);
INSERT INTO `answer_detail_info` VALUES ('0940084bb99b448689a4b2dc4e1b5b26', '1d1fa858132b4700a84d4040cb83dd38', 'feb42335375a4d4d88c5332c69bb4942', NULL);
INSERT INTO `answer_detail_info` VALUES ('0a2c32cd218145eba4776131b839a0bd', 'b04b9d1b87004bada1d038dd5f95f941', 'b1068cc744ac45bb975d1134bd9b568e', NULL);
INSERT INTO `answer_detail_info` VALUES ('0af970eb900d4d1cbb29f0e43bfa56da', 'bc8fb3d6096b43ed99c17e6060b7180c', 'a6a92099f54e4a6a86690108384bed24', NULL);
INSERT INTO `answer_detail_info` VALUES ('0b0da522a07b4134816e67f9ab75d3d9', 'c8627dba1308481dbd7616aa5de9f338', 'b9cc581ac65b4580a24f95d31e54069e', NULL);
INSERT INTO `answer_detail_info` VALUES ('0e592450ffac4359ba0a52f3767f96e1', 'b6ae98169b054e528d17132d72854347', '464d4f3422794c81841a46b0b2a38994', NULL);
INSERT INTO `answer_detail_info` VALUES ('0fee4b0666ac470a8056fa6aa75611bc', 'fe366ab1472046ecb86c1b4bed2028be', '464d4f3422794c81841a46b0b2a38994', NULL);
INSERT INTO `answer_detail_info` VALUES ('123a924b183f47bb9494a8fadd5250b8', '65d3990388e543fc9d55cb83cde26dda', '428b61c2ada9459bae3503af02a3d32a', NULL);
INSERT INTO `answer_detail_info` VALUES ('1258434f8bee445494f236d87bfd602d', 'fe366ab1472046ecb86c1b4bed2028be', 'a6a92099f54e4a6a86690108384bed24', NULL);
INSERT INTO `answer_detail_info` VALUES ('1279bae3f6564719810debf97ab2b20a', '65d3990388e543fc9d55cb83cde26dda', '8b05ce64c06648aab7e58da64ddc6f74', NULL);
INSERT INTO `answer_detail_info` VALUES ('17a12e9f768545bda851c9d6e5966568', '80116809389d43898d4013b30f2d5de6', 'ad0438d0c18b40a28ec2ed3bd370647a', NULL);
INSERT INTO `answer_detail_info` VALUES ('18e23600629645c6ae22b57f05b36933', 'b679a489da1a4fc4b577c122cf54b096', 'ced26d03791d4125a5ab363185a6ae1a', NULL);
INSERT INTO `answer_detail_info` VALUES ('23555f45aec9402c9fc58a00c65b1065', '346fb0eaa1e34e0bba66a7193a4d264e', '186f3cf508c74d8ebaf903b0d7739b8d', NULL);
INSERT INTO `answer_detail_info` VALUES ('250639184e674a028ed3df16679ffcb2', 'a54bb06deeac4925b79bceabab6d8ef5', 'a168b56cd4744d2db6a97a3638f6b4af', NULL);
INSERT INTO `answer_detail_info` VALUES ('2735fd177f79459cba0fd19734464e31', 'ee6062da8f8948f3a50b1d5af5d555f6', '01c9d3a5118b486fa40a420be60294be', '1');
INSERT INTO `answer_detail_info` VALUES ('281dee099bc741e0a8bd700c003db1cb', '26850077d1b54d92b81f6c96e659a8ca', '4f278ff73ad54cbaaf80c9c0f243246e', NULL);
INSERT INTO `answer_detail_info` VALUES ('29cacf3604df4ac0b67c04629babec69', 'b6ae98169b054e528d17132d72854347', '1b4fd213d954413bb6011aaf0b9a7b7a', NULL);
INSERT INTO `answer_detail_info` VALUES ('2b93f03ae888477cbd9c00305382d64b', '1208b9765cc0461c8e20a58c69a702f6', '4f278ff73ad54cbaaf80c9c0f243246e', NULL);
INSERT INTO `answer_detail_info` VALUES ('2d165b7e5d9c44e2a953866136381858', '05810dc4d69546dbb9cec67e9e557c27', '6810b33f85024b9b83ee6d138ab3d105', NULL);
INSERT INTO `answer_detail_info` VALUES ('2e01584299744d318312763b24c50c80', 'ee6062da8f8948f3a50b1d5af5d555f6', 'a9690aa00d3a4d08bd854c4bba548cc1', NULL);
INSERT INTO `answer_detail_info` VALUES ('30c1b4e6e7a144ff8b4a39fd49707d77', 'ee6062da8f8948f3a50b1d5af5d555f6', '845e8547238a4f39832ce25d9121fa3e', NULL);
INSERT INTO `answer_detail_info` VALUES ('33fb67832502492aafedcc17867a0c9d', '3313e77763f24271aed219cc23a08756', '428b61c2ada9459bae3503af02a3d32a', NULL);
INSERT INTO `answer_detail_info` VALUES ('35c8e134f4aa404aaca952023dbcade6', 'a54bb06deeac4925b79bceabab6d8ef5', 'd5fefa8de5ab4834addc931e26ec4fa4', NULL);
INSERT INTO `answer_detail_info` VALUES ('3a58f94787cf4c74b0526fd81c473e8e', '3313e77763f24271aed219cc23a08756', '02cd48336b1544e28f8dff634e965c85', NULL);
INSERT INTO `answer_detail_info` VALUES ('3b0fe5f7cdfb4cef8b86b6389d551513', 'ff3aec6650f04d50b23acfab9468ea8e', '880f0f81977e41b796a5497b98ef900a', NULL);
INSERT INTO `answer_detail_info` VALUES ('3b70e50af1884cb98aea9a8b4f8d51d6', 'fe799bfaf5eb4f78ac5529b6dfb10c6d', '186f3cf508c74d8ebaf903b0d7739b8d', NULL);
INSERT INTO `answer_detail_info` VALUES ('3f1de3072a3b4157830551b1720c07a6', 'ee6062da8f8948f3a50b1d5af5d555f6', '464d4f3422794c81841a46b0b2a38994', NULL);
INSERT INTO `answer_detail_info` VALUES ('481755093f15469d8662030404254844', 'bc8fb3d6096b43ed99c17e6060b7180c', '01c9d3a5118b486fa40a420be60294be', '');
INSERT INTO `answer_detail_info` VALUES ('49f8a397b1464519b771c952ab6d1f26', '26850077d1b54d92b81f6c96e659a8ca', 'f07eff9b4993458ebc7817df0c620377', NULL);
INSERT INTO `answer_detail_info` VALUES ('4ad106207d0b41168eb2a057ac0d0807', 'bc8fb3d6096b43ed99c17e6060b7180c', '1b4fd213d954413bb6011aaf0b9a7b7a', NULL);
INSERT INTO `answer_detail_info` VALUES ('4b6aa1ca7e8c423aacb00498155919c2', '5b657ffc838e4961bd8091d027a3d561', 'a655bfb39bef436e914845987a7fbfd1', NULL);
INSERT INTO `answer_detail_info` VALUES ('4d635741d3d841fe965de8c2c46c7729', 'fe366ab1472046ecb86c1b4bed2028be', 'b1068cc744ac45bb975d1134bd9b568e', NULL);
INSERT INTO `answer_detail_info` VALUES ('53a9a994595647d58b1747fe12c8c099', 'c0978405240b4bd7a45f52bf9717879f', '845e8547238a4f39832ce25d9121fa3e', NULL);
INSERT INTO `answer_detail_info` VALUES ('5582921181b042c194cb43051b0ce1e1', '46ecbad656a5421abbde608a8bd9c729', 'bdc14418e3ce472c9060f2a49409a1a1', NULL);
INSERT INTO `answer_detail_info` VALUES ('563672b708fc454abc16cae82545cdb4', 'fe366ab1472046ecb86c1b4bed2028be', '9883b434226d40b5bddaf65d26195cbe', NULL);
INSERT INTO `answer_detail_info` VALUES ('56bdd066b3614f8f921ea790041fcd04', 'ff3aec6650f04d50b23acfab9468ea8e', 'cad32c2c1cad4bfe85fbdb4c332f0c2d', NULL);
INSERT INTO `answer_detail_info` VALUES ('5723c630f5664463bb842a391ca1970b', '5323ca20222a45cd84b5398964b6c46d', '38096cb794ad4ec8a16622363a645974', NULL);
INSERT INTO `answer_detail_info` VALUES ('5a0cf36ab18d43dd8089d03626c10a3a', 'b6ae98169b054e528d17132d72854347', 'a6a92099f54e4a6a86690108384bed24', NULL);
INSERT INTO `answer_detail_info` VALUES ('5a827dc43f154b0c82f97d8a0beda536', '69e2200fa0bc4a02a542376d14f618b8', 'cfa8b35e809349a69d333b2d1b930096', NULL);
INSERT INTO `answer_detail_info` VALUES ('5b4b3b6780964deea73ee02f78fd0e5f', '26850077d1b54d92b81f6c96e659a8ca', '8b05ce64c06648aab7e58da64ddc6f74', NULL);
INSERT INTO `answer_detail_info` VALUES ('5cf330608472411db1cf38dd778d3be5', '05810dc4d69546dbb9cec67e9e557c27', 'f07eff9b4993458ebc7817df0c620377', NULL);
INSERT INTO `answer_detail_info` VALUES ('5e93e04935c44cb6a17654e3b7f8d2de', 'fe366ab1472046ecb86c1b4bed2028be', '01c9d3a5118b486fa40a420be60294be', '蔡徐坤');
INSERT INTO `answer_detail_info` VALUES ('5f8570d1084b444fa3ff15562d8eaae7', 'bc8fb3d6096b43ed99c17e6060b7180c', '9883b434226d40b5bddaf65d26195cbe', NULL);
INSERT INTO `answer_detail_info` VALUES ('60ce84a0350c480489a918d9d799019b', 'b679a489da1a4fc4b577c122cf54b096', 'bf19a96c843e4baa9e94b96d02c61d88', NULL);
INSERT INTO `answer_detail_info` VALUES ('665721f1d8f84a88bfd399d2c24debe5', 'b6ae98169b054e528d17132d72854347', '845e8547238a4f39832ce25d9121fa3e', NULL);
INSERT INTO `answer_detail_info` VALUES ('67a13755b7f2440cb4961e29f59c179a', 'b075a47c2ce84b2cb035c98fc977cc1c', '6a4e14e235734057abdd3261755fdae3', NULL);
INSERT INTO `answer_detail_info` VALUES ('6808362c16af40b5a61c45415631f177', 'fe799bfaf5eb4f78ac5529b6dfb10c6d', '759bcf19af544f6d8ca284ab4504b232', NULL);
INSERT INTO `answer_detail_info` VALUES ('68e72d4fcfe74ef3b43ee5034665c14b', 'fe366ab1472046ecb86c1b4bed2028be', 'a9690aa00d3a4d08bd854c4bba548cc1', NULL);
INSERT INTO `answer_detail_info` VALUES ('6eae18da2dfb4ddeb0ea5183a9001618', '346fb0eaa1e34e0bba66a7193a4d264e', '759bcf19af544f6d8ca284ab4504b232', NULL);
INSERT INTO `answer_detail_info` VALUES ('6f614a4583a64cc2b686edc31a0c8a94', '69e2200fa0bc4a02a542376d14f618b8', '8b05ce64c06648aab7e58da64ddc6f74', NULL);
INSERT INTO `answer_detail_info` VALUES ('752d409399b04258abb447b981e77ee8', 'fe366ab1472046ecb86c1b4bed2028be', '8da03fccb82840f9beb7288a489a36bb', NULL);
INSERT INTO `answer_detail_info` VALUES ('7672a0b241434c4eb7b645005213d3d0', '346fb0eaa1e34e0bba66a7193a4d264e', '5d2c6917433646119af65978aa6d8364', NULL);
INSERT INTO `answer_detail_info` VALUES ('772874aa865f4be1b6fb778ff9618f0c', '26850077d1b54d92b81f6c96e659a8ca', '08a53e47836f46589af9fcc8b6847a42', NULL);
INSERT INTO `answer_detail_info` VALUES ('777b9403cdbc4807a449e730a582352d', 'b679a489da1a4fc4b577c122cf54b096', 'eccc3f5c67d54e8d89b13cb4848afe9d', NULL);
INSERT INTO `answer_detail_info` VALUES ('78afe4e497b64f05ac4ac9ef5380e0a2', 'b6ae98169b054e528d17132d72854347', '01c9d3a5118b486fa40a420be60294be', '11');
INSERT INTO `answer_detail_info` VALUES ('7f672571af184b358ec9fbdcb335691b', 'c0978405240b4bd7a45f52bf9717879f', '1b4fd213d954413bb6011aaf0b9a7b7a', NULL);
INSERT INTO `answer_detail_info` VALUES ('7faac556142b42f99ea146489e413428', 'ff3aec6650f04d50b23acfab9468ea8e', '5a645b4456224354bd223bf290abbc1d', '123123123123');
INSERT INTO `answer_detail_info` VALUES ('8020ad8c6a624a6daeea4a465b6b14e2', '46ecbad656a5421abbde608a8bd9c729', 'f07eff9b4993458ebc7817df0c620377', NULL);
INSERT INTO `answer_detail_info` VALUES ('802bb26e6a6e4d79a8123de03b323c15', 'bc8fb3d6096b43ed99c17e6060b7180c', 'b1068cc744ac45bb975d1134bd9b568e', NULL);
INSERT INTO `answer_detail_info` VALUES ('80660d51803f46649ba3a978e8730f19', 'bce88f295236419f984592027615cf1b', 'feb42335375a4d4d88c5332c69bb4942', NULL);
INSERT INTO `answer_detail_info` VALUES ('818ed24d493d45a69222c65854a2e286', '69e2200fa0bc4a02a542376d14f618b8', '6810b33f85024b9b83ee6d138ab3d105', NULL);
INSERT INTO `answer_detail_info` VALUES ('88357db072f2459aad632e17a35b4054', '1208b9765cc0461c8e20a58c69a702f6', '6810b33f85024b9b83ee6d138ab3d105', NULL);
INSERT INTO `answer_detail_info` VALUES ('88c7d364bdca4c1481417394b7c8c0ec', '221c6c031f7b460683fea51310b87391', '6490754ff6744af3ab06d9762fb774f9', NULL);
INSERT INTO `answer_detail_info` VALUES ('8b4a9f538062418ca4d683386a293c76', '26850077d1b54d92b81f6c96e659a8ca', '6810b33f85024b9b83ee6d138ab3d105', NULL);
INSERT INTO `answer_detail_info` VALUES ('8c9fbeb9980a4ef0be611b3f96e4b069', '221c6c031f7b460683fea51310b87391', 'fd068fcbf40c49edbb9196d39a76eea8', NULL);
INSERT INTO `answer_detail_info` VALUES ('8d211ac74fee4f359596c2e14532d451', 'c8627dba1308481dbd7616aa5de9f338', 'c7be67008ff645c4a9992745ab60ac41', NULL);
INSERT INTO `answer_detail_info` VALUES ('942584f4bb8440d992ca167ac7c3236b', '05810dc4d69546dbb9cec67e9e557c27', '2a7e91d219824ed7b38621abd2ac8896', NULL);
INSERT INTO `answer_detail_info` VALUES ('945b3a1568644fd3a7c9dc9cecfcd30a', 'b679a489da1a4fc4b577c122cf54b096', '137ba96db70d4ef18ed7c8571679c20f', NULL);
INSERT INTO `answer_detail_info` VALUES ('952e40a032a54137a49ce0ae2a9fc678', '41da1d6011754f12a54f197cfc980025', '1c96e38a610548e094a3418e8b9f6576', NULL);
INSERT INTO `answer_detail_info` VALUES ('9817376e8d6c4305ac73a0c3682ea26b', '65d3990388e543fc9d55cb83cde26dda', 'd003e2f1409a4cad8e802a4e3c47636f', NULL);
INSERT INTO `answer_detail_info` VALUES ('98c3e7c3abc146e391071c15cf4280eb', '3313e77763f24271aed219cc23a08756', '08a53e47836f46589af9fcc8b6847a42', NULL);
INSERT INTO `answer_detail_info` VALUES ('9bd7658821d24d80bf565dc410954ede', 'a54bb06deeac4925b79bceabab6d8ef5', 'a838ed21d2a6496ca9cd2442851626df', NULL);
INSERT INTO `answer_detail_info` VALUES ('a03a034701f24d07a01b9f67c23f08b6', '2e66f963f3b44af28f05647b3164f761', 'f15498be52914ab79db6951d46fea416', NULL);
INSERT INTO `answer_detail_info` VALUES ('a3eef6e2b7de40a8bb1c5f0ad08d406d', '80116809389d43898d4013b30f2d5de6', '5ab3d600f3134083ae5b7ce2e92b21d4', NULL);
INSERT INTO `answer_detail_info` VALUES ('a5b0d1111d4a4e778f63777c1252ec65', '05810dc4d69546dbb9cec67e9e557c27', 'bdc14418e3ce472c9060f2a49409a1a1', NULL);
INSERT INTO `answer_detail_info` VALUES ('a835bd1e888d407b82682d5923e59055', '80116809389d43898d4013b30f2d5de6', '13fa095f79c443fbb3030f3f5a27fcc9', NULL);
INSERT INTO `answer_detail_info` VALUES ('aad201e3e1194d45a8adfdd121bb902b', 'ce24509ffbb2485d91b3953806736a64', 'f4401a295f51433cb7420670c8680cd1', NULL);
INSERT INTO `answer_detail_info` VALUES ('ac999723746d472290ecdcf2339d2581', 'b075a47c2ce84b2cb035c98fc977cc1c', '7faa7771582647168b94a7af3f1f9fbb', NULL);
INSERT INTO `answer_detail_info` VALUES ('ad641c2ad5dc461d977daf30fead8b27', 'ce24509ffbb2485d91b3953806736a64', '759bcf19af544f6d8ca284ab4504b232', NULL);
INSERT INTO `answer_detail_info` VALUES ('b801ee0957eb4970a507a4a9fc965fb3', 'ee6062da8f8948f3a50b1d5af5d555f6', '8dccc9b692d24e14a14e9dfdd4f7cf8f', NULL);
INSERT INTO `answer_detail_info` VALUES ('b844ae06badf4f50adf3085aca696982', 'c0978405240b4bd7a45f52bf9717879f', 'b1068cc744ac45bb975d1134bd9b568e', NULL);
INSERT INTO `answer_detail_info` VALUES ('b9ace3f2e6f4450dadc7631e0a2a68e9', '80116809389d43898d4013b30f2d5de6', '98510b7d18744d609666f986ac7bfa42', NULL);
INSERT INTO `answer_detail_info` VALUES ('bb109f7f022d46edbd624a367af21345', 'b04b9d1b87004bada1d038dd5f95f941', '01c9d3a5118b486fa40a420be60294be', '');
INSERT INTO `answer_detail_info` VALUES ('bb2c283efdc14f7093156d07a1b24eef', '1208b9765cc0461c8e20a58c69a702f6', '8b05ce64c06648aab7e58da64ddc6f74', NULL);
INSERT INTO `answer_detail_info` VALUES ('bb51c0e29f3244dfa214c617c639f4cc', '65d3990388e543fc9d55cb83cde26dda', '6810b33f85024b9b83ee6d138ab3d105', NULL);
INSERT INTO `answer_detail_info` VALUES ('bd33afd717c84db8b5dc076d92836fb9', 'bc8fb3d6096b43ed99c17e6060b7180c', '4097109778a84a5f87edf765ddce95f9', NULL);
INSERT INTO `answer_detail_info` VALUES ('c15bcf842d904fbb89685fe89d9e488b', 'c0978405240b4bd7a45f52bf9717879f', '464d4f3422794c81841a46b0b2a38994', NULL);
INSERT INTO `answer_detail_info` VALUES ('c2225f5aa6d944829528225f7eb8a782', '221c6c031f7b460683fea51310b87391', 'ced26d03791d4125a5ab363185a6ae1a', NULL);
INSERT INTO `answer_detail_info` VALUES ('c315aec6002d437bb78792a155703eb5', '221c6c031f7b460683fea51310b87391', 'eccc3f5c67d54e8d89b13cb4848afe9d', NULL);
INSERT INTO `answer_detail_info` VALUES ('c42e18fa3bc648e6ab46becaff299d52', 'c8627dba1308481dbd7616aa5de9f338', '7a4ed55020ec4cbab57ea372b84bd631', NULL);
INSERT INTO `answer_detail_info` VALUES ('c44c6787ca7a461595f54f67daed91da', '1d1fa858132b4700a84d4040cb83dd38', '3c58ddc7dc424319bfff2231f3caa24b', NULL);
INSERT INTO `answer_detail_info` VALUES ('c4865c5cde264837bbed7ed45783a5a7', 'ff3aec6650f04d50b23acfab9468ea8e', '8090090ac6394514bfbc6316583f0982', NULL);
INSERT INTO `answer_detail_info` VALUES ('c4e0d5895b454b418f50a3c5affdf719', '5b657ffc838e4961bd8091d027a3d561', 'c4daf4af7f3f48448f706d9b225297a5', NULL);
INSERT INTO `answer_detail_info` VALUES ('c4f868e383354eb2bf409cf4d5a8d96e', 'b679a489da1a4fc4b577c122cf54b096', '4e2d9a0ed0e4479e823c92a97e634934', NULL);
INSERT INTO `answer_detail_info` VALUES ('c5dfe28095604a68936d271e48a75d64', '80116809389d43898d4013b30f2d5de6', 'd9536cc548a946bd820807b5ce8209fc', NULL);
INSERT INTO `answer_detail_info` VALUES ('c64cdbefe9054dfaa0d63a7116b39a3b', '46ecbad656a5421abbde608a8bd9c729', '08a53e47836f46589af9fcc8b6847a42', NULL);
INSERT INTO `answer_detail_info` VALUES ('c92dd5281c4b4dc6ae06cc7b73a03645', 'fe799bfaf5eb4f78ac5529b6dfb10c6d', '3a139ad1fbdc4f299c5a77f926728268', NULL);
INSERT INTO `answer_detail_info` VALUES ('cae3f29f3197434e855270dd60ce981b', '221c6c031f7b460683fea51310b87391', '270fcf92a4a7417dbefdfc9e0bbd270e', NULL);
INSERT INTO `answer_detail_info` VALUES ('ce985ec891164c87a79cfa8a8ea48b58', '5323ca20222a45cd84b5398964b6c46d', 'c4daf4af7f3f48448f706d9b225297a5', NULL);
INSERT INTO `answer_detail_info` VALUES ('cef7f861342a4895b8cb478e0b549a1c', '5b657ffc838e4961bd8091d027a3d561', '3c58ddc7dc424319bfff2231f3caa24b', NULL);
INSERT INTO `answer_detail_info` VALUES ('d45957256d0e4c44a0e7a9df982b62f5', 'fe799bfaf5eb4f78ac5529b6dfb10c6d', 'f4401a295f51433cb7420670c8680cd1', NULL);
INSERT INTO `answer_detail_info` VALUES ('d54f3848270f4230acaa0992acc43933', '5323ca20222a45cd84b5398964b6c46d', 'c1b5afe6328b47eabad109e09dc5950d', NULL);
INSERT INTO `answer_detail_info` VALUES ('d62a8427f6d34d97a53f2c2ca9388aec', '69e2200fa0bc4a02a542376d14f618b8', 'bdc14418e3ce472c9060f2a49409a1a1', NULL);
INSERT INTO `answer_detail_info` VALUES ('d758fce1c4ac4235aa1e83d7b602a56d', 'ce24509ffbb2485d91b3953806736a64', '5d2c6917433646119af65978aa6d8364', NULL);
INSERT INTO `answer_detail_info` VALUES ('d9b92bf8e5b74a3399551cb9a0357422', '1208b9765cc0461c8e20a58c69a702f6', '08a53e47836f46589af9fcc8b6847a42', NULL);
INSERT INTO `answer_detail_info` VALUES ('dd965dc515c746819fee028984692b69', 'b075a47c2ce84b2cb035c98fc977cc1c', '9699604df1a549ad91cfcba1b3d9011b', NULL);
INSERT INTO `answer_detail_info` VALUES ('dde943b7978b42ee97356eead1fbee6e', '3313e77763f24271aed219cc23a08756', '6810b33f85024b9b83ee6d138ab3d105', NULL);
INSERT INTO `answer_detail_info` VALUES ('e12031d40bd849a6988a12618a83db37', '80116809389d43898d4013b30f2d5de6', '525851c796464300bad0919cfb180d87', NULL);
INSERT INTO `answer_detail_info` VALUES ('e2b41230ee30488cb577b8f080091dd7', '46ecbad656a5421abbde608a8bd9c729', '6810b33f85024b9b83ee6d138ab3d105', NULL);
INSERT INTO `answer_detail_info` VALUES ('e5e128b8096646f0a7686d975e7554e5', '221c6c031f7b460683fea51310b87391', '137ba96db70d4ef18ed7c8571679c20f', NULL);
INSERT INTO `answer_detail_info` VALUES ('e8b67cdb3dcf46eea17ef3a668f80e6f', '346fb0eaa1e34e0bba66a7193a4d264e', '8da0de2040cd4445a89ce6f62ac9a083', NULL);
INSERT INTO `answer_detail_info` VALUES ('ed1f62c9b78d44ce887d587f35e842b1', 'ce24509ffbb2485d91b3953806736a64', '0ba827ad5e2248f3b9117340c0b0c704', NULL);
INSERT INTO `answer_detail_info` VALUES ('f1a21e171c3843658eb29346ce3dfcbc', 'ff3aec6650f04d50b23acfab9468ea8e', 'c1f5b449bc19401b9cfc1bf12f571ea5', NULL);
INSERT INTO `answer_detail_info` VALUES ('f3ae7aaeb2264318b03a6b13a3d85764', '1d1fa858132b4700a84d4040cb83dd38', '38096cb794ad4ec8a16622363a645974', NULL);
INSERT INTO `answer_detail_info` VALUES ('f550620c593043099fabde32bc2ac245', '5b657ffc838e4961bd8091d027a3d561', '9f5f9be768d447adb7a62df7fe6fb73a', NULL);
INSERT INTO `answer_detail_info` VALUES ('fc0bdb47c91344e9814cfa9ecece0347', 'c0978405240b4bd7a45f52bf9717879f', 'a9690aa00d3a4d08bd854c4bba548cc1', NULL);
INSERT INTO `answer_detail_info` VALUES ('fd036568a130458b8e7f6e36be6f26eb', '05810dc4d69546dbb9cec67e9e557c27', '02cd48336b1544e28f8dff634e965c85', NULL);
INSERT INTO `answer_detail_info` VALUES ('fdfd46254b1b43048c3ae2d94666f377', '80116809389d43898d4013b30f2d5de6', '19a393ed7ba2437783a6abcadfaebc98', NULL);
INSERT INTO `answer_detail_info` VALUES ('fe85cfd2141749a996bb0e462489131d', 'c0978405240b4bd7a45f52bf9717879f', '01c9d3a5118b486fa40a420be60294be', '11');

-- ----------------------------
-- Table structure for answer_message_info
-- ----------------------------
DROP TABLE IF EXISTS `answer_message_info`;
CREATE TABLE `answer_message_info`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `questionnaire_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `questionnaire_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `answerer_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `answerer_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `answer_time` datetime(0) NULL DEFAULT NULL,
  `project_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of answer_message_info
-- ----------------------------
INSERT INTO `answer_message_info` VALUES ('05810dc4d69546dbb9cec67e9e557c27', 'dda3005700ef4e3f92018f70151d66a5', '1', '1', 'admin', '2023-06-28 08:52:30', '116859b32b644c19afcb9f26008b940b');
INSERT INTO `answer_message_info` VALUES ('1208b9765cc0461c8e20a58c69a702f6', 'dda3005700ef4e3f92018f70151d66a5', '1', '1', 'admin', '2023-06-28 08:52:51', '116859b32b644c19afcb9f26008b940b');
INSERT INTO `answer_message_info` VALUES ('1d1fa858132b4700a84d4040cb83dd38', 'ef8af8f6e573418fb2930fd80b82b4df', '神之问卷', '1', 'admin', '2023-06-28 13:38:31', '116859b32b644c19afcb9f26008b940b');
INSERT INTO `answer_message_info` VALUES ('221c6c031f7b460683fea51310b87391', '1db2f47668204531af61f2e8a18f7c18', '测试', '1', 'admin', '2023-06-27 21:44:38', '116859b32b644c19afcb9f26008b940b');
INSERT INTO `answer_message_info` VALUES ('26850077d1b54d92b81f6c96e659a8ca', 'dda3005700ef4e3f92018f70151d66a5', '1', '1', 'admin', '2023-06-28 08:53:02', '116859b32b644c19afcb9f26008b940b');
INSERT INTO `answer_message_info` VALUES ('2e66f963f3b44af28f05647b3164f761', '07052ef19b1a4a778c3406afc2c11b40', '111', '1', 'admin', '2023-06-28 12:25:03', '116859b32b644c19afcb9f26008b940b');
INSERT INTO `answer_message_info` VALUES ('3313e77763f24271aed219cc23a08756', 'dda3005700ef4e3f92018f70151d66a5', '1', '1', 'admin', '2023-06-28 08:54:09', '116859b32b644c19afcb9f26008b940b');
INSERT INTO `answer_message_info` VALUES ('346fb0eaa1e34e0bba66a7193a4d264e', 'f6a3960a8466411986a0f872bd52902a', '11111', '1', 'admin', '2023-06-28 13:41:05', '116859b32b644c19afcb9f26008b940b');
INSERT INTO `answer_message_info` VALUES ('41da1d6011754f12a54f197cfc980025', 'd9a98b8013724337b13785b2fb9caa22', '神之问卷', '2', 'zhangsan', '2023-10-17 20:42:24', '116859b32b644c19afcb9f26008b940b');
INSERT INTO `answer_message_info` VALUES ('46ecbad656a5421abbde608a8bd9c729', 'dda3005700ef4e3f92018f70151d66a5', '1', '1', 'admin', '2023-06-28 10:00:31', '116859b32b644c19afcb9f26008b940b');
INSERT INTO `answer_message_info` VALUES ('5323ca20222a45cd84b5398964b6c46d', 'ef8af8f6e573418fb2930fd80b82b4df', '神之问卷', '1', 'admin', '2023-06-28 13:38:54', '116859b32b644c19afcb9f26008b940b');
INSERT INTO `answer_message_info` VALUES ('5b657ffc838e4961bd8091d027a3d561', 'ef8af8f6e573418fb2930fd80b82b4df', '神之问卷', '1', 'admin', '2023-06-28 11:10:38', '116859b32b644c19afcb9f26008b940b');
INSERT INTO `answer_message_info` VALUES ('65d3990388e543fc9d55cb83cde26dda', 'dda3005700ef4e3f92018f70151d66a5', '1', '1', 'admin', '2023-06-28 08:45:21', '116859b32b644c19afcb9f26008b940b');
INSERT INTO `answer_message_info` VALUES ('69e2200fa0bc4a02a542376d14f618b8', 'dda3005700ef4e3f92018f70151d66a5', '1', '1', 'admin', '2023-06-28 08:52:21', '116859b32b644c19afcb9f26008b940b');
INSERT INTO `answer_message_info` VALUES ('80116809389d43898d4013b30f2d5de6', '77561bb210eb44b5a85344eb85e56590', '神之问卷', '1', 'admin', '2023-06-27 15:20:32', '116859b32b644c19afcb9f26008b940b');
INSERT INTO `answer_message_info` VALUES ('a54bb06deeac4925b79bceabab6d8ef5', '26b6db3066324f25887c24b27c7348c7', '测试', '1', 'admin', '2023-06-28 10:43:18', '116859b32b644c19afcb9f26008b940b');
INSERT INTO `answer_message_info` VALUES ('b04b9d1b87004bada1d038dd5f95f941', '6d336512bb044cfaa5ebfba3fb775f22', '神之问卷', '1', 'admin', '2023-06-27 21:55:07', '116859b32b644c19afcb9f26008b940b');
INSERT INTO `answer_message_info` VALUES ('b075a47c2ce84b2cb035c98fc977cc1c', '7c9af2f557b74b4cadf2a7b6b09eacd0', '次数', '1', 'admin', '2023-06-27 22:02:57', '116859b32b644c19afcb9f26008b940b');
INSERT INTO `answer_message_info` VALUES ('b679a489da1a4fc4b577c122cf54b096', '1db2f47668204531af61f2e8a18f7c18', '测试', '1', 'admin', '2023-06-27 21:45:10', '116859b32b644c19afcb9f26008b940b');
INSERT INTO `answer_message_info` VALUES ('b6ae98169b054e528d17132d72854347', '6d336512bb044cfaa5ebfba3fb775f22', '神之问卷', '1', 'admin', '2023-06-27 21:52:33', '116859b32b644c19afcb9f26008b940b');
INSERT INTO `answer_message_info` VALUES ('bc8fb3d6096b43ed99c17e6060b7180c', '6d336512bb044cfaa5ebfba3fb775f22', '神之问卷', '1', 'admin', '2023-06-27 21:51:31', '116859b32b644c19afcb9f26008b940b');
INSERT INTO `answer_message_info` VALUES ('bce88f295236419f984592027615cf1b', 'ef8af8f6e573418fb2930fd80b82b4df', '神之问卷', '1', 'admin', '2023-06-28 15:46:29', '116859b32b644c19afcb9f26008b940b');
INSERT INTO `answer_message_info` VALUES ('c0978405240b4bd7a45f52bf9717879f', '6d336512bb044cfaa5ebfba3fb775f22', '神之问卷', '1', 'admin', '2023-06-27 21:58:14', '116859b32b644c19afcb9f26008b940b');
INSERT INTO `answer_message_info` VALUES ('c8627dba1308481dbd7616aa5de9f338', 'cbb83ec173c94b9caf6abeefec82267c', 'qqq', '1', 'aaa', '2023-06-27 16:35:18', '116859b32b644c19afcb9f26008b940b');
INSERT INTO `answer_message_info` VALUES ('ce24509ffbb2485d91b3953806736a64', 'f6a3960a8466411986a0f872bd52902a', '11111', '1', 'admin', '2023-06-27 22:07:15', '116859b32b644c19afcb9f26008b940b');
INSERT INTO `answer_message_info` VALUES ('d79692e2406f49458c1f767a80ad4858', '6d336512bb044cfaa5ebfba3fb775f22', '神之问卷', '1', 'admin', '2023-06-27 21:57:49', '116859b32b644c19afcb9f26008b940b');
INSERT INTO `answer_message_info` VALUES ('ee6062da8f8948f3a50b1d5af5d555f6', '6d336512bb044cfaa5ebfba3fb775f22', '神之问卷', '1', 'admin', '2023-06-27 21:51:07', '116859b32b644c19afcb9f26008b940b');
INSERT INTO `answer_message_info` VALUES ('fe366ab1472046ecb86c1b4bed2028be', '6d336512bb044cfaa5ebfba3fb775f22', '神之问卷', '1', 'admin', '2023-06-27 16:59:21', '116859b32b644c19afcb9f26008b940b');
INSERT INTO `answer_message_info` VALUES ('fe799bfaf5eb4f78ac5529b6dfb10c6d', 'f6a3960a8466411986a0f872bd52902a', '11111', '1', 'admin', '2023-06-28 13:41:25', '116859b32b644c19afcb9f26008b940b');
INSERT INTO `answer_message_info` VALUES ('ff3aec6650f04d50b23acfab9468ea8e', '4a3956a1b1a14e03b12b454343b71c20', 'ttt', '2', 'zhangsan', '2023-06-28 15:49:04', '116859b32b644c19afcb9f26008b940b');

-- ----------------------------
-- Table structure for option_info
-- ----------------------------
DROP TABLE IF EXISTS `option_info`;
CREATE TABLE `option_info`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `choose_term` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `fraction` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `left_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `order_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of option_info
-- ----------------------------
INSERT INTO `option_info` VALUES ('00496e64e6f3430ba4ce3cc745a08e23', '93dcdb045215435a95c4fb6f03bad7f5', '吴昊', NULL, NULL, '1');
INSERT INTO `option_info` VALUES ('01208bd001de46e08f6fe96828d757b7', '75f92266b53845d0bab53edfa94c7865', '徐六', NULL, NULL, '3');
INSERT INTO `option_info` VALUES ('01c9d3a5118b486fa40a420be60294be', '1821778f436d4238ae836fa8c7cbc70d', NULL, NULL, NULL, '0');
INSERT INTO `option_info` VALUES ('01d9861870b8453ebbb21bd9217d316d', '440d2ca6e9ae4dadac3c873e70ad2ccc', '', NULL, NULL, '4');
INSERT INTO `option_info` VALUES ('01f82358abd24e8f970eec7da47ab31a', '963cd6616bc84435849bfc495a9416c1', '王五', NULL, NULL, '2');
INSERT INTO `option_info` VALUES ('020260a3268748b3b6a1d6cfd1043675', '34327258a31d4c2bbb076a2ed3bfabff', '2', NULL, NULL, '4');
INSERT INTO `option_info` VALUES ('02cd48336b1544e28f8dff634e965c85', '6ed0d259c5074c978d4cd61f09216956', '玫瑰', NULL, NULL, '3');
INSERT INTO `option_info` VALUES ('02df598553b5462383fc3066d8d5b5de', '17c2adb6c9454631b0a421ce0c090fea', '1', NULL, NULL, '0');
INSERT INTO `option_info` VALUES ('05385d6df9e04dd7a54b7d3cdbe1e132', 'fd3c580056684faf9bd4e132d6ade57c', '3', NULL, NULL, '0');
INSERT INTO `option_info` VALUES ('056d69547c79466184ce1ae3f72aa697', '493ab46cb3e445d7b9a487277d39d927', '3', NULL, NULL, '1');
INSERT INTO `option_info` VALUES ('0598c1d5df5a4d1c82635bb867df1f29', '717c58044e6d4c778bb73cf4251caf04', '1', NULL, NULL, '1');
INSERT INTO `option_info` VALUES ('0608c417e73b4cf2b3f0e80125c1455a', 'e9e7670672b14f06a8b617092495b46e', '张三', NULL, NULL, '0');
INSERT INTO `option_info` VALUES ('0633bb954aa14314971556ca187a335b', 'dd9a21f678f5465380ce9154d6a62c7e', '1', NULL, '2', '1');
INSERT INTO `option_info` VALUES ('06954c33beb540e58777a2934d5f5631', '12ae2a91502548b3a31a9fdb0973023e', '菊花', NULL, NULL, '2');
INSERT INTO `option_info` VALUES ('07e14dd1d49142f7af70c30540f1d85c', '4e619c867efc485cb5ac10ca1c7eca72', '妙蛙种子', NULL, NULL, '3');
INSERT INTO `option_info` VALUES ('082b868ca36144639d847bf2974634c6', '0129d14e05ec41649304bc57a459fcfb', '2', NULL, NULL, '3');
INSERT INTO `option_info` VALUES ('08a53e47836f46589af9fcc8b6847a42', '9b75a8c65ebc49a78e81e9bc127f39d6', '喷火龙', NULL, NULL, '2');
INSERT INTO `option_info` VALUES ('08fb14fae74f4e8e99f96723400dac8e', '247322240b054665b46d8e779b22e378', '3', NULL, NULL, '1');
INSERT INTO `option_info` VALUES ('09c383f262844ff4b1deedce1c7cda09', 'e6a52a97236e4643b7413b5ca312b373', '张三', NULL, NULL, '0');
INSERT INTO `option_info` VALUES ('0ba827ad5e2248f3b9117340c0b0c704', '4e619c867efc485cb5ac10ca1c7eca72', '喷火龙', NULL, NULL, '2');
INSERT INTO `option_info` VALUES ('0d409141a6254bdd8e5abbd5fe8c18f7', 'b5800e5ab3424e98b7d1e67954d2f029', '桃花', NULL, NULL, '1');
INSERT INTO `option_info` VALUES ('0e387f8e76614bc0a25c0b8b422aaeb2', 'd3fe0c31ab114261975a27ff64975279', '喷火龙', NULL, NULL, '2');
INSERT INTO `option_info` VALUES ('10b2d1c900f64fa6ba6205670ae8d258', 'b5c4fecdcac241458251246106093b4d', '喷火龙', NULL, NULL, '2');
INSERT INTO `option_info` VALUES ('116fe594d107479199d5c2f983379849', 'e6a52a97236e4643b7413b5ca312b373', '李四', NULL, NULL, '1');
INSERT INTO `option_info` VALUES ('127da0f6357b4d598f94fbabf094f092', '493ab46cb3e445d7b9a487277d39d927', '6', NULL, NULL, '3');
INSERT INTO `option_info` VALUES ('12ae37985a064b3e9333a716fd1aa9da', '0129d14e05ec41649304bc57a459fcfb', '妙蛙种子', NULL, NULL, '1');
INSERT INTO `option_info` VALUES ('137ba96db70d4ef18ed7c8571679c20f', '4a3b3cc63c8f4927b557316a9aaebfd9', '菊花', NULL, NULL, '2');
INSERT INTO `option_info` VALUES ('13fa095f79c443fbb3030f3f5a27fcc9', 'ea8ed91dd23943df849be40012635efe', '3', NULL, NULL, '1');
INSERT INTO `option_info` VALUES ('1510f789e9124226bf506d522bd21014', 'bbc04a9c625041448df5e0463cb9afa6', '周义勇', NULL, NULL, '0');
INSERT INTO `option_info` VALUES ('15adc176a2804381b8557ce3c9adc0a4', 'ed87484b6fbc476e9a236b7b5aafafe1', '', NULL, NULL, '4');
INSERT INTO `option_info` VALUES ('160ceb4d12184c888bbf9e9909b75043', 'e179c3dd4065427eb7be263a4f5abcc4', '菊花', NULL, NULL, '2');
INSERT INTO `option_info` VALUES ('168ec2e2d7e44cbd8400c3c3ac197eda', '640c401e35aa428dae0fe218ecfe1371', '妙蛙种子', NULL, NULL, '1');
INSERT INTO `option_info` VALUES ('169da2f36b3142ca90d7c69142cfa96c', '9ebe10a726154b0c87df5def380b44e4', '123', '3', NULL, '0');
INSERT INTO `option_info` VALUES ('16cfa58b34fb4b4980c888cebc57bf5c', '17c2adb6c9454631b0a421ce0c090fea', '', NULL, NULL, '4');
INSERT INTO `option_info` VALUES ('17ee99f49f0b43f39a623993325edacc', '08f1ccea12f243879e30f6a944dddb7b', '樱花', NULL, NULL, '0');
INSERT INTO `option_info` VALUES ('1867bf6f97d34abd8522ce736720fc28', 'ccf28df1aa6d4888840dcaf57fcc97d6', '喷火龙', NULL, NULL, '2');
INSERT INTO `option_info` VALUES ('186f3cf508c74d8ebaf903b0d7739b8d', '4e619c867efc485cb5ac10ca1c7eca72', '吴昊', NULL, NULL, '1');
INSERT INTO `option_info` VALUES ('194dd7b0d4da4ff6bedc84776d715369', '8b8f2912ba6a44369bd2654102858c0a', '2', NULL, NULL, '1');
INSERT INTO `option_info` VALUES ('1950969cf1384b3e88fb76be2b51a713', '34327258a31d4c2bbb076a2ed3bfabff', '6', NULL, NULL, '3');
INSERT INTO `option_info` VALUES ('19a393ed7ba2437783a6abcadfaebc98', 'ea8ed91dd23943df849be40012635efe', '6', NULL, NULL, '3');
INSERT INTO `option_info` VALUES ('19b86dd37ae54d00b24264af8f6fb5f5', '717c58044e6d4c778bb73cf4251caf04', '1', NULL, NULL, '0');
INSERT INTO `option_info` VALUES ('1a12ac026a3f4f10aeb74d477c4b7b08', '7707041a816647d1b0a3cbb7195ae0c4', '2', NULL, '2', '2');
INSERT INTO `option_info` VALUES ('1a8dabdaace94729a5d62605be28e811', 'aabd8b77fefe456c8ea2df10f82dce39', '1', NULL, NULL, '0');
INSERT INTO `option_info` VALUES ('1b4fd213d954413bb6011aaf0b9a7b7a', '6c3d2cd1b1854c4688f0a78273ab8eab', '2', '5', NULL, '1');
INSERT INTO `option_info` VALUES ('1c0703dbe01345a0a549cb44f0ad617c', '5066e452fa314b3b87215c3233dd0604', '萱姐', NULL, NULL, '2');
INSERT INTO `option_info` VALUES ('1c18b8768b18489eb383df40a669adbc', 'ed87484b6fbc476e9a236b7b5aafafe1', '周义勇', NULL, NULL, '0');
INSERT INTO `option_info` VALUES ('1c96e38a610548e094a3418e8b9f6576', '40f206f6fcdc46048a3777f638c3370d', '吴昊', NULL, NULL, '0');
INSERT INTO `option_info` VALUES ('1d97ee38577546ed930c9ab139030d4d', '398118ea8114414b83c8b6613008b279', '', NULL, NULL, '4');
INSERT INTO `option_info` VALUES ('1d9e8ff2f5fd4bf28f14b7609e64fe3c', '93dcdb045215435a95c4fb6f03bad7f5', '周义勇', NULL, NULL, '0');
INSERT INTO `option_info` VALUES ('22526b7c4c074931bf50c8f7f8af548c', 'abef11975fd74c8a86406ba7cc258dd1', '2', NULL, NULL, '2');
INSERT INTO `option_info` VALUES ('225f89fbf8434f169b61246004049adf', 'bbc04a9c625041448df5e0463cb9afa6', '妙蛙种子', NULL, NULL, '3');
INSERT INTO `option_info` VALUES ('234d1302437e439da0cb07fed6c8fa0f', '1b2fcb3708274f1d82362129f215169e', NULL, NULL, '123', '0');
INSERT INTO `option_info` VALUES ('236f57b7cddd4752b65d727876a4f855', 'c8a1abfbacf64b45853916454be27c5a', '徐六', NULL, NULL, '3');
INSERT INTO `option_info` VALUES ('23a1b96b2868499c9ad84adf479268b6', '49f3db3f2f704fafa01f09ca19c38686', '吴昊', NULL, NULL, '1');
INSERT INTO `option_info` VALUES ('24aea430630040cc8fcdadbdfcbcf441', 'b8ad3fe5b0cf4982997fe60678ee8ac7', '喷火龙', NULL, NULL, '2');
INSERT INTO `option_info` VALUES ('24f55b910d1b43d8a1dafbb07fa36904', '7707041a816647d1b0a3cbb7195ae0c4', '2', NULL, '3', '3');
INSERT INTO `option_info` VALUES ('255165e4fbe34f48b7f588c9f7b443f3', '919f6c51d1f24fa0aa9692ab9e06271b', '王五', NULL, NULL, '2');
INSERT INTO `option_info` VALUES ('25939f109e494c74b21f95a0f00a285f', '2d2be8e252ab4bd3bd80afe2a7c5597d', '', NULL, NULL, '3');
INSERT INTO `option_info` VALUES ('266f12cf3d5048fd89a90091e066eeff', '440d2ca6e9ae4dadac3c873e70ad2ccc', '2', NULL, NULL, '2');
INSERT INTO `option_info` VALUES ('270fcf92a4a7417dbefdfc9e0bbd270e', '0194c6440e5b40b09dc9d98d23d76908', '吴昊', NULL, NULL, '1');
INSERT INTO `option_info` VALUES ('27362b9a02bb446b8969c3142deb9670', 'f3f4acb4e2cc4b6f908d2cbea791a490', '2', NULL, NULL, '1');
INSERT INTO `option_info` VALUES ('27e1beec2efd49feaddb08f97fe25af7', '7050c460326741acb9c92ebc8c4860ed', '王五', NULL, NULL, '2');
INSERT INTO `option_info` VALUES ('28c3a29c04854b61a266492d37464e5e', '9bd5771feb6743c69fed692f559898cf', '妙蛙种子', NULL, NULL, '1');
INSERT INTO `option_info` VALUES ('2973746853624e0ba370bb756b4fb8a0', '919f6c51d1f24fa0aa9692ab9e06271b', '张三', NULL, NULL, '0');
INSERT INTO `option_info` VALUES ('2a7e91d219824ed7b38621abd2ac8896', '9b75a8c65ebc49a78e81e9bc127f39d6', '妙蛙种子', NULL, NULL, '3');
INSERT INTO `option_info` VALUES ('2b34a71a94aa4d84b5dd58eab74a011f', '018cdebc67d141efb30d80ebd3a98097', '玫瑰', NULL, NULL, '3');
INSERT INTO `option_info` VALUES ('2c46243c3907454db399c17462705eab', 'bbc04a9c625041448df5e0463cb9afa6', '吴昊', NULL, NULL, '1');
INSERT INTO `option_info` VALUES ('2cc893d14fb845938627b75a596bb97c', '3c592fde0ce8476997f0e413c1bfb42c', NULL, NULL, NULL, '0');
INSERT INTO `option_info` VALUES ('2d0e76e9e2d547b08f09ebd188bd3b72', '1709c4889f704e4ea6422b5e08855446', '4', NULL, NULL, '2');
INSERT INTO `option_info` VALUES ('2d43c53c10944be2a9f354207db97afe', 'fd3c580056684faf9bd4e132d6ade57c', '4', NULL, NULL, '2');
INSERT INTO `option_info` VALUES ('2e33aef4614d42ee9b3815012b88320a', 'ccf28df1aa6d4888840dcaf57fcc97d6', '2', NULL, NULL, '3');
INSERT INTO `option_info` VALUES ('2e4fb972206e450894411d201dfdf467', '91d0699eab4d413c964fa3a1a1ba7a3d', '2', NULL, NULL, '2');
INSERT INTO `option_info` VALUES ('2e97eebb333d41c4a28e285b5fd940df', '119a1972afe34855b8af76039043a3b5', '6', NULL, NULL, '3');
INSERT INTO `option_info` VALUES ('339b4e6989354932b59aebe5312663fd', '70d06562bb464a1c8f69778a8d18b301', '喷火龙', NULL, NULL, '2');
INSERT INTO `option_info` VALUES ('33b0ae090f954a81a7a786bd59b097fd', 'e6a52a97236e4643b7413b5ca312b373', '徐六', NULL, NULL, '3');
INSERT INTO `option_info` VALUES ('346c7b75521e42a9a1354e41f4367217', '7193ca79d4dd4368beaad147ddfb4ec7', '6', NULL, NULL, '3');
INSERT INTO `option_info` VALUES ('34bd81afca45405a98bc2e1fbec67a01', '974d532cb90b4f86809348727e19815e', '', NULL, NULL, '3');
INSERT INTO `option_info` VALUES ('351121ab16914aa29301b42a07e1b8f8', 'a5ada775635a44ffb877acd5801282d9', '张三', NULL, NULL, '0');
INSERT INTO `option_info` VALUES ('360409f21c0e4a3fb8e6ba0048f31f27', 'b8ad3fe5b0cf4982997fe60678ee8ac7', '周义勇', NULL, NULL, '0');
INSERT INTO `option_info` VALUES ('3750110fb9a1417ebc5b5977c56e6724', '71b88a44fcde4ed8a8590d1ac75cdcfa', '喷火龙', NULL, NULL, '2');
INSERT INTO `option_info` VALUES ('3800af4b7ac444979ee7915350a94549', 'abef11975fd74c8a86406ba7cc258dd1', '1', NULL, NULL, '1');
INSERT INTO `option_info` VALUES ('38096cb794ad4ec8a16622363a645974', 'e9e7670672b14f06a8b617092495b46e', '李四', NULL, NULL, '1');
INSERT INTO `option_info` VALUES ('38a35da05e98496dbf6191e1b4d7bbac', 'a5ada775635a44ffb877acd5801282d9', '李四', NULL, NULL, '1');
INSERT INTO `option_info` VALUES ('390f35ddf6d542ed951e2496b2a021fa', 'a6e22c7550d04108b9bd9d21b9f86741', '王五', NULL, NULL, '2');
INSERT INTO `option_info` VALUES ('399abd4ce1844f8ba1221b1b4c2b0d17', '440d2ca6e9ae4dadac3c873e70ad2ccc', '1', NULL, NULL, '1');
INSERT INTO `option_info` VALUES ('3a139ad1fbdc4f299c5a77f926728268', '963cd6616bc84435849bfc495a9416c1', '张三', NULL, NULL, '0');
INSERT INTO `option_info` VALUES ('3a912837a9c64bc1807d0ea69e0f15a8', '70d06562bb464a1c8f69778a8d18b301', '吴昊', NULL, NULL, '1');
INSERT INTO `option_info` VALUES ('3b53763aec7640cbab7638d68e69813d', '71b88a44fcde4ed8a8590d1ac75cdcfa', '周义勇', NULL, NULL, '0');
INSERT INTO `option_info` VALUES ('3c58ddc7dc424319bfff2231f3caa24b', '08f1ccea12f243879e30f6a944dddb7b', '菊花', NULL, NULL, '2');
INSERT INTO `option_info` VALUES ('4097109778a84a5f87edf765ddce95f9', 'b3986b43de114cb4a529c3a2cbbfa1dc', '3', NULL, '周义勇', '3');
INSERT INTO `option_info` VALUES ('40a50eff692b4012b39ded4640b3002b', '40f206f6fcdc46048a3777f638c3370d', '对对', NULL, NULL, '1');
INSERT INTO `option_info` VALUES ('410bc42d5ed44bbca189ef72d66b5901', '9d5d74068dd148bcbcf994409e4337c6', '王五', NULL, NULL, '2');
INSERT INTO `option_info` VALUES ('41921f77b6d04cffb8f6eacf4babb178', 'e179c3dd4065427eb7be263a4f5abcc4', '玫瑰', NULL, NULL, '3');
INSERT INTO `option_info` VALUES ('4266498ee50f46cb8cf572a2e5b43eb0', '8b8f2912ba6a44369bd2654102858c0a', '1', NULL, NULL, '0');
INSERT INTO `option_info` VALUES ('428b61c2ada9459bae3503af02a3d32a', 'a6e22c7550d04108b9bd9d21b9f86741', '张三', NULL, NULL, '0');
INSERT INTO `option_info` VALUES ('43822caae8b341b5b91eed9009fe85fb', '7050c460326741acb9c92ebc8c4860ed', '张三', NULL, NULL, '0');
INSERT INTO `option_info` VALUES ('45b5f99bf5a24c4ca477230f17e25aa0', '1b0778ae8ecf4ad89c6ddbf38971b2ba', '玫瑰', NULL, NULL, '3');
INSERT INTO `option_info` VALUES ('4623b256f5b24e59b6d979ce0729afc8', '9bd5771feb6743c69fed692f559898cf', '周义勇', NULL, NULL, '0');
INSERT INTO `option_info` VALUES ('464d4f3422794c81841a46b0b2a38994', 'b3986b43de114cb4a529c3a2cbbfa1dc', '2', NULL, '周义勇', '2');
INSERT INTO `option_info` VALUES ('477212ab744c46e194d69232e7c8a1f7', 'bbc04a9c625041448df5e0463cb9afa6', '喷火龙', NULL, NULL, '2');
INSERT INTO `option_info` VALUES ('478f72eadacc463c986e1f645fbaf45c', '1709c4889f704e4ea6422b5e08855446', '6', NULL, NULL, '3');
INSERT INTO `option_info` VALUES ('493234af08f64f67aba3db7f2a67831b', '91d0699eab4d413c964fa3a1a1ba7a3d', '', NULL, NULL, '4');
INSERT INTO `option_info` VALUES ('495878e74f7142e2a7d463f9b4254393', '919f6c51d1f24fa0aa9692ab9e06271b', '徐六', NULL, NULL, '3');
INSERT INTO `option_info` VALUES ('4b6db222627c4e0193e732e663371cbb', '1b0778ae8ecf4ad89c6ddbf38971b2ba', '菊花', NULL, NULL, '2');
INSERT INTO `option_info` VALUES ('4c30b72cde364ac884797034ae6fb9c4', '6a0d6d2d7f6d4cd1acae9a2b22133d67', '桃花', NULL, NULL, '1');
INSERT INTO `option_info` VALUES ('4d0711c1f365440684e72e7418242e2d', '7050c460326741acb9c92ebc8c4860ed', '徐六', NULL, NULL, '3');
INSERT INTO `option_info` VALUES ('4d81d17b70c447d6bc720516daad5564', '9bd5771feb6743c69fed692f559898cf', '喷火龙', NULL, NULL, '2');
INSERT INTO `option_info` VALUES ('4dcad21960764f4d828b4639598f002a', 'b5c4fecdcac241458251246106093b4d', '周义勇', NULL, NULL, '0');
INSERT INTO `option_info` VALUES ('4e0215ceb5b944f187dcf9386bbf0306', '40f206f6fcdc46048a3777f638c3370d', '萱姐', NULL, NULL, '2');
INSERT INTO `option_info` VALUES ('4e2d9a0ed0e4479e823c92a97e634934', '0194c6440e5b40b09dc9d98d23d76908', '周义勇', NULL, NULL, '0');
INSERT INTO `option_info` VALUES ('4f2460c6ef24421298e08fbfb9e20e43', '0129d14e05ec41649304bc57a459fcfb', '周义勇', NULL, NULL, '0');
INSERT INTO `option_info` VALUES ('4f278ff73ad54cbaaf80c9c0f243246e', 'a6e22c7550d04108b9bd9d21b9f86741', '徐六', NULL, NULL, '3');
INSERT INTO `option_info` VALUES ('4f33fcb558934e2d8898a41e2bfd6ea9', '963cd6616bc84435849bfc495a9416c1', '徐六', NULL, NULL, '3');
INSERT INTO `option_info` VALUES ('520d71de2f434d72ac904eccb923b111', '6a0d6d2d7f6d4cd1acae9a2b22133d67', '玫瑰', NULL, NULL, '3');
INSERT INTO `option_info` VALUES ('521cb934254d4c1b9244c3b402094413', '6fe8b9e4bcde4647af076cab3d1d236a', '菊花', NULL, NULL, '2');
INSERT INTO `option_info` VALUES ('525851c796464300bad0919cfb180d87', 'ea8ed91dd23943df849be40012635efe', '2', NULL, NULL, '4');
INSERT INTO `option_info` VALUES ('53e43eb222e7468ca7674e0494204c1d', '6a0d6d2d7f6d4cd1acae9a2b22133d67', '菊花', NULL, NULL, '2');
INSERT INTO `option_info` VALUES ('54475bdb02314ebe9360ce9e2f41a7f9', '65860d0c109a4cbfa805c1964bfd6542', '', NULL, NULL, '4');
INSERT INTO `option_info` VALUES ('54b546fd383b4633ac5c30ef81976d18', 'b8ad3fe5b0cf4982997fe60678ee8ac7', '', NULL, NULL, '4');
INSERT INTO `option_info` VALUES ('5523ca12ff8b4179899c7f62cd7181d6', '398118ea8114414b83c8b6613008b279', '喷火龙', NULL, NULL, '2');
INSERT INTO `option_info` VALUES ('566557a5c56842c6ba63630dbf533017', '8b8f2912ba6a44369bd2654102858c0a', '3', NULL, NULL, '2');
INSERT INTO `option_info` VALUES ('568c086fa8aa4178a0dfb9433da70108', 'b5c4fecdcac241458251246106093b4d', '', NULL, NULL, '4');
INSERT INTO `option_info` VALUES ('56f3afce55544780a3a6b5c1fb167d4e', '28d5e1de8b5341c498b4369d5dbd2e68', '李四', NULL, NULL, '1');
INSERT INTO `option_info` VALUES ('5869fd5fd79046c08e7307395ef2b248', 'a5ada775635a44ffb877acd5801282d9', '徐六', NULL, NULL, '3');
INSERT INTO `option_info` VALUES ('5955ea06a2d2485798dc00daff9180da', 'b2780b88305c49b0b83b671664f72afe', '4', NULL, NULL, '2');
INSERT INTO `option_info` VALUES ('5a645b4456224354bd223bf290abbc1d', '05d52f90f9d14c3889f0e6e8a97c4c05', NULL, NULL, NULL, '0');
INSERT INTO `option_info` VALUES ('5ab3d600f3134083ae5b7ce2e92b21d4', '974d532cb90b4f86809348727e19815e', '1', NULL, NULL, '0');
INSERT INTO `option_info` VALUES ('5c9a3ffd009c403eaf846e2343a47a7d', '65860d0c109a4cbfa805c1964bfd6542', '1', NULL, NULL, '1');
INSERT INTO `option_info` VALUES ('5cc164b7aa9642e8922f6842ffa0a92b', '2d2be8e252ab4bd3bd80afe2a7c5597d', '2', NULL, NULL, '2');
INSERT INTO `option_info` VALUES ('5cdbb14b4a1f404692ed658ad3d88fc6', 'e86062817b6044239160b15cddc6ef80', '2', NULL, NULL, '2');
INSERT INTO `option_info` VALUES ('5ce060af479f4ebca0c158fa0476f553', '70d06562bb464a1c8f69778a8d18b301', '周义勇', NULL, NULL, '0');
INSERT INTO `option_info` VALUES ('5d2c6917433646119af65978aa6d8364', '963cd6616bc84435849bfc495a9416c1', '李四', NULL, NULL, '1');
INSERT INTO `option_info` VALUES ('5e1aa59e4363467f980fcff2665fa127', 'c4931cd0469d4601b482c5a017da2bf6', '陪1', NULL, NULL, '1');
INSERT INTO `option_info` VALUES ('6279419534554aeca823ebee8e5e46d3', '17c2adb6c9454631b0a421ce0c090fea', '1', NULL, NULL, '1');
INSERT INTO `option_info` VALUES ('62c7d4f77ad340db99691472dbf90bd5', '411c4f93567f474abaa9f80dd3933beb', '周义勇', NULL, NULL, '0');
INSERT INTO `option_info` VALUES ('63958a76697544b2ba1755b0c1e0cafb', '65860d0c109a4cbfa805c1964bfd6542', '', NULL, NULL, '3');
INSERT INTO `option_info` VALUES ('6490754ff6744af3ab06d9762fb774f9', '75f92266b53845d0bab53edfa94c7865', '李四', NULL, NULL, '1');
INSERT INTO `option_info` VALUES ('65fd86a97efc44e5928beb5338b67f8f', 'b5800e5ab3424e98b7d1e67954d2f029', '樱花', NULL, NULL, '0');
INSERT INTO `option_info` VALUES ('67e8bfff2b1447af85d8385b18acbd84', '398118ea8114414b83c8b6613008b279', '周义勇', NULL, NULL, '0');
INSERT INTO `option_info` VALUES ('6810b33f85024b9b83ee6d138ab3d105', '6ed0d259c5074c978d4cd61f09216956', '菊花', NULL, NULL, '2');
INSERT INTO `option_info` VALUES ('6887231215d440448d3df7f3b3707d9c', 'b8ad3fe5b0cf4982997fe60678ee8ac7', '妙蛙种子', NULL, NULL, '1');
INSERT INTO `option_info` VALUES ('68b63ae95670426fac8887e7e71e0c77', 'abef11975fd74c8a86406ba7cc258dd1', '', NULL, NULL, '4');
INSERT INTO `option_info` VALUES ('6a0e12a41dc24053bb26ec94ca05dd71', 'c4931cd0469d4601b482c5a017da2bf6', '陪', NULL, NULL, '0');
INSERT INTO `option_info` VALUES ('6a4e14e235734057abdd3261755fdae3', '9d5d74068dd148bcbcf994409e4337c6', '李四', NULL, NULL, '1');
INSERT INTO `option_info` VALUES ('6b1b3029a06f4f678a478065c4e37ddb', '5c65d46d22d74fe184416839ea02bf2a', '王五', NULL, NULL, '2');
INSERT INTO `option_info` VALUES ('6bbbd162136e488c9a97fd8b7116c313', 'c4931cd0469d4601b482c5a017da2bf6', '陪2', NULL, NULL, '2');
INSERT INTO `option_info` VALUES ('6c4231113e1c47caa229461a775e8a42', '8bf70437edb64bebaa5d0f5c43f45783', '妙蛙种子', NULL, NULL, '3');
INSERT INTO `option_info` VALUES ('6d0798ef7d074c16968955325763a922', '0194c6440e5b40b09dc9d98d23d76908', '妙蛙种子', NULL, NULL, '3');
INSERT INTO `option_info` VALUES ('6d7d183828954814ad09ecf0fc298c20', '5066e452fa314b3b87215c3233dd0604', '对对', NULL, NULL, '1');
INSERT INTO `option_info` VALUES ('6f5bcb55562d43c6bc20970c87a180d5', '1918c75e3e5e46f5992491a922fb055a', NULL, NULL, NULL, '0');
INSERT INTO `option_info` VALUES ('6f83b4ac2cef489ba8647abd78cda873', '28d5e1de8b5341c498b4369d5dbd2e68', '王五', NULL, NULL, '2');
INSERT INTO `option_info` VALUES ('6fc48cad70914cdcbc2c3837e2059646', '91d0699eab4d413c964fa3a1a1ba7a3d', '', NULL, NULL, '3');
INSERT INTO `option_info` VALUES ('705b12dada0d448e904f0e6c561bfb8a', '71b88a44fcde4ed8a8590d1ac75cdcfa', '妙蛙种子', NULL, NULL, '3');
INSERT INTO `option_info` VALUES ('706de5a7ea3f4aad8498804413b0a259', '725e4c8a0b99490198a25320ab1b49a8', '周义勇', NULL, NULL, '0');
INSERT INTO `option_info` VALUES ('7216cee7fb52482fb2e7fca1d6f0e563', 'c8a1abfbacf64b45853916454be27c5a', '张三', NULL, NULL, '0');
INSERT INTO `option_info` VALUES ('7250188508434acab4e0148cc7275ab0', '1b03f04df7424c01b4a1000fa6eb828a', '桃花', NULL, NULL, '1');
INSERT INTO `option_info` VALUES ('72cbac2fb5ec48c39fcaeea715907040', 'd2a02346830d4b4ca6286d6b9896289f', '吴昊', NULL, NULL, '1');
INSERT INTO `option_info` VALUES ('74584c8b7ab44aeabdca696f1db5925a', '119a1972afe34855b8af76039043a3b5', '4', NULL, NULL, '2');
INSERT INTO `option_info` VALUES ('746f819d9c8f4c9fa560a2c7aacba4c0', 'b5c4fecdcac241458251246106093b4d', '2', NULL, NULL, '3');
INSERT INTO `option_info` VALUES ('748f49a9987c4b5c8d4072419d44f46f', '17c2adb6c9454631b0a421ce0c090fea', '2', NULL, NULL, '2');
INSERT INTO `option_info` VALUES ('74b7ea46160d4a63aed447c20bd0d06f', '919f6c51d1f24fa0aa9692ab9e06271b', '李四', NULL, NULL, '1');
INSERT INTO `option_info` VALUES ('759bcf19af544f6d8ca284ab4504b232', 'aabd8b77fefe456c8ea2df10f82dce39', '2', NULL, NULL, '1');
INSERT INTO `option_info` VALUES ('76dcdb9e67ff45aa98fb9a090da4fd2b', '17c2adb6c9454631b0a421ce0c090fea', '', NULL, NULL, '3');
INSERT INTO `option_info` VALUES ('797a142cf796429e85a3be04fd767835', '12ae2a91502548b3a31a9fdb0973023e', '樱花', NULL, NULL, '0');
INSERT INTO `option_info` VALUES ('7a4ed55020ec4cbab57ea372b84bd631', '2d2be8e252ab4bd3bd80afe2a7c5597d', '1', NULL, NULL, '0');
INSERT INTO `option_info` VALUES ('7a99da26d17944c687b1eb70e10be48b', '5c65d46d22d74fe184416839ea02bf2a', '徐六', NULL, NULL, '3');
INSERT INTO `option_info` VALUES ('7b0a2cbcf26741248243b290928113be', 'e86062817b6044239160b15cddc6ef80', '', NULL, NULL, '3');
INSERT INTO `option_info` VALUES ('7b9a9d0ed8984ed480eb96eff3d1df8c', '7050c460326741acb9c92ebc8c4860ed', '李四', NULL, NULL, '1');
INSERT INTO `option_info` VALUES ('7cafe44c56684c2ba3a720599d9a1b7a', 'ed87484b6fbc476e9a236b7b5aafafe1', '妙蛙种子', NULL, NULL, '1');
INSERT INTO `option_info` VALUES ('7e0fd96a3efa49dc809993fb28ef4f14', 'c8a1abfbacf64b45853916454be27c5a', '王五', NULL, NULL, '2');
INSERT INTO `option_info` VALUES ('7e16535eead94f04b16646c7e89d74ed', 'e86062817b6044239160b15cddc6ef80', '1', NULL, NULL, '0');
INSERT INTO `option_info` VALUES ('7ea62eb985b94c1da0c89bd62220a293', '71b88a44fcde4ed8a8590d1ac75cdcfa', '吴昊', NULL, NULL, '1');
INSERT INTO `option_info` VALUES ('7ef8b43431ee4e628092c657eb304e01', '411c4f93567f474abaa9f80dd3933beb', '妙蛙种子', NULL, NULL, '3');
INSERT INTO `option_info` VALUES ('7faa7771582647168b94a7af3f1f9fbb', '411c4f93567f474abaa9f80dd3933beb', '喷火龙', NULL, NULL, '2');
INSERT INTO `option_info` VALUES ('7fc9c4a444f14dcb847badce67e3430f', 'dd9a21f678f5465380ce9154d6a62c7e', '1', NULL, '1', '0');
INSERT INTO `option_info` VALUES ('805da6e462ca446997ef28c32b2f511a', '49f3db3f2f704fafa01f09ca19c38686', '周义勇', NULL, NULL, '0');
INSERT INTO `option_info` VALUES ('8090090ac6394514bfbc6316583f0982', '7707041a816647d1b0a3cbb7195ae0c4', '1', NULL, '3', '2');
INSERT INTO `option_info` VALUES ('80c5041aca654a3b822cd8d5acafb599', '9d5d74068dd148bcbcf994409e4337c6', '徐六', NULL, NULL, '3');
INSERT INTO `option_info` VALUES ('8307284a6c30492cad9b5f9ec6fcf0e7', '725e4c8a0b99490198a25320ab1b49a8', '妙蛙种子', NULL, NULL, '1');
INSERT INTO `option_info` VALUES ('845e8547238a4f39832ce25d9121fa3e', 'b3986b43de114cb4a529c3a2cbbfa1dc', '2', NULL, '吴昊', '1');
INSERT INTO `option_info` VALUES ('854267aea711424c9d0828032b401871', '1b0778ae8ecf4ad89c6ddbf38971b2ba', '樱花', NULL, NULL, '0');
INSERT INTO `option_info` VALUES ('85757e2e829e444fb2bfff682f7f99ca', '6fe8b9e4bcde4647af076cab3d1d236a', '樱花', NULL, NULL, '0');
INSERT INTO `option_info` VALUES ('880f0f81977e41b796a5497b98ef900a', '7707041a816647d1b0a3cbb7195ae0c4', '1', NULL, '2', '1');
INSERT INTO `option_info` VALUES ('882b95ee8e7e487bb141664f489cb0c4', '119a1972afe34855b8af76039043a3b5', '3', NULL, NULL, '0');
INSERT INTO `option_info` VALUES ('8b05ce64c06648aab7e58da64ddc6f74', '6ed0d259c5074c978d4cd61f09216956', '桃花', NULL, NULL, '1');
INSERT INTO `option_info` VALUES ('8b22e6c301794706b635fbbc1b9c5c59', '23429284399b46768c6c6722ee97e82e', '111', NULL, NULL, '4');
INSERT INTO `option_info` VALUES ('8b351fb99fba49efa2e7788df8c56ae2', '65860d0c109a4cbfa805c1964bfd6542', '1', NULL, NULL, '0');
INSERT INTO `option_info` VALUES ('8b6d484f9b1942fb98875ecfcb55007a', '23429284399b46768c6c6722ee97e82e', '菊花', NULL, NULL, '2');
INSERT INTO `option_info` VALUES ('8bbdf174f4e742378a190a02160daf60', 'e179c3dd4065427eb7be263a4f5abcc4', '樱花', NULL, NULL, '0');
INSERT INTO `option_info` VALUES ('8bf3fc0c8ec64f8283a0863822497fe0', '1709c4889f704e4ea6422b5e08855446', '2', NULL, NULL, '4');
INSERT INTO `option_info` VALUES ('8c92eff60c8c4b36a4f0f4f1d3e6a4fd', 'fd3c580056684faf9bd4e132d6ade57c', '2', NULL, NULL, '4');
INSERT INTO `option_info` VALUES ('8da03fccb82840f9beb7288a489a36bb', '6c3d2cd1b1854c4688f0a78273ab8eab', '3', '10', NULL, '2');
INSERT INTO `option_info` VALUES ('8da0de2040cd4445a89ce6f62ac9a083', '23429284399b46768c6c6722ee97e82e', '桃花', NULL, NULL, '1');
INSERT INTO `option_info` VALUES ('8dccc9b692d24e14a14e9dfdd4f7cf8f', 'db1ff0d79c154271afc55bc6eed49038', '周义勇', NULL, NULL, '1');
INSERT INTO `option_info` VALUES ('915c00d1a0fd4ec18ddc646ffdf91e46', 'dd9a21f678f5465380ce9154d6a62c7e', '3', NULL, '1', '2');
INSERT INTO `option_info` VALUES ('91e49b9b26e246ce9d8f657f199a2413', 'dd9a21f678f5465380ce9154d6a62c7e', '2', NULL, '1', '1');
INSERT INTO `option_info` VALUES ('923cc2b8195047b387de928b209f3411', 'ccf28df1aa6d4888840dcaf57fcc97d6', '周义勇', NULL, NULL, '0');
INSERT INTO `option_info` VALUES ('92c58c4a1dc04961abea5a42b971e877', '717c58044e6d4c778bb73cf4251caf04', '', NULL, NULL, '4');
INSERT INTO `option_info` VALUES ('93301bb9fad84594811b3ec181a184c4', '247322240b054665b46d8e779b22e378', '2', NULL, NULL, '4');
INSERT INTO `option_info` VALUES ('9376921416534571b4dc98ccb4a1bec7', 'ecec8fa1be4a47b88dbd1385690adf60', '3', NULL, NULL, '2');
INSERT INTO `option_info` VALUES ('937d8ecb4a164573b3a525df08194cc6', '34327258a31d4c2bbb076a2ed3bfabff', '3', NULL, NULL, '1');
INSERT INTO `option_info` VALUES ('93901d78faf84638ad1a96f894ed323a', 'e3aadcd1a1c741ff845cc477999241e0', '大头', NULL, NULL, '3');
INSERT INTO `option_info` VALUES ('93b8eb826f514398aef8d0b1437a7d58', '91d0699eab4d413c964fa3a1a1ba7a3d', '1', NULL, NULL, '0');
INSERT INTO `option_info` VALUES ('93e587b280994fe19bd799454b6f55b4', '93dcdb045215435a95c4fb6f03bad7f5', '喷火龙', NULL, NULL, '2');
INSERT INTO `option_info` VALUES ('9497ecf837af4a0a88863fa4e3a813fe', '640c401e35aa428dae0fe218ecfe1371', '周义勇', NULL, NULL, '0');
INSERT INTO `option_info` VALUES ('94af8b695a9e4a089cb87cbc24600702', '1709c4889f704e4ea6422b5e08855446', '3', NULL, NULL, '1');
INSERT INTO `option_info` VALUES ('94eabdd30d8b4aec8fcf2ffd59668ea1', 'ccf28df1aa6d4888840dcaf57fcc97d6', '妙蛙种子', NULL, NULL, '1');
INSERT INTO `option_info` VALUES ('9699604df1a549ad91cfcba1b3d9011b', '1b0778ae8ecf4ad89c6ddbf38971b2ba', '桃花', NULL, NULL, '1');
INSERT INTO `option_info` VALUES ('974e6a7902434a4f84d9ebdb4e696aff', 'e6a52a97236e4643b7413b5ca312b373', '王五', NULL, NULL, '2');
INSERT INTO `option_info` VALUES ('97fc8f26ff5547a087f24d2969280571', 'e3aadcd1a1c741ff845cc477999241e0', '吴昊', NULL, NULL, '0');
INSERT INTO `option_info` VALUES ('98510b7d18744d609666f986ac7bfa42', 'ea8ed91dd23943df849be40012635efe', '4', NULL, NULL, '2');
INSERT INTO `option_info` VALUES ('9883b434226d40b5bddaf65d26195cbe', 'b3986b43de114cb4a529c3a2cbbfa1dc', '3', NULL, '吴昊', '2');
INSERT INTO `option_info` VALUES ('9ccec1ee9a3e4d48ad885a46598deb95', '493ab46cb3e445d7b9a487277d39d927', '4', NULL, NULL, '2');
INSERT INTO `option_info` VALUES ('9d4830963f674f0684e6866ae8aba652', 'b5800e5ab3424e98b7d1e67954d2f029', '玫瑰', NULL, NULL, '3');
INSERT INTO `option_info` VALUES ('9dd9dacb21324f5eac32501584d82ee1', 'd3fe0c31ab114261975a27ff64975279', '吴昊', NULL, NULL, '1');
INSERT INTO `option_info` VALUES ('9f5f9be768d447adb7a62df7fe6fb73a', '08f1ccea12f243879e30f6a944dddb7b', '玫瑰', NULL, NULL, '3');
INSERT INTO `option_info` VALUES ('9fbd99702d6b4650a839a31a17f494a3', '9bd5771feb6743c69fed692f559898cf', '', NULL, NULL, '4');
INSERT INTO `option_info` VALUES ('a0745874723648c1a5a906466a4ff2cc', 'ed87484b6fbc476e9a236b7b5aafafe1', '2', NULL, NULL, '3');
INSERT INTO `option_info` VALUES ('a08fa86f02c043d6b7f84ac01b322aaa', '440d2ca6e9ae4dadac3c873e70ad2ccc', '1', NULL, NULL, '0');
INSERT INTO `option_info` VALUES ('a1609674ee544deebe477d65e5b1826f', '5354701edba644c3865faa4d30ab54e6', NULL, NULL, NULL, '0');
INSERT INTO `option_info` VALUES ('a168b56cd4744d2db6a97a3638f6b4af', '018cdebc67d141efb30d80ebd3a98097', '菊花', NULL, NULL, '2');
INSERT INTO `option_info` VALUES ('a241e8851a6f4289a379aab7c1668145', 'ccf28df1aa6d4888840dcaf57fcc97d6', '', NULL, NULL, '4');
INSERT INTO `option_info` VALUES ('a2679d3787904aaca14ad134436d2c5e', '6c3d2cd1b1854c4688f0a78273ab8eab', '1', '0', NULL, '0');
INSERT INTO `option_info` VALUES ('a5afffc9411249c6bb9d8da844e08178', '49f3db3f2f704fafa01f09ca19c38686', '喷火龙', NULL, NULL, '2');
INSERT INTO `option_info` VALUES ('a655bfb39bef436e914845987a7fbfd1', 'e9e7670672b14f06a8b617092495b46e', '王五', NULL, NULL, '2');
INSERT INTO `option_info` VALUES ('a6a92099f54e4a6a86690108384bed24', 'e3aadcd1a1c741ff845cc477999241e0', '周义勇', NULL, NULL, '1');
INSERT INTO `option_info` VALUES ('a6dc60484f444fd187c383e0e3bc4415', '9d5d74068dd148bcbcf994409e4337c6', '张三', NULL, NULL, '0');
INSERT INTO `option_info` VALUES ('a74a7d6786fb474c93ac0e4990936d02', '70d06562bb464a1c8f69778a8d18b301', '妙蛙种子', NULL, NULL, '3');
INSERT INTO `option_info` VALUES ('a763d17722be4e9cbe3b7b5d0a9f8b65', 'b3986b43de114cb4a529c3a2cbbfa1dc', '1', NULL, '周义勇', '1');
INSERT INTO `option_info` VALUES ('a7ec9d256b4d419fbb3fa81871f8ea8d', '9ebe10a726154b0c87df5def380b44e4', '123', '5', NULL, '1');
INSERT INTO `option_info` VALUES ('a838ed21d2a6496ca9cd2442851626df', '018cdebc67d141efb30d80ebd3a98097', '桃花', NULL, NULL, '1');
INSERT INTO `option_info` VALUES ('a8a503650fdf46b48fd85fd74e21506a', '7707041a816647d1b0a3cbb7195ae0c4', '2', NULL, '1', '1');
INSERT INTO `option_info` VALUES ('a8ac5e2585394cdea74f6ef7aef0f768', 'b2780b88305c49b0b83b671664f72afe', '2', NULL, NULL, '4');
INSERT INTO `option_info` VALUES ('a9690aa00d3a4d08bd854c4bba548cc1', 'e3aadcd1a1c741ff845cc477999241e0', '卡比兽', NULL, NULL, '2');
INSERT INTO `option_info` VALUES ('a9d1583edcbb4b5686c791fb44bc1a4a', 'db1ff0d79c154271afc55bc6eed49038', '杰尼龟', NULL, NULL, '3');
INSERT INTO `option_info` VALUES ('ad0438d0c18b40a28ec2ed3bd370647a', 'ea8ed91dd23943df849be40012635efe', '3', NULL, NULL, '0');
INSERT INTO `option_info` VALUES ('ad4a43a664c74395bff633754d80a759', '717c58044e6d4c778bb73cf4251caf04', '', NULL, NULL, '3');
INSERT INTO `option_info` VALUES ('ae48cdecf75e4e6db8841b52e736126d', '7193ca79d4dd4368beaad147ddfb4ec7', '2', NULL, NULL, '4');
INSERT INTO `option_info` VALUES ('af437653fd0e499faea62620cd720d7e', '6fe8b9e4bcde4647af076cab3d1d236a', '桃花', NULL, NULL, '1');
INSERT INTO `option_info` VALUES ('af45c795bc144bc5b4eef2cd666ec5c8', '974d532cb90b4f86809348727e19815e', '', NULL, NULL, '4');
INSERT INTO `option_info` VALUES ('b0ef72244c4847e993df226bafb22997', '28d5e1de8b5341c498b4369d5dbd2e68', '徐六', NULL, NULL, '3');
INSERT INTO `option_info` VALUES ('b1068cc744ac45bb975d1134bd9b568e', 'db1ff0d79c154271afc55bc6eed49038', '妙蛙种子', NULL, NULL, '2');
INSERT INTO `option_info` VALUES ('b12c33d0038b47dab50bb26d03183d77', '640c401e35aa428dae0fe218ecfe1371', '', NULL, NULL, '4');
INSERT INTO `option_info` VALUES ('b200eab2059c43e6b946d780b72cdf0c', '12ae2a91502548b3a31a9fdb0973023e', '玫瑰', NULL, NULL, '3');
INSERT INTO `option_info` VALUES ('b2cb4c2aa162465ea972f5fba7e3a954', 'd2a02346830d4b4ca6286d6b9896289f', '周义勇', NULL, NULL, '0');
INSERT INTO `option_info` VALUES ('b44c6cecdeb646bfa15c591de55c99c3', 'e179c3dd4065427eb7be263a4f5abcc4', '桃花', NULL, NULL, '1');
INSERT INTO `option_info` VALUES ('b467fdd596a04850a80cc803d83e0fe1', '440d2ca6e9ae4dadac3c873e70ad2ccc', '', NULL, NULL, '3');
INSERT INTO `option_info` VALUES ('b545ada8c462422cb2036322a20f7b15', '247322240b054665b46d8e779b22e378', '4', NULL, NULL, '2');
INSERT INTO `option_info` VALUES ('b66350d74e1b4844ae884236b9d3c774', 'dd9a21f678f5465380ce9154d6a62c7e', '2', NULL, '2', '2');
INSERT INTO `option_info` VALUES ('b72e5334bdab4971830a45f40b3d1ea0', '0129d14e05ec41649304bc57a459fcfb', '喷火龙', NULL, NULL, '2');
INSERT INTO `option_info` VALUES ('b74a19bd7a8e438097a998aed97fe2e1', 'd3fe0c31ab114261975a27ff64975279', '周义勇', NULL, NULL, '0');
INSERT INTO `option_info` VALUES ('b76295d06089427785ab37ca170f3bbf', '493ab46cb3e445d7b9a487277d39d927', '3', NULL, NULL, '0');
INSERT INTO `option_info` VALUES ('b7f799bbe738495c8d1f1171c45cde41', '4e619c867efc485cb5ac10ca1c7eca72', '周义', NULL, NULL, '0');
INSERT INTO `option_info` VALUES ('b85f64c6c6154b0aa171c9d02b715b35', '0194c6440e5b40b09dc9d98d23d76908', '喷火龙', NULL, NULL, '2');
INSERT INTO `option_info` VALUES ('b8e409eae29c4c05b85300425db5fe66', 'ed87484b6fbc476e9a236b7b5aafafe1', '喷火龙', NULL, NULL, '2');
INSERT INTO `option_info` VALUES ('b9cc581ac65b4580a24f95d31e54069e', 'b2780b88305c49b0b83b671664f72afe', '3', NULL, NULL, '1');
INSERT INTO `option_info` VALUES ('b9ea1ae860f245fb80e002143d48b925', '411c4f93567f474abaa9f80dd3933beb', '吴昊', NULL, NULL, '1');
INSERT INTO `option_info` VALUES ('bc2bf95c2d9b4c118459e0ede7f0dba7', 'abef11975fd74c8a86406ba7cc258dd1', '1', NULL, NULL, '0');
INSERT INTO `option_info` VALUES ('bd0cfacf8c684d54b829913aee86ca07', 'e86062817b6044239160b15cddc6ef80', '', NULL, NULL, '4');
INSERT INTO `option_info` VALUES ('bdc14418e3ce472c9060f2a49409a1a1', 'a6e22c7550d04108b9bd9d21b9f86741', '李四', NULL, NULL, '1');
INSERT INTO `option_info` VALUES ('be1d4d0809f140c590a8ec9f8b372796', '6a0d6d2d7f6d4cd1acae9a2b22133d67', '樱花', NULL, NULL, '0');
INSERT INTO `option_info` VALUES ('bec6cb3f058f4c26b45aa3d473e7d021', '6fe8b9e4bcde4647af076cab3d1d236a', '玫瑰', NULL, NULL, '3');
INSERT INTO `option_info` VALUES ('bf19a96c843e4baa9e94b96d02c61d88', '75f92266b53845d0bab53edfa94c7865', '张三', NULL, NULL, '0');
INSERT INTO `option_info` VALUES ('bf495195b0be4aeca0001dd3594689c0', '974d532cb90b4f86809348727e19815e', '1', NULL, NULL, '1');
INSERT INTO `option_info` VALUES ('bfc9dcd823644651949b29ababcbad72', '640c401e35aa428dae0fe218ecfe1371', '2', NULL, NULL, '3');
INSERT INTO `option_info` VALUES ('c1b5afe6328b47eabad109e09dc5950d', '08f1ccea12f243879e30f6a944dddb7b', '桃花', NULL, NULL, '1');
INSERT INTO `option_info` VALUES ('c1f5b449bc19401b9cfc1bf12f571ea5', '7707041a816647d1b0a3cbb7195ae0c4', '1', NULL, '1', '0');
INSERT INTO `option_info` VALUES ('c218aefff1ee4c6f93d2bbe9489f2c64', '34327258a31d4c2bbb076a2ed3bfabff', '4', NULL, NULL, '2');
INSERT INTO `option_info` VALUES ('c25233a5f8ca4d7ea12122c65d7fc069', 'db1ff0d79c154271afc55bc6eed49038', '吴昊', NULL, NULL, '0');
INSERT INTO `option_info` VALUES ('c30f6c042a7b47a4aed2c46388c22f00', '5c65d46d22d74fe184416839ea02bf2a', '李四', NULL, NULL, '1');
INSERT INTO `option_info` VALUES ('c3f0e0dd05af4881b860a614e3830d26', '93dcdb045215435a95c4fb6f03bad7f5', '妙蛙种子', NULL, NULL, '3');
INSERT INTO `option_info` VALUES ('c4daf4af7f3f48448f706d9b225297a5', '8bf70437edb64bebaa5d0f5c43f45783', '喷火龙', NULL, NULL, '2');
INSERT INTO `option_info` VALUES ('c56bd630a58c4c7a95dc1ebcaee0bbde', '119a1972afe34855b8af76039043a3b5', '3', NULL, NULL, '1');
INSERT INTO `option_info` VALUES ('c63cc39e78a5407dabe7756a29716517', '1b03f04df7424c01b4a1000fa6eb828a', '玫瑰', NULL, NULL, '3');
INSERT INTO `option_info` VALUES ('c6e982795dab4c7591fc9c036848cebd', 'c8a1abfbacf64b45853916454be27c5a', '李四', NULL, NULL, '1');
INSERT INTO `option_info` VALUES ('c7be67008ff645c4a9992745ab60ac41', 'b5c4fecdcac241458251246106093b4d', '妙蛙种子', NULL, NULL, '1');
INSERT INTO `option_info` VALUES ('c83d1e6405474bbaa1f2cd4a00026d82', '018cdebc67d141efb30d80ebd3a98097', '樱花', NULL, NULL, '0');
INSERT INTO `option_info` VALUES ('c9146d2f0a324ee298ae743dbd41a96d', '398118ea8114414b83c8b6613008b279', '2', NULL, NULL, '3');
INSERT INTO `option_info` VALUES ('c97c026201fa477ab33e1429c49b51c7', '0129d14e05ec41649304bc57a459fcfb', '', NULL, NULL, '4');
INSERT INTO `option_info` VALUES ('ca6b82f764ee4ba2a28b355f6c534399', 'b5800e5ab3424e98b7d1e67954d2f029', '菊花', NULL, NULL, '2');
INSERT INTO `option_info` VALUES ('caaa83a9e5a24389964a688faeae8873', 'dd9a21f678f5465380ce9154d6a62c7e', '2', NULL, '3', '3');
INSERT INTO `option_info` VALUES ('cad32c2c1cad4bfe85fbdb4c332f0c2d', 'd8e62047dfeb4edd8530a8601c1baed3', '1', '22', NULL, '0');
INSERT INTO `option_info` VALUES ('cc0f7364865a42778b69ff502343bdd7', 'b8ad3fe5b0cf4982997fe60678ee8ac7', '2', NULL, NULL, '3');
INSERT INTO `option_info` VALUES ('cccc3c82847944aa8ae88a789f53606b', 'e86062817b6044239160b15cddc6ef80', '1', NULL, NULL, '1');
INSERT INTO `option_info` VALUES ('cd97a1ca6a944ed18ae938160691029c', 'aabd8b77fefe456c8ea2df10f82dce39', '3', NULL, NULL, '2');
INSERT INTO `option_info` VALUES ('ce46a330a7da4a3b9f1e7c11466551bd', '725e4c8a0b99490198a25320ab1b49a8', '', NULL, NULL, '4');
INSERT INTO `option_info` VALUES ('ce4e7227719944358ef122ea16577f6d', 'f3f4acb4e2cc4b6f908d2cbea791a490', '1', NULL, NULL, '0');
INSERT INTO `option_info` VALUES ('ced26d03791d4125a5ab363185a6ae1a', '4a3b3cc63c8f4927b557316a9aaebfd9', '桃花', NULL, NULL, '1');
INSERT INTO `option_info` VALUES ('cfa8b35e809349a69d333b2d1b930096', '9b75a8c65ebc49a78e81e9bc127f39d6', '周义勇', NULL, NULL, '0');
INSERT INTO `option_info` VALUES ('cfd574e7a2034a6187613f3096a57782', 'd2a02346830d4b4ca6286d6b9896289f', '妙蛙种子', NULL, NULL, '3');
INSERT INTO `option_info` VALUES ('d003e2f1409a4cad8e802a4e3c47636f', '9b75a8c65ebc49a78e81e9bc127f39d6', '吴昊', NULL, NULL, '1');
INSERT INTO `option_info` VALUES ('d07f8f3e89d247589e573c9373566df4', '49f3db3f2f704fafa01f09ca19c38686', '妙蛙种子', NULL, NULL, '3');
INSERT INTO `option_info` VALUES ('d0ad68ece5f245549af938283c563764', '12ae2a91502548b3a31a9fdb0973023e', '桃花', NULL, NULL, '1');
INSERT INTO `option_info` VALUES ('d1c20796699f43b2a2135cf48f7bfc81', 'e9e7670672b14f06a8b617092495b46e', '徐六', NULL, NULL, '3');
INSERT INTO `option_info` VALUES ('d328f595fd63415da6a318c891e5918c', '493ab46cb3e445d7b9a487277d39d927', '2', NULL, NULL, '4');
INSERT INTO `option_info` VALUES ('d41b5f8da0624732bc6e6ca1228fc18f', '5066e452fa314b3b87215c3233dd0604', '吴昊', NULL, NULL, '0');
INSERT INTO `option_info` VALUES ('d48d59d55fc24268a5f90c0296ab5b59', 'dd9a21f678f5465380ce9154d6a62c7e', '1', NULL, '3', '2');
INSERT INTO `option_info` VALUES ('d5fefa8de5ab4834addc931e26ec4fa4', '5c65d46d22d74fe184416839ea02bf2a', '张三', NULL, NULL, '0');
INSERT INTO `option_info` VALUES ('d6271af76d1243d38c3bdb6dcb6fd3e5', 'dd9a21f678f5465380ce9154d6a62c7e', '3', NULL, '2', '3');
INSERT INTO `option_info` VALUES ('d64d2db6b16845c6b8b7bfde0870af3c', 'b2780b88305c49b0b83b671664f72afe', '3', NULL, NULL, '0');
INSERT INTO `option_info` VALUES ('d72fb55ee309421998e2176dd1f71e6c', '28d5e1de8b5341c498b4369d5dbd2e68', '张三', NULL, NULL, '0');
INSERT INTO `option_info` VALUES ('d9536cc548a946bd820807b5ce8209fc', '398118ea8114414b83c8b6613008b279', '妙蛙种子', NULL, NULL, '1');
INSERT INTO `option_info` VALUES ('d95e24ee11624184868c80807e24ce7a', '9bd5771feb6743c69fed692f559898cf', '2', NULL, NULL, '3');
INSERT INTO `option_info` VALUES ('dc164c3e578f4b00b6c1f66c026c84be', 'fd3c580056684faf9bd4e132d6ade57c', '6', NULL, NULL, '3');
INSERT INTO `option_info` VALUES ('dc59c251dafd42b8bebed71667866756', '1709c4889f704e4ea6422b5e08855446', '3', NULL, NULL, '0');
INSERT INTO `option_info` VALUES ('dc97746bb6424885a64f67510f27f148', '119a1972afe34855b8af76039043a3b5', '2', NULL, NULL, '4');
INSERT INTO `option_info` VALUES ('dd0ac582d90a432fb3d18ca74c0bae66', '7193ca79d4dd4368beaad147ddfb4ec7', '4', NULL, NULL, '2');
INSERT INTO `option_info` VALUES ('de3425bb55c74aff94aac50f19caada3', '7193ca79d4dd4368beaad147ddfb4ec7', '3', NULL, NULL, '0');
INSERT INTO `option_info` VALUES ('de6cb5998d8c4598935ed2003cfecfeb', '1b03f04df7424c01b4a1000fa6eb828a', '樱花', NULL, NULL, '0');
INSERT INTO `option_info` VALUES ('df57a8aa1da24c5b89d356b37e011f8a', '974d532cb90b4f86809348727e19815e', '2', NULL, NULL, '2');
INSERT INTO `option_info` VALUES ('dfbcbd45ac1a4fea8799162863f1b17c', 'd8e62047dfeb4edd8530a8601c1baed3', '2', '44', NULL, '1');
INSERT INTO `option_info` VALUES ('e3d38351c75f4141a6db411272b1c9ed', '725e4c8a0b99490198a25320ab1b49a8', '喷火龙', NULL, NULL, '2');
INSERT INTO `option_info` VALUES ('e48841722c474791975e473433194d1b', '75f92266b53845d0bab53edfa94c7865', '王五', NULL, NULL, '2');
INSERT INTO `option_info` VALUES ('e4d554a2139040268c3fdd966ef8d0ef', '640c401e35aa428dae0fe218ecfe1371', '喷火龙', NULL, NULL, '2');
INSERT INTO `option_info` VALUES ('e5ed786a2c2548e79264af7839da3420', '2d2be8e252ab4bd3bd80afe2a7c5597d', '1', NULL, NULL, '1');
INSERT INTO `option_info` VALUES ('e705939bd8104e67987a5cb94a470f18', 'ecec8fa1be4a47b88dbd1385690adf60', '1', NULL, NULL, '0');
INSERT INTO `option_info` VALUES ('e72c4ebe21b4423cbbd13cee8dce7ff8', '23429284399b46768c6c6722ee97e82e', '樱花', NULL, NULL, '0');
INSERT INTO `option_info` VALUES ('e75729bb64844f879b4672248f2a07bc', '247322240b054665b46d8e779b22e378', '3', NULL, NULL, '0');
INSERT INTO `option_info` VALUES ('e87caaf0d8f94612bea4c5cc1ea0e045', 'b2780b88305c49b0b83b671664f72afe', '6', NULL, NULL, '3');
INSERT INTO `option_info` VALUES ('e96773d0092a4477b2f57fcdf73527e1', '34327258a31d4c2bbb076a2ed3bfabff', '3', NULL, NULL, '0');
INSERT INTO `option_info` VALUES ('e9cad35fd626459ca59f677b3db60d6f', 'a5ada775635a44ffb877acd5801282d9', '王五', NULL, NULL, '2');
INSERT INTO `option_info` VALUES ('eb6ef49193ff452db9b1061ce4d061f5', '7193ca79d4dd4368beaad147ddfb4ec7', '3', NULL, NULL, '1');
INSERT INTO `option_info` VALUES ('ec23a4fe33394a5196e6883b750348e0', '2d2be8e252ab4bd3bd80afe2a7c5597d', '', NULL, NULL, '4');
INSERT INTO `option_info` VALUES ('eccc3f5c67d54e8d89b13cb4848afe9d', '4a3b3cc63c8f4927b557316a9aaebfd9', '樱花', NULL, NULL, '0');
INSERT INTO `option_info` VALUES ('ed2a1036b94c412a9b46c1e7468790ec', 'd2a02346830d4b4ca6286d6b9896289f', '喷火龙', NULL, NULL, '2');
INSERT INTO `option_info` VALUES ('eece8e4ba3104850bc0dfbe912932963', 'abef11975fd74c8a86406ba7cc258dd1', '', NULL, NULL, '3');
INSERT INTO `option_info` VALUES ('f07eff9b4993458ebc7817df0c620377', '6ed0d259c5074c978d4cd61f09216956', '樱花', NULL, NULL, '0');
INSERT INTO `option_info` VALUES ('f093386f8c0c46b7b251f52ba781b508', 'b3986b43de114cb4a529c3a2cbbfa1dc', '1', NULL, '吴昊', '0');
INSERT INTO `option_info` VALUES ('f0e0f863e2654e8ca0836a1385cc4771', '725e4c8a0b99490198a25320ab1b49a8', '2', NULL, NULL, '3');
INSERT INTO `option_info` VALUES ('f15498be52914ab79db6951d46fea416', 'ecec8fa1be4a47b88dbd1385690adf60', '2', NULL, NULL, '1');
INSERT INTO `option_info` VALUES ('f29a1c7d1753427081713de3a0f4b5d4', 'dd9a21f678f5465380ce9154d6a62c7e', '3', NULL, '3', '4');
INSERT INTO `option_info` VALUES ('f4221f58b06748dd9bdf6f625648ff66', '717c58044e6d4c778bb73cf4251caf04', '2', NULL, NULL, '2');
INSERT INTO `option_info` VALUES ('f4401a295f51433cb7420670c8680cd1', '23429284399b46768c6c6722ee97e82e', '玫瑰', NULL, NULL, '3');
INSERT INTO `option_info` VALUES ('f599f6ccfc414eccaa15e6643b3491cf', 'd3fe0c31ab114261975a27ff64975279', '妙蛙种子', NULL, NULL, '3');
INSERT INTO `option_info` VALUES ('f91553517c5341c790cd552217b38a27', 'fd3c580056684faf9bd4e132d6ade57c', '3', NULL, NULL, '1');
INSERT INTO `option_info` VALUES ('f92e34a9698d484aadf6e8ca9c1c68ef', '91d0699eab4d413c964fa3a1a1ba7a3d', '1', NULL, NULL, '1');
INSERT INTO `option_info` VALUES ('faa72bc5f40f4af8b157b1c0a2eef0ec', '247322240b054665b46d8e779b22e378', '6', NULL, NULL, '3');
INSERT INTO `option_info` VALUES ('fc0e7e1f65524f06990db1ebc57e04ba', '65860d0c109a4cbfa805c1964bfd6542', '2', NULL, NULL, '2');
INSERT INTO `option_info` VALUES ('fd068fcbf40c49edbb9196d39a76eea8', '4a3b3cc63c8f4927b557316a9aaebfd9', '玫瑰', NULL, NULL, '3');
INSERT INTO `option_info` VALUES ('fdb8e19c64b3480f95579f3c9760b324', '1b03f04df7424c01b4a1000fa6eb828a', '菊花', NULL, NULL, '2');
INSERT INTO `option_info` VALUES ('fea7b36cce984feca78e77ca365d7ee5', '8bf70437edb64bebaa5d0f5c43f45783', '周义勇', NULL, NULL, '0');
INSERT INTO `option_info` VALUES ('feb42335375a4d4d88c5332c69bb4942', '8bf70437edb64bebaa5d0f5c43f45783', '吴昊', NULL, NULL, '1');

-- ----------------------------
-- Table structure for project_info
-- ----------------------------
DROP TABLE IF EXISTS `project_info`;
CREATE TABLE `project_info`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `project_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `project_content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `creation_date` datetime(0) NULL DEFAULT NULL,
  `last_update_date` datetime(0) NULL DEFAULT NULL,
  `last_updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of project_info
-- ----------------------------
INSERT INTO `project_info` VALUES ('116859b32b644c19afcb9f26008b940b', '1', 'PROJECT', '134', 'admin', '2023-06-27 15:19:50', '2023-06-27 15:19:50', 'admin');
INSERT INTO `project_info` VALUES ('f19f9b0af86246caa38f9adfcbbdf5df', '1', 'PROJECT2', '22', 'admin', '2023-06-27 21:34:11', '2023-06-27 21:34:11', 'admin');
INSERT INTO `project_info` VALUES ('1188d153ddc84fa9bf6314f8eded2d40', '14f82ac0b1394a0cb8e29edb43cea61c', 'aaa', '123', 'admin', '2023-06-27 23:45:23', '2023-06-27 23:45:23', 'admin');

-- ----------------------------
-- Table structure for question_info
-- ----------------------------
DROP TABLE IF EXISTS `question_info`;
CREATE TABLE `question_info`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `questionnaire_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `problem_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `must_answer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `order_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of question_info
-- ----------------------------
INSERT INTO `question_info` VALUES ('018cdebc67d141efb30d80ebd3a98097', '26b6db3066324f25887c24b27c7348c7', '2', '嫁给我吧', 'TRUE', '1');
INSERT INTO `question_info` VALUES ('0194c6440e5b40b09dc9d98d23d76908', '1db2f47668204531af61f2e8a18f7c18', '1', '我是谁', 'true', '0');
INSERT INTO `question_info` VALUES ('05d52f90f9d14c3889f0e6e8a97c4c05', '4a3956a1b1a14e03b12b454343b71c20', '3', '123123', 'true', '0');
INSERT INTO `question_info` VALUES ('08f1ccea12f243879e30f6a944dddb7b', 'ef8af8f6e573418fb2930fd80b82b4df', '2', '嫁给我吧', 'true', '1');
INSERT INTO `question_info` VALUES ('12ae2a91502548b3a31a9fdb0973023e', 'a4165a6ac8ed4be9816842eac6356091', '2', '嫁给我吧', 'true', '1');
INSERT INTO `question_info` VALUES ('17c2adb6c9454631b0a421ce0c090fea', '47b2b28dab054b3296a463c3d0c0b316', '1', '1', 'true', '2');
INSERT INTO `question_info` VALUES ('1821778f436d4238ae836fa8c7cbc70d', '6d336512bb044cfaa5ebfba3fb775f22', '3', '你是谁？', 'true', '2');
INSERT INTO `question_info` VALUES ('1918c75e3e5e46f5992491a922fb055a', '6236e102a8c64bfd94c9deb9ec585c76', '5', '', 'true', '3');
INSERT INTO `question_info` VALUES ('1b03f04df7424c01b4a1000fa6eb828a', '05c199dc9e8f400493f81b2bd7a57f42', '2', '嫁给我吧', 'TRUE', '1');
INSERT INTO `question_info` VALUES ('1b0778ae8ecf4ad89c6ddbf38971b2ba', '7c9af2f557b74b4cadf2a7b6b09eacd0', '2', '嫁给我吧', 'TRUE', '1');
INSERT INTO `question_info` VALUES ('1b2fcb3708274f1d82362129f215169e', '6236e102a8c64bfd94c9deb9ec585c76', '4', '123', 'true', '2');
INSERT INTO `question_info` VALUES ('23429284399b46768c6c6722ee97e82e', 'f6a3960a8466411986a0f872bd52902a', '2', '嫁给我吧', 'TRUE', '2');
INSERT INTO `question_info` VALUES ('28d5e1de8b5341c498b4369d5dbd2e68', '05c199dc9e8f400493f81b2bd7a57f42', '1', '你是谁', 'TRUE', '2');
INSERT INTO `question_info` VALUES ('2d2be8e252ab4bd3bd80afe2a7c5597d', 'cbb83ec173c94b9caf6abeefec82267c', '1', '1', 'true', '2');
INSERT INTO `question_info` VALUES ('398118ea8114414b83c8b6613008b279', '77561bb210eb44b5a85344eb85e56590', '1', '我是谁', 'true', '0');
INSERT INTO `question_info` VALUES ('3c592fde0ce8476997f0e413c1bfb42c', '6236e102a8c64bfd94c9deb9ec585c76', '3', '123', 'true', '1');
INSERT INTO `question_info` VALUES ('40f206f6fcdc46048a3777f638c3370d', 'd9a98b8013724337b13785b2fb9caa22', '1', '谁最帅', 'true', '0');
INSERT INTO `question_info` VALUES ('411c4f93567f474abaa9f80dd3933beb', '7c9af2f557b74b4cadf2a7b6b09eacd0', '1', '我是谁', 'TRUE', '0');
INSERT INTO `question_info` VALUES ('49f3db3f2f704fafa01f09ca19c38686', '05c199dc9e8f400493f81b2bd7a57f42', '1', '我是谁', 'TRUE', '0');
INSERT INTO `question_info` VALUES ('4a3b3cc63c8f4927b557316a9aaebfd9', '1db2f47668204531af61f2e8a18f7c18', '2', '嫁给我吧', 'true', '1');
INSERT INTO `question_info` VALUES ('4e619c867efc485cb5ac10ca1c7eca72', 'f6a3960a8466411986a0f872bd52902a', '1', '我是谁', 'TRUE', '1');
INSERT INTO `question_info` VALUES ('5066e452fa314b3b87215c3233dd0604', '3e43519546ac45a7942552d06ffbf867', '1', '谁最帅', 'true', '1');
INSERT INTO `question_info` VALUES ('5354701edba644c3865faa4d30ab54e6', 'b83c3c27be1a4835b77b0f51627c9171', '3', '123', 'true', '0');
INSERT INTO `question_info` VALUES ('5c65d46d22d74fe184416839ea02bf2a', '26b6db3066324f25887c24b27c7348c7', '1', '你是谁', 'TRUE', '2');
INSERT INTO `question_info` VALUES ('6a0d6d2d7f6d4cd1acae9a2b22133d67', 'f8e6f670737d4fa2931778c2a113ffe0', '2', '嫁给我吧', 'true', '1');
INSERT INTO `question_info` VALUES ('6c3d2cd1b1854c4688f0a78273ab8eab', '6d336512bb044cfaa5ebfba3fb775f22', '5', '欧吼', 'true', '4');
INSERT INTO `question_info` VALUES ('6ed0d259c5074c978d4cd61f09216956', 'dda3005700ef4e3f92018f70151d66a5', '2', '嫁给我吧', 'TRUE', '1');
INSERT INTO `question_info` VALUES ('6fe8b9e4bcde4647af076cab3d1d236a', '7e77ce40d98845b186d905e4f44f57ca', '2', '嫁给我吧', 'TRUE', '1');
INSERT INTO `question_info` VALUES ('7050c460326741acb9c92ebc8c4860ed', 'a62b499ee4ee44d99d35e5a7b3d3bf60', '1', '你是谁', 'true', '2');
INSERT INTO `question_info` VALUES ('70d06562bb464a1c8f69778a8d18b301', '26b6db3066324f25887c24b27c7348c7', '1', '我是谁', 'TRUE', '0');
INSERT INTO `question_info` VALUES ('717c58044e6d4c778bb73cf4251caf04', 'f9688581d31e4ea78da43e87f994908f', '1', '1', 'true', '2');
INSERT INTO `question_info` VALUES ('7193ca79d4dd4368beaad147ddfb4ec7', 'f9688581d31e4ea78da43e87f994908f', '2', '444', 'true', '1');
INSERT INTO `question_info` VALUES ('71b88a44fcde4ed8a8590d1ac75cdcfa', 'f8e6f670737d4fa2931778c2a113ffe0', '1', '我是谁', 'true', '0');
INSERT INTO `question_info` VALUES ('75f92266b53845d0bab53edfa94c7865', '1db2f47668204531af61f2e8a18f7c18', '1', '你是谁', 'true', '2');
INSERT INTO `question_info` VALUES ('7707041a816647d1b0a3cbb7195ae0c4', '4a3956a1b1a14e03b12b454343b71c20', '4', '1213', 'true', '1');
INSERT INTO `question_info` VALUES ('8b8f2912ba6a44369bd2654102858c0a', '6236e102a8c64bfd94c9deb9ec585c76', '2', '123', 'true', '0');
INSERT INTO `question_info` VALUES ('8bf70437edb64bebaa5d0f5c43f45783', 'ef8af8f6e573418fb2930fd80b82b4df', '1', '我是谁', 'true', '0');
INSERT INTO `question_info` VALUES ('919f6c51d1f24fa0aa9692ab9e06271b', '7e77ce40d98845b186d905e4f44f57ca', '1', '你是谁', 'TRUE', '2');
INSERT INTO `question_info` VALUES ('93dcdb045215435a95c4fb6f03bad7f5', 'a4165a6ac8ed4be9816842eac6356091', '1', '我是谁', 'true', '0');
INSERT INTO `question_info` VALUES ('963cd6616bc84435849bfc495a9416c1', 'f6a3960a8466411986a0f872bd52902a', '1', '你是谁', 'TRUE', '3');
INSERT INTO `question_info` VALUES ('974d532cb90b4f86809348727e19815e', '77561bb210eb44b5a85344eb85e56590', '1', '1', 'true', '2');
INSERT INTO `question_info` VALUES ('9b75a8c65ebc49a78e81e9bc127f39d6', 'dda3005700ef4e3f92018f70151d66a5', '1', '我是谁', 'TRUE', '0');
INSERT INTO `question_info` VALUES ('9bd5771feb6743c69fed692f559898cf', 'f9688581d31e4ea78da43e87f994908f', '1', '我是谁', 'true', '0');
INSERT INTO `question_info` VALUES ('9d5d74068dd148bcbcf994409e4337c6', '7c9af2f557b74b4cadf2a7b6b09eacd0', '1', '你是谁', 'TRUE', '2');
INSERT INTO `question_info` VALUES ('9ebe10a726154b0c87df5def380b44e4', 'b83c3c27be1a4835b77b0f51627c9171', '5', '123', 'true', '2');
INSERT INTO `question_info` VALUES ('a5ada775635a44ffb877acd5801282d9', 'f8e6f670737d4fa2931778c2a113ffe0', '1', '你是谁', 'true', '2');
INSERT INTO `question_info` VALUES ('a6e22c7550d04108b9bd9d21b9f86741', 'dda3005700ef4e3f92018f70151d66a5', '1', '你是谁', 'TRUE', '2');
INSERT INTO `question_info` VALUES ('aabd8b77fefe456c8ea2df10f82dce39', 'f6a3960a8466411986a0f872bd52902a', '1', '123', 'true', '0');
INSERT INTO `question_info` VALUES ('b2780b88305c49b0b83b671664f72afe', 'cbb83ec173c94b9caf6abeefec82267c', '2', '444', 'true', '1');
INSERT INTO `question_info` VALUES ('b3986b43de114cb4a529c3a2cbbfa1dc', '6d336512bb044cfaa5ebfba3fb775f22', '4', '谁是谁', 'true', '3');
INSERT INTO `question_info` VALUES ('b5800e5ab3424e98b7d1e67954d2f029', 'a62b499ee4ee44d99d35e5a7b3d3bf60', '2', '嫁给我吧', 'true', '1');
INSERT INTO `question_info` VALUES ('b5c4fecdcac241458251246106093b4d', 'cbb83ec173c94b9caf6abeefec82267c', '1', '我是谁', 'true', '0');
INSERT INTO `question_info` VALUES ('bbc04a9c625041448df5e0463cb9afa6', '05dbdf50e9a942809ccaa6e57a63a85e', '1', '我是谁', 'true', '0');
INSERT INTO `question_info` VALUES ('c4931cd0469d4601b482c5a017da2bf6', '3e43519546ac45a7942552d06ffbf867', '2', '周五来陪我升旗吗', 'true', '0');
INSERT INTO `question_info` VALUES ('c8a1abfbacf64b45853916454be27c5a', 'a4165a6ac8ed4be9816842eac6356091', '1', '你是谁', 'true', '2');
INSERT INTO `question_info` VALUES ('ccf28df1aa6d4888840dcaf57fcc97d6', '47b2b28dab054b3296a463c3d0c0b316', '1', '我是谁', 'true', '0');
INSERT INTO `question_info` VALUES ('d2a02346830d4b4ca6286d6b9896289f', 'a62b499ee4ee44d99d35e5a7b3d3bf60', '1', '我是谁', 'true', '0');
INSERT INTO `question_info` VALUES ('d3fe0c31ab114261975a27ff64975279', '7e77ce40d98845b186d905e4f44f57ca', '1', '我是谁', 'TRUE', '0');
INSERT INTO `question_info` VALUES ('d8e62047dfeb4edd8530a8601c1baed3', '4a3956a1b1a14e03b12b454343b71c20', '5', '2123', 'true', '2');
INSERT INTO `question_info` VALUES ('db1ff0d79c154271afc55bc6eed49038', '6d336512bb044cfaa5ebfba3fb775f22', '1', '我是谁', 'true', '0');
INSERT INTO `question_info` VALUES ('dd9a21f678f5465380ce9154d6a62c7e', 'b83c3c27be1a4835b77b0f51627c9171', '4', '123', 'true', '1');
INSERT INTO `question_info` VALUES ('e179c3dd4065427eb7be263a4f5abcc4', '05dbdf50e9a942809ccaa6e57a63a85e', '2', '嫁给我吧', 'true', '1');
INSERT INTO `question_info` VALUES ('e3aadcd1a1c741ff845cc477999241e0', '6d336512bb044cfaa5ebfba3fb775f22', '2', '你是我的，我是你的谁', 'true', '1');
INSERT INTO `question_info` VALUES ('e6a52a97236e4643b7413b5ca312b373', '05dbdf50e9a942809ccaa6e57a63a85e', '1', '你是谁', 'true', '2');
INSERT INTO `question_info` VALUES ('e9e7670672b14f06a8b617092495b46e', 'ef8af8f6e573418fb2930fd80b82b4df', '1', '你是谁', 'true', '2');
INSERT INTO `question_info` VALUES ('ea8ed91dd23943df849be40012635efe', '77561bb210eb44b5a85344eb85e56590', '2', '444', 'true', '1');
INSERT INTO `question_info` VALUES ('ecec8fa1be4a47b88dbd1385690adf60', '07052ef19b1a4a778c3406afc2c11b40', '1', '1', 'true', '0');
INSERT INTO `question_info` VALUES ('f3f4acb4e2cc4b6f908d2cbea791a490', 'efbf8c534baa4f22a327aa75d1b5b5b1', '2', '1', 'true', '0');
INSERT INTO `question_info` VALUES ('fd3c580056684faf9bd4e132d6ade57c', '47b2b28dab054b3296a463c3d0c0b316', '2', '444', 'true', '1');

-- ----------------------------
-- Table structure for questionnaire_info
-- ----------------------------
DROP TABLE IF EXISTS `questionnaire_info`;
CREATE TABLE `questionnaire_info`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `project_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `survey_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `survey_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `survey_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `start_time` datetime(0) NULL DEFAULT NULL,
  `end_time` datetime(0) NULL DEFAULT NULL,
  `template_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `release_time` datetime(0) NULL DEFAULT NULL,
  `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `times` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `group_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of questionnaire_info
-- ----------------------------
INSERT INTO `questionnaire_info` VALUES ('7c9af2f557b74b4cadf2a7b6b09eacd0', '116859b32b644c19afcb9f26008b940b', 'student', '次数', '1', '2023-06-21 08:00:00', '2023-06-29 08:00:00', NULL, NULL, '1', '1', 'student');
INSERT INTO `questionnaire_info` VALUES ('7e77ce40d98845b186d905e4f44f57ca', '116859b32b644c19afcb9f26008b940b', 'student', '范围', '11', '2023-06-17 08:00:00', '2023-06-29 08:00:00', NULL, NULL, '1', '5', 'teacher');
INSERT INTO `questionnaire_info` VALUES ('05c199dc9e8f400493f81b2bd7a57f42', '116859b32b644c19afcb9f26008b940b', 'student', '时间', '11', '2023-06-14 08:00:00', '2023-06-23 08:00:00', NULL, NULL, '1', '18', '0');
INSERT INTO `questionnaire_info` VALUES ('26b6db3066324f25887c24b27c7348c7', '116859b32b644c19afcb9f26008b940b', 'student', '测试', '说明', '2023-06-09 08:00:00', '2023-06-30 08:00:00', NULL, '2023-06-28 13:41:15', '1', '111', 'student');
INSERT INTO `questionnaire_info` VALUES ('f6a3960a8466411986a0f872bd52902a', '116859b32b644c19afcb9f26008b940b', 'student', '11111', '11111', '2023-06-08 08:00:00', '2023-06-30 08:00:00', NULL, NULL, '1', '14', '0');
INSERT INTO `questionnaire_info` VALUES ('efbf8c534baa4f22a327aa75d1b5b5b1', '116859b32b644c19afcb9f26008b940b', 'student', '2', '2', '1899-12-31 08:00:00', '1899-12-31 08:00:00', NULL, '2023-06-28 13:38:42', '0', '2', '0');
INSERT INTO `questionnaire_info` VALUES ('dda3005700ef4e3f92018f70151d66a5', '116859b32b644c19afcb9f26008b940b', 'student', '1', '1', '2023-06-01 08:00:00', '2023-07-05 08:00:00', NULL, NULL, '1', '100', '0');
INSERT INTO `questionnaire_info` VALUES ('ef8af8f6e573418fb2930fd80b82b4df', '116859b32b644c19afcb9f26008b940b', 'student', '神之问卷', '123', '1899-12-31 08:00:00', '2023-06-30 08:00:00', NULL, '2023-06-28 13:37:51', '1', '4', '0');
INSERT INTO `questionnaire_info` VALUES ('07052ef19b1a4a778c3406afc2c11b40', '116859b32b644c19afcb9f26008b940b', 'student', '111', '111', '2023-06-09 08:00:00', '2023-06-30 08:00:00', NULL, NULL, '1', '111', 'student');
INSERT INTO `questionnaire_info` VALUES ('05dbdf50e9a942809ccaa6e57a63a85e', '116859b32b644c19afcb9f26008b940b', 'student', '已结束问卷', '123', '2023-06-15 08:00:00', '2023-06-19 08:00:00', NULL, '2023-06-28 13:40:28', '0', '33', '0');
INSERT INTO `questionnaire_info` VALUES ('b83c3c27be1a4835b77b0f51627c9171', '116859b32b644c19afcb9f26008b940b', 'student', '1123', '231', '1899-12-31 08:00:00', '2023-06-14 08:00:00', NULL, NULL, '1', '123', '0');
INSERT INTO `questionnaire_info` VALUES ('4a3956a1b1a14e03b12b454343b71c20', '116859b32b644c19afcb9f26008b940b', 'student', 'ttt', 'ttt', '2023-06-16 08:00:00', '2023-07-03 08:00:00', NULL, '2023-10-17 20:33:41', '1', '231', '0');
INSERT INTO `questionnaire_info` VALUES ('d9a98b8013724337b13785b2fb9caa22', '116859b32b644c19afcb9f26008b940b', 'student', '神之问卷', '咱仨谁最帅', '2023-10-10 08:00:00', '2023-10-25 08:00:00', NULL, '2023-10-17 20:31:58', '1', '10', '0');
INSERT INTO `questionnaire_info` VALUES ('3e43519546ac45a7942552d06ffbf867', '116859b32b644c19afcb9f26008b940b', 'student', '吴昊太帅了', '谁最帅', '2023-10-10 08:00:00', '2023-10-26 08:00:00', NULL, '2023-10-17 20:40:53', '1', '11111', '0');

-- ----------------------------
-- Table structure for template_info
-- ----------------------------
DROP TABLE IF EXISTS `template_info`;
CREATE TABLE `template_info`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of template_info
-- ----------------------------

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info`  (
  `ID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `USERNAME` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `PASSWORD` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `START_TIME` datetime(0) NULL DEFAULT NULL,
  `STOP_TIME` datetime(0) NULL DEFAULT NULL,
  `STATUS` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `CREATED_BY` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `CREATION_DATE` datetime(0) NULL DEFAULT NULL,
  `LAST_UPDATE_BY` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `LAST_UPDATE_DATE` datetime(0) NULL DEFAULT NULL,
  `group` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES ('1', 'admin', '123', '2023-06-16 14:06:42', '2023-07-06 19:07:42', '1', NULL, NULL, NULL, NULL, 'student');
INSERT INTO `user_info` VALUES ('2', 'zhangsan', '123', '1899-12-31 00:06:17', '2023-06-05 00:06:00', '1', NULL, NULL, NULL, NULL, 'student');
INSERT INTO `user_info` VALUES ('d98e1766f42e428dbe0a51775e8c8a52', 'xuan', '123', '2023-10-17 17:10:10', '2023-10-25 17:10:10', '1', NULL, NULL, NULL, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
