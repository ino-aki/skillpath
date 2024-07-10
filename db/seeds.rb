# 既存のデータを削除
Comment.destroy_all
Qualification.delete_all

# 初期データ
Qualification.create([
  {
    name: "ITパスポート試験 (iパス)",
    official_url: "https://www.ipa.go.jp/",
    exam_info_url: "https://www.ipa.go.jp/shiken/kubun/ip.html",
    exam_fee: "7,500円(税込)",
    study_hours: "100時間以上",
    source_url: "https://www.tac-school.co.jp/kouza_joho/joho_ip/ip_study_time.html"
  },
  {
    name: "基本情報技術者試験",
    official_url: "https://www.ipa.go.jp/",
    exam_info_url: "https://www.ipa.go.jp/shiken/kubun/fe.html",
    exam_fee: "7,500円(非課税)",
    study_hours: "200時間以上",
    source_url: "https://www.tac-school.co.jp/kouza_joho/joho_fe/fe_study_time.html"
  },
  {
    name: "情報セキュリティマネジメント試験",
    official_url: "https://www.ipa.go.jp/",
    exam_info_url: "https://www.ipa.go.jp/shiken/kubun/sg.html",
    exam_fee: "7,500円(税込)",
    study_hours: "200時間",
    source_url: "https://www.tac-school.co.jp/kouza_joho/joho_sg/sg_study_time.html"
  },
  {
    name: "応用情報技術者試験",
    official_url: "https://www.ipa.go.jp/",
    exam_info_url: "https://www.ipa.go.jp/shiken/kubun/ap.html",
    exam_fee: "7,500円(税込)",
    study_hours: "200時間以上",
    source_url: "https://www.tac-school.co.jp/kouza_joho/joho_ap/ap_study_method.html"
  },
  {
    name: "プロジェクトマネージャ試験",
    official_url: "https://www.ipa.go.jp/",
    exam_info_url: "https://www.ipa.go.jp/shiken/kubun/pm.html",
    exam_fee: "7,500円(税込)",
    study_hours: "200時間以上",
    source_url: "https://asikaze.net/media/455"
  },
  {
    name: "ITストラテジスト試験",
    official_url: "https://www.ipa.go.jp/",
    exam_info_url: "https://www.ipa.go.jp/shiken/kubun/st.html",
    exam_fee: "7,500円(税込)",
    study_hours: "150時間以上",
    source_url: "https://studying.jp/itstrategist/about-more/self_education.html"
  },
  {
    name: "データベーススペシャリスト試験",
    official_url: "https://www.ipa.go.jp/",
    exam_info_url: "https://www.ipa.go.jp/shiken/kubun/db.html",
    exam_fee: "7,500円(税込)",
    study_hours: "200時間",
    source_url: "https://udemy.benesse.co.jp/development/qualification/database-specalist.html"
  },
  {
    name: "ITサービスマネージャ試験",
    official_url: "https://www.ipa.go.jp/",
    exam_info_url: "https://www.ipa.go.jp/shiken/kubun/sm.html",
    exam_fee: "7,500円(税込)",
    study_hours: "100時間以上",
    source_url: "https://studying.jp/itstrategist/about-more/koudo_difficulty_level.html"
  },
  {
    name: "情報処理安全確保支援士試験",
    official_url: "https://www.ipa.go.jp/",
    exam_info_url: "https://www.ipa.go.jp/shiken/kubun/sc.html",
    exam_fee: "7,500円(非課税)",
    study_hours: "200時間以上",
    source_url: "https://www.tac-school.co.jp/kouza_joho/joho_sc/sc_passing_rate.html"
  },
  {
    name: "システム監査技術者試験",
    official_url: "https://www.ipa.go.jp/",
    exam_info_url: "https://www.ipa.go.jp/shiken/kubun/au.html",
    exam_fee: "7,500円(税込)",
    study_hours: "200時間以上",
    source_url: "https://machoriblog.com/systemaudit-studytime/"
  },
  {
    name: "ネットワークスペシャリスト試験",
    official_url: "https://www.ipa.go.jp/",
    exam_info_url: "https://www.ipa.go.jp/shiken/kubun/nw.html",
    exam_fee: "7,500円(税込)",
    study_hours: "50時間以上",
    source_url: "https://studying.jp/itstrategist/about-more/koudo_difficulty_level.html"
  },
  {
    name: "エンベデッドシステムスペシャリスト試験",
    official_url: "https://www.ipa.go.jp/",
    exam_info_url: "https://www.ipa.go.jp/shiken/kubun/es.html",
    exam_fee: "7,500円(税込)",
    study_hours: "500時間以上",
    source_url: "https://jobsearch.fgl-ts.co.jp/contents/0/106"
  },
  {
    name: "システムアーキテクト試験",
    official_url: "https://www.ipa.go.jp/",
    exam_info_url: "https://www.ipa.go.jp/shiken/kubun/sa.html",
    exam_fee: "7,500円(税込)",
    study_hours: "100時間以上",
    source_url: "https://studying.jp/itstrategist/about-more/koudo_difficulty_level.html"
  }
])

# テストユーザー
test_user = User.create(
  nickname: 'TestUser',
  email: 'test@example.com',
  password: 'password'
)
