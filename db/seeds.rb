# 資格情報のデータを作成
qualifications = [
  { name: 'ITパスポート試験', official_url: 'https://www.ipa.go.jp/' },
  { name: '基本情報技術者試験', official_url: 'https://www.ipa.go.jp/' },
  { name: '情報セキュリティマネジメント試験', official_url: 'https://www.ipa.go.jp/' },
  { name: 'ウェブデザイン技能検定', official_url: 'https://www.webdesign.gr.jp/' },
  { name: '応用情報技術者試験', official_url: 'https://www.ipa.go.jp/' },
  { name: 'プロジェクトマネージャ試験', official_url: 'https://www.ipa.go.jp/' },
  { name: 'ITストラテジスト試験', official_url: 'https://www.ipa.go.jp/' },
  { name: 'データベーススペシャリスト試験', official_url: 'https://www.ipa.go.jp/' },
  { name: 'ITサービスマネージャ試験', official_url: 'https://www.ipa.go.jp/' },
  { name: '情報処理安全確保支援士試験', official_url: 'https://www.ipa.go.jp/' },
  { name: 'システム監査技術者試験', official_url: 'https://www.ipa.go.jp/' },
  { name: 'ネットワークスペシャリスト試験', official_url: 'https://www.ipa.go.jp/' },
  { name: 'エンべデッドシステムスペシャリスト試験', official_url: 'https://www.ipa.go.jp/' },
  { name: 'システムアーキテクト試験', official_url: 'https://www.ipa.go.jp/' }
]

# データをデータベースに追加
qualifications.each do |qualification|
  Qualification.create!(qualification)
end

puts '資格情報のシードデータを追加しました。'
