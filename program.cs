using System;

namespace HelloWorldApp
{
    /// <summary>
    /// 简单的Hello World程序示例
    /// 演示基本的C#程序结构和用户交互
    /// </summary>
    class Program
    {
        /// <summary>
        /// 程序入口点
        /// </summary>
        /// <param name="args">命令行参数</param>
        static void Main(string[] args)
        {
            try
            {
                // 显示欢迎信息
                Console.WriteLine("=================================");
                Console.WriteLine("    ***欢迎使用 Hello World 程序!***");
                Console.WriteLine("=================================");
                Console.WriteLine();

                // 获取用户姓名
                Console.Write("请输入您的姓名: ");
                string userName = Console.ReadLine();

                // 验证输入
                if (string.IsNullOrWhiteSpace(userName))
                {
                    userName = "朋友";
                }

                // 个性化问候
                Console.WriteLine();
                Console.WriteLine($"你好, {userName}! 欢迎来到C#编程世界!");
                Console.WriteLine();

                // 显示当前时间
                Console.WriteLine($"当前时间: {DateTime.Now:yyyy-MM-dd HH:mm:ss}");
                Console.WriteLine();

                // 简单的计算示例
                Console.WriteLine("让我们做一个简单的计算:");
                Console.Write("请输入第一个数字: ");
                if (double.TryParse(Console.ReadLine(), out double num1))
                {
                    Console.Write("请输入第二个数字: ");
                    if (double.TryParse(Console.ReadLine(), out double num2))
                    {
                        double sum = num1 + num2;
                        Console.WriteLine($"结果: {num1} + {num2} = {sum}");
                    }
                    else
                    {
                        Console.WriteLine("第二个数字格式不正确!");
                    }
                }
                else
                {
                    Console.WriteLine("第一个数字格式不正确!");
                }

                Console.WriteLine();
                Console.WriteLine("感谢使用本程序!");
                Console.WriteLine("按任意键退出...");
                Console.ReadKey();
            }
            catch (Exception ex)
            {
                Console.WriteLine($"程序运行出错: {ex.Message}");
                Console.WriteLine("按任意键退出...");
                Console.ReadKey();
            }
        }
    }
}
