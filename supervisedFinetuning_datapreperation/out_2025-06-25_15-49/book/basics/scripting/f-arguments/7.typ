
#let custom-log(section, ..details) = {
  let timestamp = datetime.today().display("[hour]:[minute]:[second]")
  let log_message_parts = () 

  // Add positional details
  for p in details.pos() {
    log_message_parts.push(p)
  }
  // Add named details
  for k, v in details.named() {
    log_message_parts.push(" #k=#v")
  }

  #set text(font: "monospace", size: 0.9em)
  [#timestamp [ #section]: #log_message_parts.join(", ")]
}

#custom-log("Initialization", "System started", version: "1.0.0", mode: "debug")
#custom-log("User Action", "Login attempt", user_id: 42, status: "success")
#custom-log("Error", "File not found", filename: "data.csv")
