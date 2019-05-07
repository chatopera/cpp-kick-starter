#include <division.h>
#include <gflags/gflags.h>
#include <glog/logging.h>

static const char *const HEADER = "\nHai Liang Wang © 2019 Chatopera Inc.\n\n";
static const char *const USAGE = "Usage:\n\tdivider <numerator> <denominator>\n\nDescription:\n\tComputes the result of a fractional division,\n\tand reports both the result and the remainder.\n";

int main(int argc, char *argv[])
{
    // 解析命令行参数
    gflags::ParseCommandLineFlags(&argc, &argv, true);

    // 初始化日志库
    google::InitGoogleLogging(argv[0]);

    VLOG(3) << "foo";

    Fraction f;

    std::cout << HEADER;

    // ensure the correct number of parameters are used.
    if (argc < 3)
    {
        std::cout << USAGE;
        return 1;
    }

    f.numerator = atoll(argv[1]);
    f.denominator = atoll(argv[2]);

    Division d = Division(f);
    try
    {
        DivisionResult r = d.divide();

        std::cout << "Division : " << f.numerator << " / " << f.denominator << " = " << r.division << "\n";
        std::cout << "Remainder: " << f.numerator << " % " << f.denominator << " = " << r.remainder << "\n";
    }
    catch (DivisionByZero)
    {
        std::cout << "Can not divide by zero, Homer. Sober up!\n";
    }
    return 0;
}
