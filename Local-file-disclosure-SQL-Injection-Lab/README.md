这是对`Manish Kishan Tanwar` 的 https://github.com/incredibleindishell/Local-file-disclosure-SQL-Injection-Lab/ 的docker化实现。

所有的功劳都归于原作者！我仅仅是为了方便自己测试和练手做了这个docker化尝试。

按正规docker化步骤，应该在dockerfile 里，用 wget 获得原版repo压缩包。但天朝自有国情啊... 这么做导致下载很不稳定，基本上每次都down不下来。反正内容也不多，我直接就放本地了。对这个攻击的描述请参见原作者：《**[local file disclosure using SQL Injection.pdf](https://github.com/incredibleindishell/Local-file-disclosure-SQL-Injection-Lab/blob/master/local%20file%20disclosure%20using%20SQL%20Injection.pdf)**》

使用：`docker-compose up -d `
