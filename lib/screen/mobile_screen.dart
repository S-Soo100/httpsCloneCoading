import 'dart:html';

import 'package:flutter/material.dart';
import 'package:responsive_http_clone/widget/banner_image_widget.dart';
import 'package:responsive_http_clone/widget/footer_list_widget.dart';
import 'package:responsive_http_clone/widget/res_footer_widget.dart';
import 'package:responsive_http_clone/widget/sub_menu_box_widget.dart';
import 'package:responsive_http_clone/widget/res_header_widget.dart';

class MobileScreen extends StatelessWidget {
  const MobileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double resWidth = MediaQuery.of(context).size.width.toDouble();
    double smallMobileWidth = 540;
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          WebHeader(
            width: resWidth,
          ),
          MobileBannerImageWidget(
              image:
                  'https://img-prod-cms-rt-microsoft-com.akamaized.net/cms/api/am/imageFileData/RWKCAD?ver=7119&q=0&m=8&h=431&w=767&b=%23FFFFFFFF&l=f&x=1016&y=255&s=1979&d=1112&aim=true',
              multibanner: true,
              title: 'Microsoft 365',
              dialog:
                  '하나의 편리한 구독으로 프리미엄 Office 앱, 추가 클라우드 저장소, 고급 보안 등을 얻을 수 있습니다.',
              width: resWidth,
              buttonText: '지금 쇼핑하기 '),
          SizedBox(
            height: 48,
          ),
          Container(
            width: resWidth * 0.9,
            // width: resWidth,
            child: Column(children: [
              Container(
                height: 48,
                child: Row(
                  children: [
                    Image.network(
                      'https://img-prod-cms-rt-microsoft-com.akamaized.net/cms/api/am/imageFileData/RE4sQDc?ver=30c2&q=90&m=6&h=40&w=40&b=%23FFFFFFFF&l=f&o=t&aim=true',
                      width: 20,
                      height: 20,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '내게 맞는 Microsof 365 선택하기',
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                    )
                  ],
                ),
              ),
              Container(
                height: 48,
                child: Row(
                  children: [
                    Image.network(
                      'https://img-prod-cms-rt-microsoft-com.akamaized.net/cms/api/am/imageFileData/RE4pndL?ver=5217&q=90&m=6&h=40&w=40&b=%23FFFFFFFF&l=f&o=t&aim=true',
                      width: 20,
                      height: 20,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Surface 디바이스 쇼핑하기',
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                    )
                  ],
                ),
              ),
              Container(
                height: 48,
                child: Row(
                  children: [
                    Image.network(
                      'https://img-prod-cms-rt-microsoft-com.akamaized.net/cms/api/am/imageFileData/RWWl29?ver=addd&q=90&m=6&h=40&w=40&b=%23FFFFFFFF&l=f&o=t&aim=true',
                      width: 20,
                      height: 20,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Xbox 쇼핑',
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                    )
                  ],
                ),
              ),
              Container(
                height: 48,
                child: Row(
                  children: [
                    Image.network(
                      'https://img-prod-cms-rt-microsoft-com.akamaized.net/cms/api/am/imageFileData/RE4sQDc?ver=30c2&q=90&m=6&h=40&w=40&b=%23FFFFFFFF&l=f&o=t&aim=true',
                      width: 20,
                      height: 20,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Windows 11 받기',
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                    )
                  ],
                ),
              ),
            ]),
          ),
          SizedBox(
            height: 40,
          ),
          resWidth <= smallMobileWidth
              ? _smallMobileSubMenu(resWidth)
              : _bigMobileSubMenu(resWidth),
          SizedBox(
            height: 72,
          ),
          MobileBannerImageWidget(
              image:
                  'https://img-prod-cms-rt-microsoft-com.akamaized.net/cms/api/am/imageFileData/RE4RBHW?ver=a523&q=0&m=8&h=431&w=767&b=%23FFFFFFFF&l=f&x=1131&y=919&s=767&d=431&aim=true',
              multibanner: false,
              width: resWidth,
              title: 'PC Game Pass',
              dialog:
                  '100개 이상의 멋진 게임과 EA Play가 기다립니다. 단 1000원으로 첫 달을 이용하세요. 신규 구독자만 사용할 수 있는 혜택입니다.',
              buttonText: '지금 가입하기 ',
              whiteMode: true),
          SizedBox(
            height: 54,
          ),
          Container(
            width: resWidth * 0.9,
            alignment: Alignment.centerLeft,
            child: Text(
              '비즈니스용',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          resWidth <= smallMobileWidth
              ? _smallMobileSubBiz(resWidth)
              : _bigMobileSubBiz(resWidth),
          Container(
            alignment: AlignmentDirectional.centerStart,
            width: resWidth * 0.9,
            height: 150,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Microsof 팔로우'),
                SizedBox(
                  width: 16,
                ),
                Container(
                  color: Colors.blue,
                  width: 32,
                  height: 32,
                ),
                SizedBox(
                  width: 12,
                ),
                Container(
                  color: Colors.blue,
                  width: 32,
                  height: 32,
                ),
              ],
            ),
          ),
          Container(
            width: resWidth,
            color: Colors.grey[200],
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 40),
                  width: resWidth * 0.95,
                  height: resWidth <= smallMobileWidth ? 800 : 340,
                  child: resWidth <= smallMobileWidth
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            FooterListWidget(list: const [
                              '새로운 기능',
                              'Microsoft 365',
                              'Surface Pro X',
                              'Surface Pro 7',
                              'Surface Laptop 3',
                              'Surface Go',
                              'Windows 11 앱(238K)'
                            ]),
                            FooterListWidget(list: const [
                              'Microsoft Store	',
                              '계정 프로필	',
                              '다운로드 센터	',
                              'Microsoft Store 지원	',
                              '반품/환불	',
                              '주문 추적	',
                            ]),
                            FooterListWidget(list: const [
                              '교육	',
                              'Microsoft Education	',
                              '교육용 장치	',
                              '교육용 Microsoft Teams	',
                              'Microsoft 365 Education	',
                              'Office Education	',
                              '교육자 트레이닝 및 개발	',
                              '학생 및 학부모용 특가 혜택	',
                              'Azure for students	',
                            ])
                          ],
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            FooterListWidget(list: const [
                              '새로운 기능',
                              'Microsoft 365',
                              'Surface Pro X',
                              'Surface Pro 7',
                              'Surface Laptop 3',
                              'Surface Go',
                              'Windows 11 앱(238K)'
                            ]),
                            FooterListWidget(list: const [
                              'Microsoft Store	',
                              '계정 프로필	',
                              '다운로드 센터	',
                              'Microsoft Store 지원	',
                              '반품/환불	',
                              '주문 추적	',
                            ]),
                            FooterListWidget(list: const [
                              '교육	',
                              'Microsoft Education	',
                              '교육용 장치	',
                              '교육용 Microsoft Teams	',
                              'Microsoft 365 Education	',
                              'Office Education	',
                              '교육자 트레이닝 및 개발	',
                              '학생 및 학부모용 특가 혜택	',
                              'Azure for students	',
                            ])
                          ],
                        ),
                ),
                Container(
                  padding: resWidth <= smallMobileWidth
                      ? EdgeInsets.only(top: 20)
                      : EdgeInsets.only(top: 40),
                  width: resWidth * 0.95,
                  height: resWidth <= smallMobileWidth ? 920 : 340,
                  child: resWidth <= smallMobileWidth
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            FooterListWidget(list: const [
                              '기업 고객	',
                              'Microsoft Cloud	',
                              'Microsoft Security	',
                              'Azure	',
                              'Dynamics 365	',
                              'Microsoft 365	',
                              'Microsoft Advertising	',
                              'Microsoft Industry	',
                              'Microsoft Teams	',
                            ]),
                            FooterListWidget(list: const [
                              '개발자 및 IT	',
                              '개발자 센터	',
                              '설명서	',
                              'Microsoft Learn	',
                              'Microsoft Tech 커뮤니티	',
                              'Azure Marketplace	',
                              'AppSource	',
                              'Microsoft Power Platform	',
                              'Visual Studio	',
                            ]),
                            FooterListWidget(list: const [
                              '회사	',
                              '채용 정보	',
                              'Microsoft 정보	',
                              '회사 뉴스	',
                              'Microsoft 개인 정보 보호	',
                              '투자자	',
                              '지속 가능성	',
                            ])
                          ],
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            FooterListWidget(list: const [
                              '기업 고객	',
                              'Microsoft Cloud	',
                              'Microsoft Security	',
                              'Azure	',
                              'Dynamics 365	',
                              'Microsoft 365	',
                              'Microsoft Advertising	',
                              'Microsoft Industry	',
                              'Microsoft Teams	',
                            ]),
                            FooterListWidget(list: const [
                              '개발자 및 IT	',
                              '개발자 센터	',
                              '설명서	',
                              'Microsoft Learn	',
                              'Microsoft Tech 커뮤니티	',
                              'Azure Marketplace	',
                              'AppSource	',
                              'Microsoft Power Platform	',
                              'Visual Studio	',
                            ]),
                            FooterListWidget(list: const [
                              '회사	',
                              '채용 정보	',
                              'Microsoft 정보	',
                              '회사 뉴스	',
                              'Microsoft 개인 정보 보호	',
                              '투자자	',
                              '지속 가능성	',
                            ])
                          ],
                        ),
                ),
                ResFooterWidget(
                  resWidth: resWidth * 0.95,
                  width: resWidth * 0.95,
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }

  Column _smallMobileSubMenu(double resWidth) {
    return Column(
      children: [
        SmallMobileSubMenu(
            image:
                'https://img-prod-cms-rt-microsoft-com.akamaized.net/cms/api/am/imageFileData/RWAshJ?ver=1e8d&q=90&m=6&h=276&w=494&b=%23FFFFFFFF&l=f&o=t&aim=true',
            title: 'Surface Laptop 4',
            dialog: '매끈한 초박형 디자인, 멀티태스킹의 속도, 향상된 성능으로 모든 요구 해결',
            width: resWidth * 0.9,
            isNew: false,
            buttonText: '지금 쇼핑하기'),
        SizedBox(
          height: 20,
        ),
        SmallMobileSubMenu(
            image:
                'https://img-prod-cms-rt-microsoft-com.akamaized.net/cms/api/am/imageFileData/RWKCAh?ver=8ec7&q=90&m=6&h=276&w=494&b=%23FFFFFFFF&l=f&o=t&aim=true',
            title: 'Surface Laptop Studio',
            dialog:
                '최고의 성능을 제공하는 Surface Laptop으로 창의력을 마음껏 발휘하세요. 이제 Windows 11과 함께 제공됩니다.',
            width: resWidth * 0.9,
            buttonText: '지금 쇼핑하기',
            isNew: true),
        SizedBox(
          height: 20,
        ),
        SmallMobileSubMenu(
            image:
                'https://img-prod-cms-rt-microsoft-com.akamaized.net/cms/api/am/imageFileData/RE4rzE2?ver=aa0b&q=90&m=6&h=276&w=494&b=%23FFFFFFFF&l=f&o=t&aim=true',
            title: 'Microsoft Edge',
            dialog:
                '브라우저를 사용하는 동안 더 강력한 개인 정보 보호, 생산성 향상 및 더 많은 가치를 제공하는 세계적 수준의 성능.',
            width: resWidth * 0.9,
            isNew: false,
            buttonText: '지금 쇼핑하기'),
        SizedBox(
          height: 20,
        ),
        SmallMobileSubMenu(
            image:
                'https://img-prod-cms-rt-microsoft-com.akamaized.net/cms/api/am/imageFileData/REGxSz?ver=5bf8&q=90&m=6&h=276&w=494&b=%23FFFFFFFF&l=f&o=t&aim=true',
            title: 'OneNote',
            dialog: '일상과 메모를 정리하세요.',
            width: resWidth * 0.9,
            isNew: false,
            buttonText: '지금 쇼핑하기'),
      ],
    );
  }

  Column _bigMobileSubMenu(double resWidth) {
    return Column(
      children: [
        SizedBox(
          width: resWidth * 0.9,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SubMenuBoxWidget(
                  image:
                      'https://img-prod-cms-rt-microsoft-com.akamaized.net/cms/api/am/imageFileData/RWAshJ?ver=1e8d&q=90&m=6&h=201&w=358&b=%23FFFFFFFF&l=f&o=t&aim=true',
                  title: 'Surface Laptop 4',
                  dialog: '매끈한 초박형 디자인, 멀티태스킹의 속\n도, 향상된 성능으로 모든 요구 해결',
                  width: (resWidth / 2),
                  isNew: false,
                  buttonText: '지금 쇼핑하기'),
              SizedBox(
                width: 20,
              ),
              SubMenuBoxWidget(
                  image:
                      'https://img-prod-cms-rt-microsoft-com.akamaized.net/cms/api/am/imageFileData/RWKCAh?ver=8ec7&q=90&m=6&h=201&w=358&b=%23FFFFFFFF&l=f&o=t&aim=true',
                  title: 'Surface Laptop Studio',
                  dialog:
                      '최고의 성능을 제공하는 Surface Laptop\n으로 창의력을 마음껏 발휘하세요. 이제\nWindows 11과 함께 제공됩니다.',
                  width: (resWidth / 2),
                  buttonText: '지금 쇼핑하기',
                  isNew: true),
            ],
          ),
        ),
        SizedBox(
          height: 50,
        ),
        SizedBox(
          width: resWidth * 0.9,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SubMenuBoxWidget(
                  image:
                      'https://img-prod-cms-rt-microsoft-com.akamaized.net/cms/api/am/imageFileData/RE4rzE2?ver=aa0b&q=90&m=6&h=201&w=358&b=%23FFFFFFFF&l=f&o=t&aim=true',
                  title: 'Microsoft Edge',
                  dialog:
                      '브라우저를 사용하는 동안 더 강력한 개\n인 정보 보호, 생산성 향상 및 더 많은 가\n치를 제공하는 세계적 수준의 성능.',
                  width: (resWidth / 2),
                  isNew: false,
                  buttonText: '지금 쇼핑하기'),
              SizedBox(
                width: 20,
              ),
              SubMenuBoxWidget(
                  image:
                      'https://img-prod-cms-rt-microsoft-com.akamaized.net/cms/api/am/imageFileData/REGxSz?ver=5bf8&q=90&m=6&h=201&w=358&b=%23FFFFFFFF&l=f&o=t&aim=true',
                  title: 'OneNote',
                  dialog: '일상과 메모를 정리하세요.',
                  width: (resWidth / 2),
                  isNew: false,
                  buttonText: '지금 쇼핑하기'),
            ],
          ),
        ),
      ],
    );
  }

  Column _smallMobileSubBiz(double resWidth) {
    return Column(
      children: [
        SmallMobileSubMenu(
            image:
                'https://img-prod-cms-rt-microsoft-com.akamaized.net/cms/api/am/imageFileData/RWKtKJ?ver=2e57&q=90&m=6&h=276&w=494&b=%23FFFFFFFF&l=f&o=t&aim=true',
            title: '기업용 Surface Pro 8',
            dialog: '13인치 화면에서 전례 없는 수준의 성능과 다기능성을 누리세요. Windows 11과 함께 제공됩니다.',
            width: resWidth * 0.9,
            isNew: true,
            buttonText: '지금 쇼핑하기'),
        SizedBox(
          height: 20,
        ),
        SmallMobileSubMenu(
            image:
                'https://img-prod-cms-rt-microsoft-com.akamaized.net/cms/api/am/imageFileData/RWLJ3u?ver=7dcf&q=90&m=6&h=276&w=494&b=%23FFFFFFFF&l=f&o=t&x=755&y=404&aim=true',
            title: '무료 Microsoft Teams 받기',
            dialog: '온라인 회의, 채팅 및 공유 클라우드 저장소를 모두 한곳에서 만나보세요.',
            width: resWidth * 0.9,
            isNew: false,
            buttonText: '무료로 가입하기'),
        SizedBox(
          height: 20,
        ),
        SmallMobileSubMenu(
            image:
                'https://img-prod-cms-rt-microsoft-com.akamaized.net/cms/api/am/imageFileData/RE4E4rT?ver=2072&q=90&m=6&h=276&w=494&b=%23FFFFFFFF&l=f&o=t&aim=true',
            title: '비즈니스용 Microsoft 365',
            dialog: '생산성, 연결 및 보안을 위한 강력한 앱들을 통해 계속 한발 앞서가세요.',
            width: resWidth * 0.9,
            isNew: false,
            buttonText: '지금 쇼핑하기'),
        SizedBox(
          height: 20,
        ),
        SmallMobileSubMenu(
            image:
                'https://img-prod-cms-rt-microsoft-com.akamaized.net/cms/api/am/imageFileData/RWMGbF?ver=ecec&q=90&m=6&h=276&w=494&b=%23FFFFFFFF&l=f&o=t&aim=true',
            title: '비즈니스용 Windows 11 출시',
            dialog:
                '하이브리드 작업에 적합한 설계. 직원들을 위한 강력한 성능. IT 팀을 위한 일관성. 모두를 위한 보안.',
            width: resWidth * 0.9,
            isNew: false,
            buttonText: '자세히 보기'),
      ],
    );
  }

  Column _bigMobileSubBiz(double resWidth) {
    return Column(
      children: [
        SizedBox(
          width: resWidth * 0.9,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SubMenuBoxWidget(
                  image:
                      'https://img-prod-cms-rt-microsoft-com.akamaized.net/cms/api/am/imageFileData/RWKtKJ?ver=2e57&q=90&m=6&h=201&w=358&b=%23FFFFFFFF&l=f&o=t&aim=true',
                  title: '기업용 Surface Pro 8',
                  dialog:
                      '13인치 화면에서 전례 없는 수준의 성능과 다기능성을 누리세요. Windows 11과 함께 제공됩니다.',
                  width: (resWidth / 2),
                  isNew: true,
                  buttonText: '지금 쇼핑하기'),
              SizedBox(
                width: 20,
              ),
              SubMenuBoxWidget(
                  image:
                      'https://img-prod-cms-rt-microsoft-com.akamaized.net/cms/api/am/imageFileData/RWLJ3u?ver=7dcf&q=90&m=6&h=201&w=358&b=%23FFFFFFFF&l=f&o=t&x=755&y=404&aim=true',
                  title: '무료 Microsoft Teams 받기',
                  dialog: '온라인 회의, 채팅 및 공유 클라우드 저장소를 모두 한곳에서 만나보세요.',
                  width: (resWidth / 2),
                  isNew: false,
                  buttonText: '무료로 가입하기'),
            ],
          ),
        ),
        SizedBox(
          height: 32,
        ),
        SizedBox(
          width: resWidth * 0.9,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SubMenuBoxWidget(
                  image:
                      'https://img-prod-cms-rt-microsoft-com.akamaized.net/cms/api/am/imageFileData/RE4E4rT?ver=2072&q=90&m=6&h=201&w=358&b=%23FFFFFFFF&l=f&o=t&aim=true',
                  title: '비즈니스용 Microsoft 365',
                  dialog: '생산성, 연결 및 보안을 위한 강력한 앱들을 통해 계속 한발 앞서가세요.',
                  width: (resWidth / 2),
                  isNew: false,
                  buttonText: '지금 쇼핑하기'),
              SizedBox(
                width: 20,
              ),
              SubMenuBoxWidget(
                  image:
                      'https://img-prod-cms-rt-microsoft-com.akamaized.net/cms/api/am/imageFileData/REGxSz?ver=5bf8&q=90&m=6&h=201&w=358&b=%23FFFFFFFF&l=f&o=t&aim=true',
                  title: '비즈니스용 Windows 11 출시',
                  dialog:
                      '하이브리드 작업에 적합한 설계. 직원들을 위한 강력한 성능. IT 팀을 위한 일관성. 모두를 위한 보안.',
                  width: (resWidth / 2),
                  isNew: false,
                  buttonText: '자세히 보기'),
            ],
          ),
        ),
      ],
    );
  }
}
