# 既存のデータを削除
Qualification.delete_all

# 新しい初期データを作成
qualifications = Qualification.create([
  {
    name: 'ITパスポート試験 (iパス)',
    official_url: 'https://www.ipa.go.jp/',
    exam_info_url: 'https://www.ipa.go.jp/shiken/kubun/ip.html',
    exam_fee: '7,500円(税込)',
    study_hours: 180,
    source_url: 'https://www.tac-school.co.jp/kouza_joho/joho_ip/ip_study_time.html'
  }
])
