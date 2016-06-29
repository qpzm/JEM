# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# team
Team.create(name: "금융")
Team.create(name: "컨텐츠")
Team.create(name: "환경")
Team.create(name: "사회공헌")
Team.create(name: "교육")
Team.create(name: "건강")
Team.create(name: "라이프스타일")
Team.create(name: "1인 미디어")
Team.create(name: "융합")
Team.create(name: "정보")

# user
User.create(email: "hwshan@snu.ac.kr", univ: "SNU", name: "한원섭", major: "기계항공공학부", password: "12341234", password_confirmation: "12341234", team_id: 3)
User.create(email: "hu71711@snu.ac.kr", univ: "SNU", name: "변호성", major: "기계항공공학부", password: "12341234", password_confirmation: "12341234", team_id: 1)
User.create(email: "ehdwo713@snu.ac.kr", univ: "SNU", name: "이동재", major: "기계항공공학부", password: "12341234", password_confirmation: "12341234", team_id: 7)
User.create(email: "rhkrehdgns@snu.ac.kr", univ: "SNU", name: "곽동훈", major: "전기정보공학부", password: "12341234", password_confirmation: "12341234", team_id: 1)
User.create(email: "taeho2139@snu.ac.kr", univ: "SNU", name: "오태호", major: "전기정보공학부", password: "12341234", password_confirmation: "12341234", team_id: 10)
User.create(email: "gkdjrn@naver.com", univ: "SNU", name: "장현재", major: "전기정보공학부", password: "12341234", password_confirmation: "12341234", team_id: 8)
User.create(email: "shwoo93@snu.ac.kr", univ: "SNU", name: "우상현", major: "전기정보공학부", password: "12341234", password_confirmation: "12341234", team_id: 9)
User.create(email: "jh800222@gmail.com", univ: "SNU", name: "강정현", major: "컴퓨터공학부", password: "12341234", password_confirmation: "12341234", team_id: 7)
User.create(email: "grey_pastor@naver.com", univ: "SNU", name: "남형걸", major: "컴퓨터공학부", password: "12341234", password_confirmation: "12341234", team_id: 10)
User.create(email: "lizzybeth95@gmail.com", univ: "SNU", name: "김지수", major: "화학생물공학부", password: "12341234", password_confirmation: "12341234", team_id: 8)
User.create(email: "scymed94@snu.ac.kr", univ: "SNU", name: "박영규", major: "화학생물공학부", password: "12341234", password_confirmation: "12341234", team_id: 2)
User.create(email: "nm5005@snu.ac.kr", univ: "SNU", name: "조정원", major: "건축학과", password: "12341234", password_confirmation: "12341234", team_id: 9)
User.create(email: "kimkyungdo08@snu.ac.kr", univ: "SNU", name: "김경도", major: "재료공학부", password: "12341234", password_confirmation: "12341234", team_id: 10)
User.create(email: "jon7575@hanmail.net", univ: "SNU", name: "소민섭", major: "산업공학과", password: "12341234", password_confirmation: "12341234", team_id: 4)
User.create(email: "lhm1442@snu.ac.kr", univ: "SNU", name: "이현민", major: "경제학부", password: "12341234", password_confirmation: "12341234", team_id: 10)
User.create(email: "reflection@kaist.ac.kr", univ: "KAIST", name: "김휘수", major: "전산학부", password: "12341234", password_confirmation: "12341234", team_id: 5)
User.create(email: "newvictory@kaist.ac.kr", univ: "KAIST", name: "이상헌", major: "원자력및양자공학과", password: "12341234", password_confirmation: "12341234", team_id: 3)
User.create(email: "kkh0313@kaist.ac.kr", univ: "KAIST", name: "김강현", major: "전기및전자공학부", password: "12341234", password_confirmation: "12341234", team_id: 8)
User.create(email: "banana8881@kaist.ac.kr", univ: "KAIST", name: "김두영", major: "기계공학과", password: "12341234", password_confirmation: "12341234", team_id: 4)
User.create(email: "sjh721@kaist.ac.kr", univ: "KAIST", name: "신종현", major: "전기및전자공학부", password: "12341234", password_confirmation: "12341234", team_id: 8)
User.create(email: "247@business.kaist.ac.kr", univ: "KAIST", name: "이윤석", major: "경영공학부", password: "12341234", password_confirmation: "12341234", team_id: 3)
User.create(email: "ymlee1126@business.kaist.ac.kr", univ: "KAIST", name: "이유미", major: "사회적기업가 MBA", password: "12341234", password_confirmation: "12341234", team_id: 5)
User.create(email: "vobfood@business.kaist.ac.kr", univ: "KAIST", name: "김석근", major: "테크노경영 MBA", password: "12341234", password_confirmation: "12341234", team_id: 4)
User.create(email: "sq.lee@business.kaist.ac.kr", univ: "KAIST", name: "이승규", major: "테크노경영 MBA", password: "12341234", password_confirmation: "12341234", team_id: 1)
User.create(email: "dragonlims@business.kaist.ac.kr", univ: "KAIST", name: "최용림", major: "테크노경영 MBA", password: "12341234", password_confirmation: "12341234", team_id: 2)
User.create(email: "euirakchoi@business.kaist.ac.kr", univ: "KAIST", name: "최의락", major: "테크노경영 MBA", password: "12341234", password_confirmation: "12341234", team_id: 3)
User.create(email: "jaychoi@postech.ac.kr", univ: "POSTECH", name: "최진환", major: "컴퓨터공학과", password: "12341234", password_confirmation: "12341234", team_id: 7)
User.create(email: "honeyjam@postech.ac.kr", univ: "POSTECH", name: "박현준", major: "창의IT융합공학과", password: "12341234", password_confirmation: "12341234", team_id: 2)
User.create(email: "hellestern@postech.ac.kr", univ: "POSTECH", name: "박병규", major: "컴퓨터공학과", password: "12341234", password_confirmation: "12341234", team_id: 1)
User.create(email: "seongtae0205@postech.ac.kr", univ: "POSTECH", name: "김성태", major: "생명과학과", password: "12341234", password_confirmation: "12341234", team_id: 9)
User.create(email: "yejink@postech.ac.kr", univ: "POSTECH", name: "김예진", major: "산업경영공학과", password: "12341234", password_confirmation: "12341234", team_id: 6)
User.create(email: "kgw6602@postech.ac.kr", univ: "POSTECH", name: "김근우", major: "컴퓨터공학과", password: "12341234", password_confirmation: "12341234", team_id: 6)
User.create(email: "pjn0428@postech.ac.kr", univ: "POSTECH", name: "박정남", major: "컴퓨터공학과", password: "12341234", password_confirmation: "12341234", team_id: 6)
User.create(email: "seongjuhong@postech.ac.kr", univ: "POSTECH", name: "홍성주", major: "기계공학과", password: "12341234", password_confirmation: "12341234", team_id: 9)
User.create(email: "osy4997@postech.ac.kr", univ: "POSTECH", name: "오세영", major: "컴퓨터공학과", password: "12341234", password_confirmation: "12341234", team_id: 6)
User.create(email: "mgh1206@postech.ac.kr", univ: "POSTECH", name: "문건호", major: "산업경영공학과", password: "12341234", password_confirmation: "12341234", team_id: 2)
User.create(email: "ch61park@postech.ac.kr", univ: "POSTECH", name: "김용구", major: "엔지니어링대학원", password: "12341234", password_confirmation: "12341234", team_id: 5)
User.create(email: "bsh9716@postech.ac.kr", univ: "POSTECH", name: "방상훈", major: "기계공학과", password: "12341234", password_confirmation: "12341234", team_id: 7)
User.create(email: "dlf0325@postech.ac.kr", univ: "POSTECH", name: "황일환", major: "컴퓨터공학과", password: "12341234", password_confirmation: "12341234", team_id: 5)
User.create(email: "dohyeokkim@postech.ac.kr", univ: "POSTECH", name: "김도혁", major: "컴퓨터공학과", password: "12341234", password_confirmation: "12341234", team_id: 4)

# card
1.upto(40) do |i|
  1.upto(10) do
    Card.create(user_id: i, team_id: User.find(i).team_id)
  end
end

# vote
1.upto(40) do |i|
  Vote.create(user_id: i)
end
