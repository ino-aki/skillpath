# 既存のデータを削除
Comment.destroy_all
Qualification.delete_all

# 初期データ
Qualification.create([
  {
    name: 'ITパスポート試験 (iパス)',
    official_url: 'https://www.ipa.go.jp/',
    exam_info_url: 'https://www.ipa.go.jp/shiken/kubun/ip.html',
    exam_fee: '7,500円(税込)',
    study_hours: 180,
    source_url: 'https://www.tac-school.co.jp/kouza_joho/joho_ip/ip_study_time.html'
  },
  { name: '資格1', official_url: 'https://example.com/1', exam_info_url: 'https://example.com/exam-info/1', exam_fee: '10,000円', study_hours: 150, source_url: 'https://example.com/study-guide/1' },
  { name: '資格2', official_url: 'https://example.com/2', exam_info_url: 'https://example.com/exam-info/2', exam_fee: '15,000円', study_hours: 180, source_url: 'https://example.com/study-guide/2' },
  { name: '資格3', official_url: 'https://example.com/3', exam_info_url: 'https://example.com/exam-info/3', exam_fee: '12,000円', study_hours: 160, source_url: 'https://example.com/study-guide/3' },
  { name: '資格4', official_url: 'https://example.com/4', exam_info_url: 'https://example.com/exam-info/4', exam_fee: '9,000円', study_hours: 140, source_url: 'https://example.com/study-guide/4' },
  { name: '資格5', official_url: 'https://example.com/5', exam_info_url: 'https://example.com/exam-info/5', exam_fee: '11,000円', study_hours: 170, source_url: 'https://example.com/study-guide/5' },
  { name: '資格6', official_url: 'https://example.com/6', exam_info_url: 'https://example.com/exam-info/6', exam_fee: '14,000円', study_hours: 190, source_url: 'https://example.com/study-guide/6' },
  { name: '資格7', official_url: 'https://example.com/7', exam_info_url: 'https://example.com/exam-info/7', exam_fee: '13,000円', study_hours: 180, source_url: 'https://example.com/study-guide/7' },
  { name: '資格8', official_url: 'https://example.com/8', exam_info_url: 'https://example.com/exam-info/8', exam_fee: '10,000円', study_hours: 150, source_url: 'https://example.com/study-guide/8' },
  { name: '資格9', official_url: 'https://example.com/9', exam_info_url: 'https://example.com/exam-info/9', exam_fee: '12,000円', study_hours: 160, source_url: 'https://example.com/study-guide/9' },
  { name: '資格10', official_url: 'https://example.com/10', exam_info_url: 'https://example.com/exam-info/10', exam_fee: '11,000円', study_hours: 170, source_url: 'https://example.com/study-guide/10' },
  { name: '資格11', official_url: 'https://example.com/11', exam_info_url: 'https://example.com/exam-info/11', exam_fee: '15,000円', study_hours: 190, source_url: 'https://example.com/study-guide/11' },
  { name: '資格12', official_url: 'https://example.com/12', exam_info_url: 'https://example.com/exam-info/12', exam_fee: '9,000円', study_hours: 140, source_url: 'https://example.com/study-guide/12' },
  { name: '資格13', official_url: 'https://example.com/13', exam_info_url: 'https://example.com/exam-info/13', exam_fee: '13,000円', study_hours: 180, source_url: 'https://example.com/study-guide/13' },
  { name: '資格14', official_url: 'https://example.com/14', exam_info_url: 'https://example.com/exam-info/14', exam_fee: '10,000円', study_hours: 150, source_url: 'https://example.com/study-guide/14' },
  { name: '資格15', official_url: 'https://example.com/15', exam_info_url: 'https://example.com/exam-info/15', exam_fee: '12,000円', study_hours: 160, source_url: 'https://example.com/study-guide/15' },
  { name: '資格16', official_url: 'https://example.com/16', exam_info_url: 'https://example.com/exam-info/16', exam_fee: '11,000円', study_hours: 170, source_url: 'https://example.com/study-guide/16' },
  { name: '資格17', official_url: 'https://example.com/17', exam_info_url: 'https://example.com/exam-info/17', exam_fee: '14,000円', study_hours: 190, source_url: 'https://example.com/study-guide/17' },
  { name: '資格18', official_url: 'https://example.com/18', exam_info_url: 'https://example.com/exam-info/18', exam_fee: '9,000円', study_hours: 140, source_url: 'https://example.com/study-guide/18' },
  { name: '資格19', official_url: 'https://example.com/19', exam_info_url: 'https://example.com/exam-info/19', exam_fee: '13,000円', study_hours: 180, source_url: 'https://example.com/study-guide/19' },
  { name: '資格20', official_url: 'https://example.com/20', exam_info_url: 'https://example.com/exam-info/20', exam_fee: '10,000円', study_hours: 150, source_url: 'https://example.com/study-guide/20' },
  { name: '資格21', official_url: 'https://example.com/21', exam_info_url: 'https://example.com/exam-info/21', exam_fee: '12,000円', study_hours: 160, source_url: 'https://example.com/study-guide/21' },
  { name: '資格22', official_url: 'https://example.com/22', exam_info_url: 'https://example.com/exam-info/22', exam_fee: '11,000円', study_hours: 170, source_url: 'https://example.com/study-guide/22' },
  { name: '資格23', official_url: 'https://example.com/23', exam_info_url: 'https://example.com/exam-info/23', exam_fee: '15,000円', study_hours: 190, source_url: 'https://example.com/study-guide/23' },
  { name: '資格24', official_url: 'https://example.com/24', exam_info_url: 'https://example.com/exam-info/24', exam_fee: '9,000円', study_hours: 140, source_url: 'https://example.com/study-guide/24' },
  { name: '資格25', official_url: 'https://example.com/25', exam_info_url: 'https://example.com/exam-info/25', exam_fee: '13,000円', study_hours: 180, source_url: 'https://example.com/study-guide/25' },
  { name: '資格26', official_url: 'https://example.com/26', exam_info_url: 'https://example.com/exam-info/26', exam_fee: '10,000円', study_hours: 150, source_url: 'https://example.com/study-guide/26' },
  { name: '資格27', official_url: 'https://example.com/27', exam_info_url: 'https://example.com/exam-info/27', exam_fee: '12,000円', study_hours: 160, source_url: 'https://example.com/study-guide/27' },
  { name: '資格28', official_url: 'https://example.com/28', exam_info_url: 'https://example.com/exam-info/28', exam_fee: '11,000円', study_hours: 170, source_url: 'https://example.com/study-guide/28' },
  { name: '資格29', official_url: 'https://example.com/29', exam_info_url: 'https://example.com/exam-info/29', exam_fee: '14,000円', study_hours: 190, source_url: 'https://example.com/study-guide/29' },
  { name: '資格30', official_url: 'https://example.com/30', exam_info_url: 'https://example.com/exam-info/30', exam_fee: '9,000円', study_hours: 140, source_url: 'https://example.com/study-guide/30' }
])

# テストユーザー
test_user = User.create(
  nickname: 'TestUser',
  email: 'test@example.com',
  password: 'password',
)
