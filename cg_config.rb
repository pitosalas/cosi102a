require 'coursegen'

# Copyright string
COPYRIGHT_STRING = "Copyright (2014-2017) R. Pito Salas, pitosalas@brandeis.edu"

# Bucket Deployment of the course
AWS_BUCKET = "cosi165a"

# Course short name
COURSE_SHORT_NAME = "CS 165a"
COURSE_LONG_NAME = "Software Entrepreneurship"
COURSE_ABBREV = "cs165a"

# Schedule information. Note that Monday is day 0
LECTURES_SCHEDULE_CONFIG = ScheduleDef.new(
  first_day: "aug-30-2018",
  weekdays: [:tuesday, :thursday],
  start_times: ["15:30", "15:30"],
  end_times: ["16:50", "16:50"],
  number: 28,
  skips: [],
  start_time: "15:30",
  end_time: "16:50")

# Sections in the right hand margin of the page
SECTION_CONFIG = [
  SectionDef.new("Welcome", "welcome", type: :section, collapsed: false, bullet: :star),
  SectionDef.new("Lectures", "lectures",
                 type: :lecture, schedule: LECTURES_SCHEDULE_CONFIG, bullet: :dash),
  SectionDef.new("Background", "background", type: :section, collapsed: false),
  SectionDef.new("Topics", "topics", hidden: true, type: :section),
  SectionDef.new("Extras", "extras", hidden: true, type: :section)
]

# Theme settings
# bullet_style: css style for each bullet
STYLING_CONFIG = {bullet_style: %("font-size: 60%; width: 10px; color: grey")}
HOME_PAGE = "/content/background/02_syllabus.md.erb"
HELPFUL_BOX = false
