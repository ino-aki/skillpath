class StudyPlansController < ApplicationController
  def calculate_study_time
    # フォームから送信されたデータを受け取る
    start_date = Date.strptime(params[:start_date], '%Y%m%d')
    test_date = Date.strptime(params[:test_date], '%Y%m%d')
    holiday_days = params[:holiday_days].to_i
    study_hours_weekday = params[:study_hours_weekday].to_i
    study_hours_saturday = params[:study_hours_saturday].to_i
    study_hours_sunday = params[:study_hours_sunday].to_i
    study_hours_holiday = params[:study_hours_holiday].to_i
    study_goal_hours = params[:study_goal_hours].to_i

    # 平日、週末、祝日有給日の勉強時間を計算
    total_study_hours = 0
    current_date = start_date

    while current_date < test_date
      if current_date.wday.between?(1, 5) # 月曜日から金曜日
        total_study_hours += study_hours_weekday
      elsif current_date.wday == 6 # 土曜日
        total_study_hours += study_hours_saturday
      elsif current_date.wday == 0 # 日曜日
        total_study_hours += study_hours_sunday
      end

      current_date += 1
    end

    # 祝日有給日の勉強時間を加算
    total_study_hours += holiday_days * study_hours_holiday

    # 目標時間との比較を行う
    hours_difference = study_goal_hours - total_study_hours

    # JSON レスポンスとして計算結果を返す
    render json: { 
      total_study_hours: total_study_hours, 
      study_goal_hours: study_goal_hours, 
      hours_difference: hours_difference 
    }
  end
end
