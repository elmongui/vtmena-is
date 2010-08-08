# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100808072202) do

  create_table "academic_credentials", :force => true do |t|
    t.integer  "student_id"
    t.string   "b_sc_university"
    t.string   "b_sc_area"
    t.integer  "b_sc_year"
    t.decimal  "b_sc_gpa",        :precision => 3, :scale => 2
    t.string   "m_sc_university"
    t.string   "m_sc_area"
    t.integer  "m_sc_year"
    t.decimal  "m_sc_gpa",        :precision => 3, :scale => 2
    t.integer  "gre_v"
    t.integer  "gre_q"
    t.decimal  "gre_a",           :precision => 2, :scale => 1
    t.integer  "toefl"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "academic_milestones", :force => true do |t|
    t.integer  "student_id"
    t.string   "name"
    t.string   "status"
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "achievements", :force => true do |t|
    t.integer  "person_id"
    t.string   "kind"
    t.string   "title"
    t.string   "authors"
    t.string   "outlet"
    t.integer  "year"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "advisorships", :force => true do |t|
    t.integer  "student_id"
    t.integer  "professor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "au_infos", :force => true do |t|
    t.integer  "student_id"
    t.string   "department"
    t.string   "degree"
    t.string   "degree_program"
    t.string   "area"
    t.string   "semester_admitted"
    t.integer  "year"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "class_schedules", :force => true do |t|
    t.integer  "course_id"
    t.string   "semester"
    t.string   "year"
    t.string   "vtel"
    t.boolean  "offered"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "courses", :force => true do |t|
    t.string   "number"
    t.string   "topic"
    t.string   "university"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employments", :force => true do |t|
    t.integer  "student_id"
    t.string   "present_employer"
    t.string   "position"
    t.boolean  "government"
    t.boolean  "mission"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "instructors", :force => true do |t|
    t.integer  "professor_id"
    t.integer  "class_schedule_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "people", :force => true do |t|
    t.string   "type"
    t.string   "first_name"
    t.string   "middle_names"
    t.string   "last_name"
    t.string   "email"
    t.string   "address_1"
    t.string   "address_2"
    t.string   "city"
    t.string   "governorate"
    t.string   "postal_code"
    t.string   "university"
    t.string   "department"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "phones", :force => true do |t|
    t.integer  "owner_id"
    t.integer  "owner_type"
    t.string   "number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "registered_classes", :force => true do |t|
    t.integer  "student_id"
    t.integer  "class_schedule_id"
    t.string   "grade"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "registered_courses", :force => true do |t|
    t.integer  "student_id"
    t.integer  "course_schedule_id"
    t.string   "grade"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "us_residencies", :force => true do |t|
    t.integer  "person_id"
    t.date     "date_started"
    t.date     "date_ended"
    t.string   "address_1"
    t.string   "address_2"
    t.string   "city"
    t.string   "state"
    t.string   "zipcode"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "hashed_password"
    t.string   "salt"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "role"
  end

  create_table "vt_infos", :force => true do |t|
    t.integer  "student_id"
    t.string   "student_pid"
    t.string   "student_id_number"
    t.string   "department"
    t.string   "degree"
    t.string   "degree_program"
    t.string   "area"
    t.string   "semester_admitted"
    t.integer  "year"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vtmena_academic_progresses", :force => true do |t|
    t.integer  "student_id"
    t.string   "research_topic"
    t.decimal  "vt_gpa",                 :precision => 3, :scale => 2
    t.integer  "vt_course_credits"
    t.integer  "vt_research_credits"
    t.decimal  "au_gpa",                 :precision => 3, :scale => 2
    t.integer  "au_course_credits"
    t.integer  "au_research_credits"
    t.integer  "total_course_credits"
    t.integer  "total_research_credits"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vtmena_info_sies", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
