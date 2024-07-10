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
    study_hours: 100,
    source_url: 'https://www.tac-school.co.jp/kouza_joho/joho_ip/ip_study_time.html',
    description: 'IT基礎知識を評価する試験で、初心者向けの資格です。'
  },
  {
    name: '基本情報技術者試験',
    official_url: 'https://www.ipa.go.jp/',
    exam_info_url: 'https://www.ipa.go.jp/shiken/kubun/fe.html',
    exam_fee: '7,500円(非課税)',
    study_hours: 200,
    source_url: 'https://www.tac-school.co.jp/kouza_joho/joho_fe/fe_study_time.html',
    description: 'IT技術全般に関する基礎的な知識とスキルを評価する国家試験です。'
  },
  {
    name: '情報セキュリティマネジメント試験',
    official_url: 'https://www.ipa.go.jp/',
    exam_info_url: 'https://www.ipa.go.jp/shiken/kubun/sg.html',
    exam_fee: '7,500円(税込)',
    study_hours: 200,
    source_url: 'https://www.tac-school.co.jp/kouza_joho/joho_sg/sg_study_time.html',
    description: '情報セキュリティ管理の専門知識とスキルを評価する試験です。'
  },
  {
    name: '応用情報技術者試験',
    official_url: 'https://www.ipa.go.jp/',
    exam_info_url: 'https://www.ipa.go.jp/shiken/kubun/ap.html',
    exam_fee: '7,500円(税込)',
    study_hours: 200,
    source_url: 'https://www.tac-school.co.jp/kouza_joho/joho_ap/ap_study_method.html',
    description: 'IT技術の応用能力とシステムの設計・開発能力を評価する試験です。'
  },
  {
    name: 'プロジェクトマネージャ試験',
    official_url: 'https://www.ipa.go.jp/',
    exam_info_url: 'https://www.ipa.go.jp/shiken/kubun/pm.html',
    exam_fee: '7,500円(税込)',
    study_hours: 200,
    source_url: 'https://asikaze.net/media/455',
    description: 'ITプロジェクトのマネジメント能力を評価する試験です。'
  },
  {
    name: 'ITストラテジスト試験',
    official_url: 'https://www.ipa.go.jp/',
    exam_info_url: 'https://www.ipa.go.jp/shiken/kubun/st.html',
    exam_fee: '7,500円(税込)',
    study_hours: 150,
    source_url: 'https://studying.jp/itstrategist/about-more/self_education.html',
    description: 'IT戦略の策定・推進能力を評価する試験です。'
  },
  {
    name: 'データベーススペシャリスト試験',
    official_url: 'https://www.ipa.go.jp/',
    exam_info_url: 'https://www.ipa.go.jp/shiken/kubun/db.html',
    exam_fee: '7,500円(税込)',
    study_hours: 200,
    source_url: 'https://udemy.benesse.co.jp/development/qualification/database-specalist.html',
    description: 'データベース設計・管理に関する専門知識とスキルを評価する試験です。'
  },
  {
    name: 'ITサービスマネージャ試験',
    official_url: 'https://www.ipa.go.jp/',
    exam_info_url: 'https://www.ipa.go.jp/shiken/kubun/sm.html',
    exam_fee: '7,500円(税込)',
    study_hours: 100,
    source_url: 'https://studying.jp/itstrategist/about-more/koudo_difficulty_level.html',
    description: 'ITサービスのマネジメント能力を評価する試験です。'
  },
  {
    name: '情報処理安全確保支援士試験',
    official_url: 'https://www.ipa.go.jp/',
    exam_info_url: 'https://www.ipa.go.jp/shiken/kubun/sc.html',
    exam_fee: '7,500円(非課税)',
    study_hours: 200,
    source_url: 'https://www.tac-school.co.jp/kouza_joho/joho_sc/sc_passing_rate.html',
    description: '情報セキュリティの専門家としての能力を評価する試験です。'
  },
  {
    name: 'システム監査技術者試験',
    official_url: 'https://www.ipa.go.jp/',
    exam_info_url: 'https://www.ipa.go.jp/shiken/kubun/au.html',
    exam_fee: '7,500円(税込)',
    study_hours: 200,
    source_url: 'https://machoriblog.com/systemaudit-studytime/',
    description: 'システム監査技術の専門知識とスキルを評価する試験です。'
  },
  {
    name: 'ネットワークスペシャリスト試験',
    official_url: 'https://www.ipa.go.jp/',
    exam_info_url: 'https://www.ipa.go.jp/shiken/kubun/nw.html',
    exam_fee: '7,500円(税込)',
    study_hours: 50,
    source_url: 'https://studying.jp/itstrategist/about-more/koudo_difficulty_level.html',
    description: 'ネットワーク技術に関する専門知識とスキルを評価する試験です。'
  },
  {
    name: 'エンベデッドシステムスペシャリスト試験',
    official_url: 'https://www.ipa.go.jp/',
    exam_info_url: 'https://www.ipa.go.jp/shiken/kubun/es.html',
    exam_fee: '7,500円(税込)',
    study_hours: 500,
    source_url: 'https://jobsearch.fgl-ts.co.jp/contents/0/106',
    description: '組み込みシステム開発における専門的な知識とスキルを評価する試験です。'
  },
  {
    name: 'システムアーキテクト試験',
    official_url: 'https://www.ipa.go.jp/',
    exam_info_url: 'https://www.ipa.go.jp/shiken/kubun/sa.html',
    exam_fee: '7,500円(税込)',
    study_hours: 100,
    source_url: 'https://studying.jp/itstrategist/about-more/koudo_difficulty_level.html',
    description: 'システムアーキテクチャ設計における能力を評価する試験です。'
  }
])

# テストユーザー
test_user = User.create(
  nickname: 'TestUser',
  email: 'test@example.com',
  password: 'password'
)
