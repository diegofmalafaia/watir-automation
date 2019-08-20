require 'report_builder'

After do
  site.close
end

at_exit do
  options = {
      input_path: 'reports/report.json',
      report_path: 'reports/report',
      report_types: ['json', 'html'],
      report_title: 'Watir Automation - My Store - Your Logo',
      include_images: true,
      voice_commands: true,
      color: 'green',
      additional_info: {'browser' => 'Chrome', 'environment' => 'dev'}
  }

  ReportBuilder.build_report options
end
