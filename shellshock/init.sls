bash:
    pkg.latest

# only compiles if still vulnerable (OS pkg.latest above has no patch)
compile_bash:
    cmd.script:
        - name: salt://shellshock/install_bash.sh
        - cwd: /usr/src/
        - onlyif: env x='() { :;}; echo vulnerable' bash -c "echo this is a test" | grep vulnerable
