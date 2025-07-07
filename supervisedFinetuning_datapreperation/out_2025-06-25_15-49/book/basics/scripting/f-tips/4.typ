
#let report_config_with_summary = (title: "Monthly Sales", date: "2023-10-26", summary: "Sales increased by 15% this month.")
#let report_config_no_summary = (title: "Quarterly Review", date: "2023-Q3")

#block[
  #text(1.2em, weight: "bold")[Report 1 (with summary):]
  #if ("summary" in report_config_with_summary) {
    "Summary available: " + report_config_with_summary.summary
  } else {
    "No summary provided for this report."
  }

  #text(1.2em, weight: "bold", top: 1em)[Report 2 (without summary):]
  #if ("summary" in report_config_no_summary) {
    "Summary available: " + report_config_no_summary.summary
  } else {
    "No summary provided for this report."
  }
]
