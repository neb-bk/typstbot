

module.exports.runtime = {
  handler: async function ({code}) {
    const callerId = `${this.config.name}-v${this.config.version}`;
	if (!code.trim()) {
		return "Please input correct typst code.";
	}

    try {
		this.introspect(
        `${callerId} called with code: ${code} ...`
		);
	  
		const fs = require("fs");
		const { exec } = require("child_process");
		const path = require("path");
		const os = require("os");
		
		//create some temp files
		const tempDir = fs.mkdtempSync(path.join(os.tmpdir(), "typst-"));
		const typstFile = path.join(tempDir, "main.typ");
		const outputFile = path.join(tempDir, "output.pdf");

		fs.writeFileSync(typstFile, code);
		const result = await new Promise((resolve) => {
			exec(`typst compile ${typstFile} ${outputFile}`, (error, stdout, stderr) => {
				if (error) {
					this.introspect(
						`${callerId} Compilation failure for: ${code}. Compiler error message: ${stderr || error.message}`
					);	
				  resolve(`Error when compiling the following code: ${code}. This is the typst compiler output:\n${stderr || error.message}`);
				} else {
					this.introspect(
						`${callerId} Compilation successful for: ${code}. This should be given to the user. PDF output written to: ${outputFile}`
					);	
				  resolve(`Compilation was successful for the following code: ${code}. This should be given to the user.`);
				}


		});
	});

	return result;

    } catch (e) {
      this.introspect(
        `${callerId} failed to invoke with code: ${code}. Reason: ${e.message}`
      );
      this.logger(
        `${callerId} failed to invoke with code: ${code}`,
        e.message
      );
      return `The typst compiler tool failed to run for some reason. Here is all we know ${e.message}`;
    }
  },
};