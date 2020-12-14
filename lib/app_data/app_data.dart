import 'package:profile_app/model/profile.dart';
import 'package:profile_app/model/project.dart';

class AppData {
  static List<Profile> profiles = [
    Profile(
      imageUrl: '',
      title: 'stonybean',
      subtitle: 'Android App Developer (4th year)',
      totalProject: '',
    ),
  ];
  static List<Project> projects = [
    Project(
        id: 1,
        imageUrl: "assets/images/l2me_192.png",
        thumbnailUrl: "assets/images/l2me_192.png",
        title: "리슨투미 서버 유지 보수 (B2B)",
        startDate: "2020.09",
        endDate: "2020.12",
        details:
            "✔️ JDK11, Tomcat 9.0, Oracle DB, Eclipse\n✔️ Java\n✔ 리슨투미 서버 런타임/관리자 유지 보수\n✔ 고객사 요구사항 처리 및 버그 수정\n✔ Application 빌드 및 배포"),
    Project(
        id: 2,
        imageUrl: "assets/images/l2me_192.png",
        thumbnailUrl: "assets/images/l2me_192.png",
        title: "리슨투미 안드로이드 앱 개발 (B2B)",
        startDate: "2020.02",
        endDate: "2020.11",
        details:
            "✔ Kotlin\n✔ 조직 내 성폭력, 부조리 등의 대응을 위한 기록, 신고, 관리 서비스\n✔ 전체 기능 개발 (사용자 등록, 기록, 신고 등)\n✔ RESTful API 통신 처리 (OkHttp3)\n✔ 고객사 지속적 확장 중"
            "\n✔\n\t\t\t\t<출시 이력︎>"
            "\n\t\t\t\t\t• 한전 KPS (2020-04)"
            "\n\t\t\t\t\t• 한국서부발전 (2020-05)"
            "\n\t\t\t\t\t• 한국조폐공사 (2020-06)"
            "\n\t\t\t\t\t• 한국중부발전 (2020-09)"
            "\n\t\t\t\t\t• 코스콤 (2020-09)"
            "\n\t\t\t\t\t• 한전KDN (2020-11)"),
    Project(
        id: 3,
        imageUrl: "assets/images/cafe_144.png",
        thumbnailUrl: "assets/images/cafe_144.png",
        title: "UC Cafe 메신저(유클릭) 대화방 이모티콘 개선 (iOS)",
        startDate: "2020.06",
        endDate: "2020.08",
        details:
            "✔ Swift (Swift4)\n✔ 대화방 내 이모티콘 리스트, 이모티콘 다운로드(서버파일), 미리보기 등 개선 작업\n✔ 파일 다운로드, 이미지 처리, SQLite 활용"),
    Project(
        id: 4,
        imageUrl: "assets/images/cafe_144.png",
        thumbnailUrl: "assets/images/cafe_144.png",
        title: "UC Cafe 메신저(유클릭) 회의방 솔루션 개발",
        startDate: "2019.01",
        endDate: "2019.12",
        details:
            "✔ Android Java\n✔ 기술연구소 과제\n✔ 톡게시판 전반적 디자인 및 스토리보드 작성\n✔ 필요 기능 개발(투표, 일정, 게시글 등)\n✔ TCP/IP Socket 통신"),
    Project(
        id: 5,
        imageUrl: "assets/images/seocho_144.png",
        thumbnailUrl: "assets/images/seocho_144.png",
        title: "서초구청 모바일 주소록 구축 (B2B)",
        startDate: "2018.08",
        endDate: "2019.01",
        details:
            "✔ Android Java\n✔ 고객사 사용자 주소록 앱\n✔ 서버 인사 연동을 통한 조직도 표출, 개인 프로필, MCID 기능 추가 개발\n✔ TCP/IP Socket 통신"),
    Project(
        id: 6,
        imageUrl: "assets/images/time_192.png",
        thumbnailUrl: "assets/images/time_192.png",
        title: "타임교육 메신저 개발 (B2C)",
        startDate: "2018.04",
        endDate: "2018.10",
        details:
            "✔ Android Java\n✔ 강사, 학부모, 학생 등이 이용하는 SNS 앱\n✔ 친구 목록, 토픽, 채팅방 등 전반적 개발 참여\n✔ TCP/IP Socket 통신"),
    Project(
        id: 7,
        imageUrl: "assets/images/hanil_192.png",
        thumbnailUrl: "assets/images/hanil_192.png",
        title: "한일시멘트 직원용 메신저 구축 (B2B)",
        startDate: "2017.08",
        endDate: "2018.01",
        details:
            "✔ Android Java\n✔ 고객사 커스터마이징 요구 처리\n✔ 로그인 기능 수정 (TCP/IP -> RESTful API, Retrofit2 + OkHttp3)\n✔ TCP/IP Socket 통신"),
    Project(
        id: 8,
        imageUrl: "assets/images/nh_192.png",
        thumbnailUrl: "assets/images/nh_192.png",
        title: "NH 투자증권 직원용 메신저 추가 개발 (B2B)",
        startDate: "2017.06",
        endDate: "2017.12",
        details: "✔ Android Java\n"
            "✔ 고객사 추가 요구사항 처리\n"
            "✔ Push 기능 개선(Background TCP/IP -> FCM)\n"
            "✔ TCP/IP Socket 통신"),
    Project(
        id: 9,
        imageUrl: "assets/images/nh_192.png",
        thumbnailUrl: "assets/images/nh_192.png",
        title: "NH 투자증권 직원용 메신저 구축 (B2B)",
        startDate: "2016.12",
        endDate: "2017.02",
        details:
            "✔ Android Java\n✔ 고객사 커스터마이징 요구사항 처리\n✔ 직원 검색 신규 기능 추가\n✔ TCP/IP Socket 통신"),
  ];
}
