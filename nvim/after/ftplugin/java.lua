local config = {
    cmd = { 'jdtls' },
    root_dir = vim.fs.dirname(vim.fs.find({ 'gradlew', '.git', 'mvnw' }, { upward = true })[1]),
}

require('jdtls').start_or_attach(config)

vim.keymap.set('n', '<F5>', function()
    vim.cmd 'vsplit | terminal java -jar ./target/*.jar'
    vim.cmd 'quit'
end)
