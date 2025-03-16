; ModuleID = 'src/toast.c'
source_filename = "src/toast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.fmtdesc = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [3 x i64] }

@f_decode = dso_local local_unnamed_addr global i32 0, align 4
@f_cat = dso_local local_unnamed_addr global i32 0, align 4
@f_force = dso_local local_unnamed_addr global i32 0, align 4
@f_precious = dso_local local_unnamed_addr global i32 0, align 4
@f_fast = dso_local global i32 0, align 4
@f_verbose = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"audio\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"8 kHz, 8 bit u-law encoding with Sun audio header\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c".au\00", align 1
@f_audio = dso_local global %struct.fmtdesc { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @audio_init_input, ptr @audio_init_output, ptr @ulaw_input, ptr @ulaw_output }, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"u-law\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"plain 8 kHz, 8 bit u-law encoding\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c".u\00", align 1
@f_ulaw = dso_local global %struct.fmtdesc { ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @generic_init, ptr @generic_init, ptr @ulaw_input, ptr @ulaw_output }, align 8
@.str.6 = private unnamed_addr constant [6 x i8] c"A-law\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"8 kHz, 8 bit A-law encoding\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c".A\00", align 1
@f_alaw = dso_local global %struct.fmtdesc { ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @generic_init, ptr @generic_init, ptr @alaw_input, ptr @alaw_output }, align 8
@.str.9 = private unnamed_addr constant [7 x i8] c"linear\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"16 bit (13 significant) signed 8 kHz signal\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c".l\00", align 1
@f_linear = dso_local global %struct.fmtdesc { ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @generic_init, ptr @generic_init, ptr @linear_input, ptr @linear_output }, align 8
@alldescs = dso_local local_unnamed_addr global [5 x ptr] [ptr @f_audio, ptr @f_alaw, ptr @f_ulaw, ptr @f_linear, ptr null], align 16
@f_format = dso_local local_unnamed_addr global ptr null, align 8
@.str.12 = private unnamed_addr constant [13 x i8] c"fcdpvhuaslVF\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.13 = private unnamed_addr constant [51 x i8] c"Usage: %s [-fcpdhvuaslF] [files...] (-h for help)\0A\00", align 1
@progname = dso_local local_unnamed_addr global ptr null, align 8
@optind = external local_unnamed_addr global i32, align 4
@instat = dso_local global %struct.stat zeroinitializer, align 8
@in = dso_local local_unnamed_addr global ptr null, align 8
@out = dso_local local_unnamed_addr global ptr null, align 8
@inname = dso_local local_unnamed_addr global ptr null, align 8
@outname = dso_local local_unnamed_addr global ptr null, align 8
@output = dso_local local_unnamed_addr global ptr null, align 8
@input = dso_local local_unnamed_addr global ptr null, align 8
@init_input = dso_local local_unnamed_addr global ptr null, align 8
@init_output = dso_local local_unnamed_addr global ptr null, align 8
@.str.14 = private unnamed_addr constant [6 x i8] c"toast\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"un\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"cat\00", align 1
@.str.17 = private unnamed_addr constant [54 x i8] c"%s: only one of -[uals] is possible (%s -h for help)\0A\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"%s 1.0, version %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [58 x i8] c"$Id: toast.c,v 1.1.1.1 2000/11/06 19:54:26 mguthaus Exp $\00", align 1
@.str.20 = private unnamed_addr constant [37 x i8] c"Usage: %s [-fcpdhvaulsF] [files...]\0A\00", align 1
@.str.33 = private unnamed_addr constant [17 x i8] c"%s: error %s %s\0A\00", align 1
@.str.34 = private unnamed_addr constant [18 x i8] c"writing header to\00", align 1
@.str.35 = private unnamed_addr constant [20 x i8] c"reading header from\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@.str.38 = private unnamed_addr constant [24 x i8] c"%s: error writing \22%s\22\0A\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str.39 = private unnamed_addr constant [30 x i8] c"%s: source \22%s\22 not deleted.\0A\00", align 1
@.str.40 = private unnamed_addr constant [27 x i8] c"%s: could not unlink \22%s\22\0A\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c".gsm\00", align 1
@.str.42 = private unnamed_addr constant [46 x i8] c"%s: %s already has \22%s\22 suffix -- unchanged.\0A\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.44 = private unnamed_addr constant [34 x i8] c"%s: cannot open \22%s\22 for reading\0A\00", align 1
@.str.45 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.46 = private unnamed_addr constant [40 x i8] c"%s: failed to malloc %d bytes -- abort\0A\00", align 1
@.str.47 = private unnamed_addr constant [22 x i8] c"%s: cannot stat \22%s\22\0A\00", align 1
@.str.48 = private unnamed_addr constant [46 x i8] c"%s: \22%s\22 is not a regular file -- unchanged.\0A\00", align 1
@.str.49 = private unnamed_addr constant [44 x i8] c"%s: \22%s\22 has %s other link%s -- unchanged.\0A\00", align 1
@.str.50 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.52 = private unnamed_addr constant [33 x i8] c"%s: can't open \22%s\22 for writing\0A\00", align 1
@.str.54 = private unnamed_addr constant [58 x i8] c"%s already exists; do you wish to overwrite %s (y or n)? \00", align 1
@.str.55 = private unnamed_addr constant [18 x i8] c"\09not overwritten\0A\00", align 1
@.str.56 = private unnamed_addr constant [50 x i8] c"%s: incomplete frame (%d byte%s missing) from %s\0A\00", align 1
@.str.57 = private unnamed_addr constant [21 x i8] c"%s: bad frame in %s\0A\00", align 1
@.str.58 = private unnamed_addr constant [25 x i8] c"%s: error writing to %s\0A\00", align 1
@.str.59 = private unnamed_addr constant [27 x i8] c"%s: error reading from %s\0A\00", align 1
@.str.60 = private unnamed_addr constant [40 x i8] c"%s: could not change file mode of \22%s\22\0A\00", align 1
@str = private unnamed_addr constant [53 x i8] c" -f  force     Replace existing files without asking\00", align 1
@str.61 = private unnamed_addr constant [59 x i8] c" -c  cat       Write to stdout, do not remove source files\00", align 1
@str.62 = private unnamed_addr constant [47 x i8] c" -d  decode    Decode data (default is encode)\00", align 1
@str.63 = private unnamed_addr constant [40 x i8] c" -p  precious  Do not delete the source\00", align 1
@str.64 = private unnamed_addr constant [56 x i8] c" -u  u-law     Force 8 kHz/8 bit u-law in/output format\00", align 1
@str.65 = private unnamed_addr constant [52 x i8] c" -s  sun .au   Force Sun .au u-law in/output format\00", align 1
@str.66 = private unnamed_addr constant [56 x i8] c" -a  A-law     Force 8 kHz/8 bit A-law in/output format\00", align 1
@str.67 = private unnamed_addr constant [52 x i8] c" -l  linear    Force 16 bit linear in/output format\00", align 1
@str.68 = private unnamed_addr constant [52 x i8] c" -F  fast      Sacrifice conformance to performance\00", align 1
@str.69 = private unnamed_addr constant [40 x i8] c" -v  version   Show version information\00", align 1
@str.70 = private unnamed_addr constant [31 x i8] c" -h  help      Print this text\00", align 1

declare i32 @audio_init_input() #0

declare i32 @audio_init_output() #0

declare i32 @ulaw_input(ptr noundef) #0

declare i32 @ulaw_output(ptr noundef) #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @generic_init() #1 {
  ret i32 0
}

declare i32 @alaw_input(ptr noundef) #0

declare i32 @alaw_output(ptr noundef) #0

declare i32 @linear_input(ptr noundef) #0

declare i32 @linear_output(ptr noundef) #0

; Function Attrs: noreturn nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = load ptr, ptr %1, align 8, !tbaa !5
  %4 = icmp eq ptr %3, null
  %5 = select i1 %4, ptr @.str.14, ptr %3
  %6 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %5, i32 noundef 47) #19
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds i8, ptr %6, i64 1
  %10 = load i8, ptr %9, align 1, !tbaa !9
  %11 = icmp eq i8 %10, 0
  %12 = select i1 %11, ptr %5, ptr %9
  br label %13

13:                                               ; preds = %8, %2
  %14 = phi ptr [ %5, %2 ], [ %12, %8 ]
  store ptr %14, ptr @progname, align 8, !tbaa !5
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(3) @.str.15, i64 noundef 2) #19
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 1, ptr @f_decode, align 4, !tbaa !10
  br label %18

18:                                               ; preds = %17, %13
  %19 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %14) #19
  %20 = trunc i64 %19 to i32
  %21 = icmp sgt i32 %20, 2
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = and i64 %19, 4294967295
  %24 = getelementptr inbounds i8, ptr %14, i64 %23
  %25 = getelementptr inbounds i8, ptr %24, i64 -3
  %26 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %25, ptr noundef nonnull dereferenceable(4) @.str.16) #19
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 1, ptr @f_decode, align 4, !tbaa !10
  store i32 1, ptr @f_cat, align 4, !tbaa !10
  br label %29

29:                                               ; preds = %18, %22, %28
  br label %30

30:                                               ; preds = %78, %29
  %31 = tail call i32 (i32, ptr, ptr, ...) @getopt(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.12) #20
  switch i32 %31, label %81 [
    i32 -1, label %85
    i32 100, label %32
    i32 102, label %33
    i32 99, label %34
    i32 112, label %35
    i32 70, label %36
    i32 86, label %37
    i32 117, label %38
    i32 108, label %48
    i32 97, label %58
    i32 115, label %68
    i32 118, label %79
    i32 104, label %80
  ]

32:                                               ; preds = %30
  store i32 1, ptr @f_decode, align 4, !tbaa !10
  br label %78

33:                                               ; preds = %30
  store i32 1, ptr @f_force, align 4, !tbaa !10
  br label %78

34:                                               ; preds = %30
  store i32 1, ptr @f_cat, align 4, !tbaa !10
  br label %78

35:                                               ; preds = %30
  store i32 1, ptr @f_precious, align 4, !tbaa !10
  br label %78

36:                                               ; preds = %30
  store i32 1, ptr @f_fast, align 4, !tbaa !10
  br label %78

37:                                               ; preds = %30
  store i32 1, ptr @f_verbose, align 4, !tbaa !10
  br label %78

38:                                               ; preds = %30
  %39 = load ptr, ptr @f_format, align 8, !tbaa !5
  %40 = icmp eq ptr %39, null
  %41 = icmp eq ptr %39, @f_ulaw
  %42 = or i1 %40, %41
  br i1 %42, label %47, label %43

43:                                               ; preds = %38
  %44 = load ptr, ptr @stderr, align 8, !tbaa !5
  %45 = load ptr, ptr @progname, align 8, !tbaa !5
  %46 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %44, ptr noundef nonnull @.str.17, ptr noundef %45, ptr noundef %45) #21
  tail call void @exit(i32 noundef 1) #22
  unreachable

47:                                               ; preds = %38
  store ptr @f_ulaw, ptr @f_format, align 8, !tbaa !5
  br label %78

48:                                               ; preds = %30
  %49 = load ptr, ptr @f_format, align 8, !tbaa !5
  %50 = icmp eq ptr %49, null
  %51 = icmp eq ptr %49, @f_linear
  %52 = or i1 %50, %51
  br i1 %52, label %57, label %53

53:                                               ; preds = %48
  %54 = load ptr, ptr @stderr, align 8, !tbaa !5
  %55 = load ptr, ptr @progname, align 8, !tbaa !5
  %56 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %54, ptr noundef nonnull @.str.17, ptr noundef %55, ptr noundef %55) #21
  tail call void @exit(i32 noundef 1) #22
  unreachable

57:                                               ; preds = %48
  store ptr @f_linear, ptr @f_format, align 8, !tbaa !5
  br label %78

58:                                               ; preds = %30
  %59 = load ptr, ptr @f_format, align 8, !tbaa !5
  %60 = icmp eq ptr %59, null
  %61 = icmp eq ptr %59, @f_alaw
  %62 = or i1 %60, %61
  br i1 %62, label %67, label %63

63:                                               ; preds = %58
  %64 = load ptr, ptr @stderr, align 8, !tbaa !5
  %65 = load ptr, ptr @progname, align 8, !tbaa !5
  %66 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %64, ptr noundef nonnull @.str.17, ptr noundef %65, ptr noundef %65) #21
  tail call void @exit(i32 noundef 1) #22
  unreachable

67:                                               ; preds = %58
  store ptr @f_alaw, ptr @f_format, align 8, !tbaa !5
  br label %78

68:                                               ; preds = %30
  %69 = load ptr, ptr @f_format, align 8, !tbaa !5
  %70 = icmp eq ptr %69, null
  %71 = icmp eq ptr %69, @f_audio
  %72 = or i1 %70, %71
  br i1 %72, label %77, label %73

73:                                               ; preds = %68
  %74 = load ptr, ptr @stderr, align 8, !tbaa !5
  %75 = load ptr, ptr @progname, align 8, !tbaa !5
  %76 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %74, ptr noundef nonnull @.str.17, ptr noundef %75, ptr noundef %75) #21
  tail call void @exit(i32 noundef 1) #22
  unreachable

77:                                               ; preds = %68
  store ptr @f_audio, ptr @f_format, align 8, !tbaa !5
  br label %78

78:                                               ; preds = %77, %67, %57, %47, %37, %36, %35, %34, %33, %32
  br label %30, !llvm.loop !12

79:                                               ; preds = %30
  tail call fastcc void @version()
  tail call void @exit(i32 noundef 0) #22
  unreachable

80:                                               ; preds = %30
  tail call fastcc void @help()
  tail call void @exit(i32 noundef 0) #22
  unreachable

81:                                               ; preds = %30
  %82 = load ptr, ptr @stderr, align 8, !tbaa !5
  %83 = load ptr, ptr @progname, align 8, !tbaa !5
  %84 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %82, ptr noundef nonnull @.str.13, ptr noundef %83) #21
  tail call void @exit(i32 noundef 1) #22
  unreachable

85:                                               ; preds = %30
  %86 = load i32, ptr @f_cat, align 4, !tbaa !10
  %87 = load i32, ptr @f_precious, align 4, !tbaa !10
  %88 = or i32 %87, %86
  store i32 %88, ptr @f_precious, align 4, !tbaa !10
  %89 = load i32, ptr @optind, align 4, !tbaa !10
  %90 = sub nsw i32 %0, %89
  %91 = tail call ptr @__sysv_signal(i32 noundef 1, ptr noundef nonnull @onintr) #20
  %92 = tail call ptr @__sysv_signal(i32 noundef 2, ptr noundef nonnull @onintr) #20
  %93 = tail call ptr @__sysv_signal(i32 noundef 13, ptr noundef nonnull @onintr) #20
  %94 = tail call ptr @__sysv_signal(i32 noundef 15, ptr noundef nonnull @onintr) #20
  %95 = tail call ptr @__sysv_signal(i32 noundef 25, ptr noundef nonnull @onintr) #20
  %96 = icmp slt i32 %90, 1
  br i1 %96, label %100, label %97

97:                                               ; preds = %85
  %98 = sext i32 %89 to i64
  %99 = getelementptr inbounds ptr, ptr %1, i64 %98
  br label %101

100:                                              ; preds = %85
  tail call fastcc void @process(ptr noundef null)
  br label %108

101:                                              ; preds = %97, %101
  %102 = phi i32 [ %104, %101 ], [ %90, %97 ]
  %103 = phi ptr [ %105, %101 ], [ %99, %97 ]
  %104 = add nsw i32 %102, -1
  %105 = getelementptr inbounds ptr, ptr %103, i64 1
  %106 = load ptr, ptr %103, align 8, !tbaa !5
  tail call fastcc void @process(ptr noundef %106)
  %107 = icmp eq i32 %104, 0
  br i1 %107, label %108, label %101, !llvm.loop !14

108:                                              ; preds = %101, %100
  tail call void @exit(i32 noundef 0) #22
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare i32 @getopt(...) local_unnamed_addr #0

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @version() unnamed_addr #4 {
  %1 = load ptr, ptr @progname, align 8, !tbaa !5
  %2 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, ptr noundef %1, ptr noundef nonnull @.str.19)
  ret void
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @help() unnamed_addr #4 {
  %1 = load ptr, ptr @progname, align 8, !tbaa !5
  %2 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, ptr noundef %1)
  %3 = tail call i32 @putchar(i32 10)
  %4 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %5 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.61)
  %6 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.62)
  %7 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.63)
  %8 = tail call i32 @putchar(i32 10)
  %9 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.64)
  %10 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.65)
  %11 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.66)
  %12 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.67)
  %13 = tail call i32 @putchar(i32 10)
  %14 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.68)
  %15 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.69)
  %16 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.70)
  %17 = tail call i32 @putchar(i32 10)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: noreturn nounwind uwtable
define internal void @onintr() #2 {
  %1 = load ptr, ptr @outname, align 8, !tbaa !5
  store ptr null, ptr @outname, align 8, !tbaa !5
  %2 = icmp eq ptr %1, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call i32 @unlink(ptr noundef nonnull %1) #20
  br label %5

5:                                                ; preds = %3, %0
  tail call void @exit(i32 noundef 1) #22
  unreachable
}

; Function Attrs: nounwind uwtable
define internal fastcc void @process(ptr noundef %0) unnamed_addr #7 {
  %2 = alloca [2 x i64], align 16
  store ptr null, ptr @out, align 8, !tbaa !5
  store ptr null, ptr @in, align 8, !tbaa !5
  store ptr null, ptr @outname, align 8, !tbaa !5
  store ptr null, ptr @inname, align 8, !tbaa !5
  %3 = load ptr, ptr @f_format, align 8, !tbaa !5
  store i64 0, ptr getelementptr inbounds (%struct.stat, ptr @instat, i64 0, i32 2), align 8, !tbaa !15
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  store ptr null, ptr @inname, align 8, !tbaa !5
  %6 = load ptr, ptr @stdin, align 8, !tbaa !5
  store ptr %6, ptr @in, align 8, !tbaa !5
  br label %123

7:                                                ; preds = %1
  %8 = load i32, ptr @f_decode, align 4, !tbaa !10
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = tail call fastcc noundef ptr @normalname(ptr noundef nonnull %0, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.45)
  br label %40

12:                                               ; preds = %7
  %13 = load i32, ptr @f_cat, align 4, !tbaa !10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %12
  %16 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #19
  %17 = icmp ugt i64 %16, 4
  br i1 %17, label %18, label %29

18:                                               ; preds = %15
  %19 = getelementptr i8, ptr %0, i64 %16
  %20 = getelementptr i8, ptr %19, i64 -4
  %21 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %20, ptr noundef nonnull dereferenceable(4) @.str.41, i64 4)
  %22 = icmp ne i32 %21, 0
  %23 = icmp eq ptr %20, null
  %24 = or i1 %23, %22
  br i1 %24, label %29, label %25

25:                                               ; preds = %18
  %26 = load ptr, ptr @stderr, align 8, !tbaa !5
  %27 = load ptr, ptr @progname, align 8, !tbaa !5
  %28 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef nonnull @.str.42, ptr noundef %27, ptr noundef nonnull %0, ptr noundef nonnull @.str.41) #21
  br label %319

29:                                               ; preds = %18, %15, %12
  %30 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #19
  %31 = add i64 %30, 1
  %32 = tail call noalias ptr @malloc(i64 noundef %31) #23
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load ptr, ptr @stderr, align 8, !tbaa !5
  %36 = load ptr, ptr @progname, align 8, !tbaa !5
  %37 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %35, ptr noundef nonnull @.str.46, ptr noundef %36, i64 noundef %31) #21
  tail call void @onintr()
  unreachable

38:                                               ; preds = %29
  %39 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %32, ptr noundef nonnull dereferenceable(1) %0) #20
  br label %40

40:                                               ; preds = %38, %10
  %41 = phi ptr [ %32, %38 ], [ %11, %10 ]
  store ptr %41, ptr @inname, align 8, !tbaa !5
  %42 = tail call noalias ptr @fopen(ptr noundef %41, ptr noundef nonnull @.str.43)
  store ptr %42, ptr @in, align 8, !tbaa !5
  %43 = icmp eq ptr %42, null
  %44 = load ptr, ptr @inname, align 8, !tbaa !5
  br i1 %43, label %45, label %50

45:                                               ; preds = %40
  tail call void @perror(ptr noundef %44) #21
  %46 = load ptr, ptr @stderr, align 8, !tbaa !5
  %47 = load ptr, ptr @progname, align 8, !tbaa !5
  %48 = load ptr, ptr @inname, align 8, !tbaa !5
  %49 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %46, ptr noundef nonnull @.str.44, ptr noundef %47, ptr noundef %48) #21
  br label %319

50:                                               ; preds = %40
  %51 = tail call i32 (ptr, ...) @fileno(ptr noundef nonnull %42) #20
  %52 = tail call i32 @fstat(i32 noundef %51, ptr noundef nonnull @instat) #20
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  tail call void @perror(ptr noundef %44) #21
  %55 = load ptr, ptr @stderr, align 8, !tbaa !5
  %56 = load ptr, ptr @progname, align 8, !tbaa !5
  %57 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %55, ptr noundef nonnull @.str.47, ptr noundef %56, ptr noundef %44) #21
  br label %319

58:                                               ; preds = %50
  %59 = load i32, ptr getelementptr inbounds (%struct.stat, ptr @instat, i64 0, i32 3), align 8, !tbaa !18
  %60 = and i32 %59, 61440
  %61 = icmp eq i32 %60, 32768
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  %63 = load ptr, ptr @stderr, align 8, !tbaa !5
  %64 = load ptr, ptr @progname, align 8, !tbaa !5
  %65 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %63, ptr noundef nonnull @.str.48, ptr noundef %64, ptr noundef %44) #21
  br label %319

66:                                               ; preds = %58
  %67 = load i64, ptr getelementptr inbounds (%struct.stat, ptr @instat, i64 0, i32 2), align 8, !tbaa !15
  %68 = icmp ult i64 %67, 2
  %69 = load i32, ptr @f_cat, align 4
  %70 = icmp ne i32 %69, 0
  %71 = select i1 %68, i1 true, i1 %70
  %72 = load i32, ptr @f_precious, align 4
  %73 = icmp ne i32 %72, 0
  %74 = select i1 %71, i1 true, i1 %73
  br i1 %74, label %83, label %75

75:                                               ; preds = %66
  %76 = load ptr, ptr @stderr, align 8, !tbaa !5
  %77 = load ptr, ptr @progname, align 8, !tbaa !5
  %78 = add i64 %67, -1
  %79 = icmp ult i64 %67, 3
  %80 = zext i1 %79 to i64
  %81 = getelementptr inbounds i8, ptr @.str.50, i64 %80
  %82 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %76, ptr noundef nonnull @.str.49, ptr noundef %77, ptr noundef %44, i64 noundef %78, ptr noundef nonnull %81) #21
  br label %319

83:                                               ; preds = %66
  %84 = icmp eq ptr %3, null
  br i1 %84, label %85, label %123

85:                                               ; preds = %83
  %86 = load ptr, ptr @inname, align 8, !tbaa !5
  %87 = icmp eq ptr %86, null
  br i1 %87, label %123, label %88

88:                                               ; preds = %85
  %89 = tail call fastcc noundef ptr @normalname(ptr noundef nonnull %86, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.41)
  %90 = load ptr, ptr @alldescs, align 16, !tbaa !5
  %91 = icmp eq ptr %90, null
  br i1 %91, label %122, label %92

92:                                               ; preds = %88, %118
  %93 = phi ptr [ %120, %118 ], [ %90, %88 ]
  %94 = phi ptr [ %119, %118 ], [ @alldescs, %88 ]
  %95 = getelementptr inbounds %struct.fmtdesc, ptr %93, i64 0, i32 2
  %96 = load ptr, ptr %95, align 8, !tbaa !19
  %97 = icmp eq ptr %96, null
  br i1 %97, label %118, label %98

98:                                               ; preds = %92
  %99 = load i8, ptr %96, align 1, !tbaa !9
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %118, label %101

101:                                              ; preds = %98
  %102 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %89) #19
  %103 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %96) #19
  %104 = icmp ne i64 %103, 0
  %105 = icmp ugt i64 %102, %103
  %106 = select i1 %104, i1 %105, i1 false
  br i1 %106, label %107, label %113

107:                                              ; preds = %101
  %108 = sub i64 %102, %103
  %109 = getelementptr inbounds i8, ptr %89, i64 %108
  %110 = tail call i32 @bcmp(ptr %109, ptr nonnull %96, i64 %103)
  %111 = icmp eq i32 %110, 0
  %112 = select i1 %111, ptr %109, ptr null
  br label %113

113:                                              ; preds = %107, %101
  %114 = phi ptr [ %112, %107 ], [ null, %101 ]
  %115 = icmp eq ptr %114, null
  br i1 %115, label %118, label %116

116:                                              ; preds = %113
  tail call void @free(ptr noundef %89) #20
  %117 = load ptr, ptr %94, align 8, !tbaa !5
  br label %123

118:                                              ; preds = %113, %98, %92
  %119 = getelementptr inbounds ptr, ptr %94, i64 1
  %120 = load ptr, ptr %119, align 8, !tbaa !5
  %121 = icmp eq ptr %120, null
  br i1 %121, label %122, label %92, !llvm.loop !21

122:                                              ; preds = %118, %88
  tail call void @free(ptr noundef %89) #20
  br label %123

123:                                              ; preds = %122, %116, %85, %83, %5
  %124 = phi ptr [ %3, %83 ], [ %3, %5 ], [ %117, %116 ], [ null, %122 ], [ null, %85 ]
  %125 = icmp eq ptr %124, null
  %126 = select i1 %125, ptr @f_ulaw, ptr %124
  %127 = getelementptr inbounds %struct.fmtdesc, ptr %126, i64 0, i32 6
  %128 = load ptr, ptr %127, align 8, !tbaa !22
  store ptr %128, ptr @output, align 8, !tbaa !5
  %129 = getelementptr inbounds %struct.fmtdesc, ptr %126, i64 0, i32 5
  %130 = load ptr, ptr %129, align 8, !tbaa !23
  store ptr %130, ptr @input, align 8, !tbaa !5
  %131 = getelementptr inbounds %struct.fmtdesc, ptr %126, i64 0, i32 3
  %132 = load ptr, ptr %131, align 8, !tbaa !24
  store ptr %132, ptr @init_input, align 8, !tbaa !5
  %133 = getelementptr inbounds %struct.fmtdesc, ptr %126, i64 0, i32 4
  %134 = load ptr, ptr %133, align 8, !tbaa !25
  store ptr %134, ptr @init_output, align 8, !tbaa !5
  %135 = load i32, ptr @f_cat, align 4
  %136 = icmp ne i32 %135, 0
  %137 = select i1 %4, i1 true, i1 %136
  br i1 %137, label %138, label %140

138:                                              ; preds = %123
  %139 = load ptr, ptr @stdout, align 8, !tbaa !5
  store ptr %139, ptr @out, align 8, !tbaa !5
  br label %191

140:                                              ; preds = %123
  %141 = load i32, ptr @f_decode, align 4, !tbaa !10
  %142 = icmp eq i32 %141, 0
  %143 = select i1 %142, ptr @codename, ptr @plainname
  %144 = tail call ptr %143(ptr noundef %0) #20, !callees !26
  %145 = icmp eq ptr %144, null
  br i1 %145, label %319, label %146

146:                                              ; preds = %140
  %147 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %144, i32 noundef 193, i32 noundef 438) #20
  %148 = icmp sgt i32 %147, -1
  br i1 %148, label %182, label %149

149:                                              ; preds = %146
  %150 = tail call ptr @__errno_location() #24
  %151 = load i32, ptr %150, align 4, !tbaa !10
  %152 = icmp eq i32 %151, 17
  br i1 %152, label %153, label %180

153:                                              ; preds = %149
  %154 = load i32, ptr @f_force, align 4, !tbaa !10
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %178

156:                                              ; preds = %153
  %157 = load ptr, ptr @stderr, align 8, !tbaa !5
  %158 = tail call i32 (ptr, ...) @fileno(ptr noundef %157) #20
  %159 = tail call i32 @isatty(i32 noundef %158) #20
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %319, label %161

161:                                              ; preds = %156
  %162 = load ptr, ptr @stderr, align 8, !tbaa !5
  %163 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %162, ptr noundef nonnull @.str.54, ptr noundef nonnull %144, ptr noundef nonnull %144) #21
  %164 = load ptr, ptr @stderr, align 8, !tbaa !5
  %165 = tail call i32 @fflush(ptr noundef %164)
  %166 = load ptr, ptr @stdin, align 8, !tbaa !5
  %167 = tail call i32 @getc(ptr noundef %166)
  br label %168

168:                                              ; preds = %170, %161
  %169 = phi i32 [ %167, %161 ], [ %172, %170 ]
  switch i32 %169, label %170 [
    i32 -1, label %173
    i32 10, label %173
  ]

170:                                              ; preds = %168
  %171 = load ptr, ptr @stdin, align 8, !tbaa !5
  %172 = tail call i32 @getc(ptr noundef %171)
  br label %168, !llvm.loop !27

173:                                              ; preds = %168, %168
  %174 = icmp eq i32 %167, 121
  br i1 %174, label %178, label %175

175:                                              ; preds = %173
  %176 = load ptr, ptr @stderr, align 8, !tbaa !5
  %177 = tail call i64 @fwrite(ptr nonnull @.str.55, i64 17, i64 1, ptr %176) #21
  br label %319

178:                                              ; preds = %173, %153
  %179 = tail call noalias ptr @fopen(ptr noundef nonnull %144, ptr noundef nonnull @.str.51)
  br label %180

180:                                              ; preds = %149, %178
  %181 = phi ptr [ %179, %178 ], [ null, %149 ]
  store ptr %181, ptr @out, align 8, !tbaa !5
  br label %182

182:                                              ; preds = %180, %146
  %183 = load ptr, ptr @out, align 8, !tbaa !5
  %184 = icmp eq ptr %183, null
  br i1 %184, label %185, label %191

185:                                              ; preds = %182
  tail call void @perror(ptr noundef nonnull %144) #21
  %186 = load ptr, ptr @stderr, align 8, !tbaa !5
  %187 = load ptr, ptr @progname, align 8, !tbaa !5
  %188 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %186, ptr noundef nonnull @.str.52, ptr noundef %187, ptr noundef nonnull %144) #21
  br i1 %148, label %189, label %319

189:                                              ; preds = %185
  %190 = tail call i32 @close(i32 noundef %147) #20
  br label %319

191:                                              ; preds = %182, %138
  %192 = phi ptr [ null, %138 ], [ %144, %182 ]
  store ptr %192, ptr @outname, align 8, !tbaa !5
  %193 = load i32, ptr @f_decode, align 4, !tbaa !10
  %194 = icmp eq i32 %193, 0
  %195 = load ptr, ptr @init_output, align 8
  %196 = load ptr, ptr @init_input, align 8
  %197 = select i1 %194, ptr %196, ptr %195
  %198 = tail call i32 %197() #20
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %217, label %200

200:                                              ; preds = %191
  %201 = load ptr, ptr @stderr, align 8, !tbaa !5
  %202 = load ptr, ptr @progname, align 8, !tbaa !5
  %203 = load i32, ptr @f_decode, align 4, !tbaa !10
  %204 = icmp eq i32 %203, 0
  %205 = select i1 %204, ptr @.str.35, ptr @.str.34
  br i1 %204, label %210, label %206

206:                                              ; preds = %200
  %207 = load ptr, ptr @outname, align 8
  %208 = icmp eq ptr %207, null
  %209 = select i1 %208, ptr @.str.36, ptr %207
  br label %214

210:                                              ; preds = %200
  %211 = load ptr, ptr @inname, align 8
  %212 = icmp eq ptr %211, null
  %213 = select i1 %212, ptr @.str.37, ptr %211
  br label %214

214:                                              ; preds = %210, %206
  %215 = phi ptr [ %209, %206 ], [ %213, %210 ]
  %216 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %201, ptr noundef nonnull @.str.33, ptr noundef %202, ptr noundef nonnull %205, ptr noundef nonnull %215) #21
  br label %319

217:                                              ; preds = %191
  %218 = load i32, ptr @f_decode, align 4, !tbaa !10
  %219 = icmp eq i32 %218, 0
  %220 = select i1 %219, ptr @process_encode, ptr @process_decode
  %221 = tail call i32 %220() #20, !callees !28
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %223, label %319

223:                                              ; preds = %217
  %224 = load ptr, ptr @out, align 8, !tbaa !5
  %225 = tail call i32 @fflush(ptr noundef %224)
  %226 = icmp slt i32 %225, 0
  br i1 %226, label %231, label %227

227:                                              ; preds = %223
  %228 = load ptr, ptr @out, align 8, !tbaa !5
  %229 = tail call i32 @ferror(ptr noundef %228) #20
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %241, label %231

231:                                              ; preds = %227, %223
  %232 = load ptr, ptr @outname, align 8
  %233 = icmp eq ptr %232, null
  %234 = select i1 %233, ptr @.str.36, ptr %232
  tail call void @perror(ptr noundef nonnull %234) #21
  %235 = load ptr, ptr @stderr, align 8, !tbaa !5
  %236 = load ptr, ptr @progname, align 8, !tbaa !5
  %237 = load ptr, ptr @outname, align 8
  %238 = icmp eq ptr %237, null
  %239 = select i1 %238, ptr @.str.36, ptr %237
  %240 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %235, ptr noundef nonnull @.str.38, ptr noundef %236, ptr noundef nonnull %239) #21
  br label %319

241:                                              ; preds = %227
  %242 = load ptr, ptr @stdout, align 8, !tbaa !5
  %243 = icmp eq ptr %228, %242
  br i1 %243, label %294, label %244

244:                                              ; preds = %241
  %245 = load i64, ptr getelementptr inbounds (%struct.stat, ptr @instat, i64 0, i32 2), align 8, !tbaa !15
  %246 = icmp ne i64 %245, 0
  %247 = load ptr, ptr @outname, align 8
  %248 = icmp ne ptr %247, null
  %249 = select i1 %246, i1 %248, i1 false
  br i1 %249, label %250, label %255

250:                                              ; preds = %244
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #20
  %251 = load i64, ptr getelementptr inbounds (%struct.stat, ptr @instat, i64 0, i32 11), align 8, !tbaa !29
  store i64 %251, ptr %2, align 16, !tbaa !30
  %252 = load i64, ptr getelementptr inbounds (%struct.stat, ptr @instat, i64 0, i32 13), align 8, !tbaa !31
  %253 = getelementptr inbounds [2 x i64], ptr %2, i64 0, i64 1
  store i64 %252, ptr %253, align 8, !tbaa !30
  %254 = call i32 @utime(ptr noundef nonnull %247, ptr noundef nonnull %2) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #20
  br label %255

255:                                              ; preds = %244, %250
  %256 = load i64, ptr getelementptr inbounds (%struct.stat, ptr @instat, i64 0, i32 2), align 8, !tbaa !15
  %257 = icmp eq i64 %256, 0
  br i1 %257, label %271, label %258

258:                                              ; preds = %255
  %259 = load ptr, ptr @out, align 8, !tbaa !5
  %260 = tail call i32 (ptr, ...) @fileno(ptr noundef %259) #20
  %261 = load i32, ptr getelementptr inbounds (%struct.stat, ptr @instat, i64 0, i32 3), align 8, !tbaa !18
  %262 = and i32 %261, 4095
  %263 = tail call i32 (i32, i32, ...) @fchmod(i32 noundef %260, i32 noundef %262) #20
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %271, label %265

265:                                              ; preds = %258
  %266 = load ptr, ptr @outname, align 8, !tbaa !5
  tail call void @perror(ptr noundef %266) #21
  %267 = load ptr, ptr @stderr, align 8, !tbaa !5
  %268 = load ptr, ptr @progname, align 8, !tbaa !5
  %269 = load ptr, ptr @outname, align 8, !tbaa !5
  %270 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %267, ptr noundef nonnull @.str.60, ptr noundef %268, ptr noundef %269) #21
  br label %271

271:                                              ; preds = %255, %258, %265
  %272 = load i64, ptr getelementptr inbounds (%struct.stat, ptr @instat, i64 0, i32 2), align 8, !tbaa !15
  %273 = icmp eq i64 %272, 0
  br i1 %273, label %280, label %274

274:                                              ; preds = %271
  %275 = load ptr, ptr @out, align 8, !tbaa !5
  %276 = tail call i32 (ptr, ...) @fileno(ptr noundef %275) #20
  %277 = load i32, ptr getelementptr inbounds (%struct.stat, ptr @instat, i64 0, i32 4), align 4, !tbaa !32
  %278 = load i32, ptr getelementptr inbounds (%struct.stat, ptr @instat, i64 0, i32 5), align 8, !tbaa !33
  %279 = tail call i32 (i32, i32, i32, ...) @fchown(i32 noundef %276, i32 noundef %277, i32 noundef %278) #20
  br label %280

280:                                              ; preds = %271, %274
  %281 = load ptr, ptr @out, align 8, !tbaa !5
  %282 = tail call i32 @fclose(ptr noundef %281)
  %283 = icmp slt i32 %282, 0
  %284 = load ptr, ptr @outname, align 8, !tbaa !5
  br i1 %283, label %285, label %290

285:                                              ; preds = %280
  tail call void @perror(ptr noundef %284) #21
  %286 = load ptr, ptr @stderr, align 8, !tbaa !5
  %287 = load ptr, ptr @progname, align 8, !tbaa !5
  %288 = load ptr, ptr @outname, align 8, !tbaa !5
  %289 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %286, ptr noundef nonnull @.str.38, ptr noundef %287, ptr noundef %288) #21
  br label %319

290:                                              ; preds = %280
  %291 = icmp eq ptr %284, %0
  br i1 %291, label %293, label %292

292:                                              ; preds = %290
  tail call void @free(ptr noundef %284) #20
  br label %293

293:                                              ; preds = %292, %290
  store ptr null, ptr @outname, align 8, !tbaa !5
  br label %294

294:                                              ; preds = %293, %241
  store ptr null, ptr @out, align 8, !tbaa !5
  %295 = load ptr, ptr @in, align 8, !tbaa !5
  %296 = load ptr, ptr @stdin, align 8, !tbaa !5
  %297 = icmp eq ptr %295, %296
  br i1 %297, label %359, label %298

298:                                              ; preds = %294
  %299 = tail call i32 @fclose(ptr noundef %295)
  store ptr null, ptr @in, align 8, !tbaa !5
  %300 = load i32, ptr @f_cat, align 4, !tbaa !10
  %301 = icmp ne i32 %300, 0
  %302 = load i32, ptr @f_precious, align 4
  %303 = icmp ne i32 %302, 0
  %304 = select i1 %301, i1 true, i1 %303
  %305 = load ptr, ptr @inname, align 8, !tbaa !5
  br i1 %304, label %315, label %306

306:                                              ; preds = %298
  %307 = tail call i32 @unlink(ptr noundef %305) #20
  %308 = icmp slt i32 %307, 0
  br i1 %308, label %309, label %319

309:                                              ; preds = %306
  %310 = load ptr, ptr @inname, align 8, !tbaa !5
  tail call void @perror(ptr noundef %310) #21
  %311 = load ptr, ptr @stderr, align 8, !tbaa !5
  %312 = load ptr, ptr @progname, align 8, !tbaa !5
  %313 = load ptr, ptr @inname, align 8, !tbaa !5
  %314 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %311, ptr noundef nonnull @.str.39, ptr noundef %312, ptr noundef %313) #21
  br label %319

315:                                              ; preds = %298
  %316 = icmp eq ptr %305, %0
  br i1 %316, label %318, label %317

317:                                              ; preds = %315
  tail call void @free(ptr noundef %305) #20
  br label %318

318:                                              ; preds = %317, %315
  store ptr null, ptr @inname, align 8, !tbaa !5
  br label %359

319:                                              ; preds = %175, %156, %185, %189, %140, %75, %62, %54, %45, %25, %306, %309, %217, %285, %231, %214
  %320 = load ptr, ptr @out, align 8, !tbaa !5
  %321 = icmp eq ptr %320, null
  %322 = load ptr, ptr @stdout, align 8
  %323 = icmp eq ptr %320, %322
  %324 = select i1 %321, i1 true, i1 %323
  br i1 %324, label %339, label %325

325:                                              ; preds = %319
  %326 = tail call i32 @fclose(ptr noundef nonnull %320)
  store ptr null, ptr @out, align 8, !tbaa !5
  %327 = load ptr, ptr @outname, align 8, !tbaa !5
  %328 = tail call i32 @unlink(ptr noundef %327) #20
  %329 = icmp slt i32 %328, 0
  br i1 %329, label %330, label %339

330:                                              ; preds = %325
  %331 = tail call ptr @__errno_location() #24
  %332 = load i32, ptr %331, align 4, !tbaa !10
  switch i32 %332, label %333 [
    i32 2, label %339
    i32 4, label %339
  ]

333:                                              ; preds = %330
  %334 = load ptr, ptr @outname, align 8, !tbaa !5
  tail call void @perror(ptr noundef %334) #21
  %335 = load ptr, ptr @stderr, align 8, !tbaa !5
  %336 = load ptr, ptr @progname, align 8, !tbaa !5
  %337 = load ptr, ptr @outname, align 8, !tbaa !5
  %338 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %335, ptr noundef nonnull @.str.40, ptr noundef %336, ptr noundef %337) #21
  br label %339

339:                                              ; preds = %330, %330, %325, %333, %319
  %340 = load ptr, ptr @in, align 8, !tbaa !5
  %341 = icmp eq ptr %340, null
  %342 = load ptr, ptr @stdin, align 8
  %343 = icmp eq ptr %340, %342
  %344 = select i1 %341, i1 true, i1 %343
  br i1 %344, label %347, label %345

345:                                              ; preds = %339
  %346 = tail call i32 @fclose(ptr noundef nonnull %340)
  store ptr null, ptr @in, align 8, !tbaa !5
  br label %347

347:                                              ; preds = %345, %339
  %348 = load ptr, ptr @inname, align 8, !tbaa !5
  %349 = icmp eq ptr %348, null
  %350 = icmp eq ptr %348, %0
  %351 = or i1 %349, %350
  br i1 %351, label %353, label %352

352:                                              ; preds = %347
  tail call void @free(ptr noundef %348) #20
  br label %353

353:                                              ; preds = %352, %347
  %354 = load ptr, ptr @outname, align 8, !tbaa !5
  %355 = icmp eq ptr %354, null
  %356 = icmp eq ptr %354, %0
  %357 = or i1 %355, %356
  br i1 %357, label %359, label %358

358:                                              ; preds = %353
  tail call void @free(ptr noundef %354) #20
  br label %359

359:                                              ; preds = %353, %358, %294, %318
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind
declare ptr @__sysv_signal(i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @unlink(ptr nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal noundef i32 @process_decode() unnamed_addr #7 {
  %1 = alloca [33 x i8], align 16
  %2 = alloca [160 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %1) #20
  call void @llvm.lifetime.start.p0(i64 320, ptr nonnull %2) #20
  %3 = tail call ptr @gsm_create() #20
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = load ptr, ptr @progname, align 8, !tbaa !5
  tail call void @perror(ptr noundef %6) #21
  br label %64

7:                                                ; preds = %0
  %8 = tail call i32 @gsm_option(ptr noundef nonnull %3, i32 noundef 2, ptr noundef nonnull @f_fast) #20
  %9 = tail call i32 @gsm_option(ptr noundef nonnull %3, i32 noundef 1, ptr noundef nonnull @f_verbose) #20
  br label %10

10:                                               ; preds = %41, %7
  %11 = load ptr, ptr @in, align 8, !tbaa !5
  %12 = call i64 @fread(ptr noundef nonnull %1, i64 noundef 1, i64 noundef 33, ptr noundef %11)
  %13 = trunc i64 %12 to i32
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %51

15:                                               ; preds = %10
  %16 = and i64 %12, 4294967295
  %17 = icmp eq i64 %16, 33
  br i1 %17, label %30, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr @stderr, align 8, !tbaa !5
  %20 = load ptr, ptr @progname, align 8, !tbaa !5
  %21 = sub nsw i64 33, %16
  %22 = icmp eq i64 %16, 32
  %23 = zext i1 %22 to i64
  %24 = getelementptr inbounds i8, ptr @.str.50, i64 %23
  %25 = load ptr, ptr @inname, align 8
  %26 = icmp eq ptr %25, null
  %27 = select i1 %26, ptr @.str.37, ptr %25
  %28 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.56, ptr noundef %20, i64 noundef %21, ptr noundef nonnull %24, ptr noundef nonnull %27) #21
  call void @gsm_destroy(ptr noundef nonnull %3) #20
  %29 = tail call ptr @__errno_location() #24
  store i32 0, ptr %29, align 4, !tbaa !10
  br label %64

30:                                               ; preds = %15
  %31 = call i32 @gsm_decode(ptr noundef nonnull %3, ptr noundef nonnull %1, ptr noundef nonnull %2) #20
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %30
  %34 = load ptr, ptr @stderr, align 8, !tbaa !5
  %35 = load ptr, ptr @progname, align 8, !tbaa !5
  %36 = load ptr, ptr @inname, align 8
  %37 = icmp eq ptr %36, null
  %38 = select i1 %37, ptr @.str.37, ptr %36
  %39 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %34, ptr noundef nonnull @.str.57, ptr noundef %35, ptr noundef nonnull %38) #21
  call void @gsm_destroy(ptr noundef nonnull %3) #20
  %40 = tail call ptr @__errno_location() #24
  store i32 0, ptr %40, align 4, !tbaa !10
  br label %64

41:                                               ; preds = %30
  %42 = load ptr, ptr @output, align 8, !tbaa !5
  %43 = call i32 %42(ptr noundef nonnull %2) #20
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %10, !llvm.loop !34

45:                                               ; preds = %41
  %46 = load ptr, ptr @outname, align 8, !tbaa !5
  call void @perror(ptr noundef %46) #21
  %47 = load ptr, ptr @stderr, align 8, !tbaa !5
  %48 = load ptr, ptr @progname, align 8, !tbaa !5
  %49 = load ptr, ptr @outname, align 8, !tbaa !5
  %50 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %47, ptr noundef nonnull @.str.58, ptr noundef %48, ptr noundef %49) #21
  call void @gsm_destroy(ptr noundef nonnull %3) #20
  br label %64

51:                                               ; preds = %10
  %52 = icmp slt i32 %13, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %51
  %54 = load ptr, ptr @inname, align 8
  %55 = icmp eq ptr %54, null
  %56 = select i1 %55, ptr @.str.37, ptr %54
  call void @perror(ptr noundef nonnull %56) #21
  %57 = load ptr, ptr @stderr, align 8, !tbaa !5
  %58 = load ptr, ptr @progname, align 8, !tbaa !5
  %59 = load ptr, ptr @inname, align 8
  %60 = icmp eq ptr %59, null
  %61 = select i1 %60, ptr @.str.37, ptr %59
  %62 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %57, ptr noundef nonnull @.str.59, ptr noundef %58, ptr noundef nonnull %61) #21
  call void @gsm_destroy(ptr noundef nonnull %3) #20
  br label %64

63:                                               ; preds = %51
  call void @gsm_destroy(ptr noundef nonnull %3) #20
  br label %64

64:                                               ; preds = %63, %53, %45, %33, %18, %5
  %65 = phi i32 [ -1, %18 ], [ -1, %33 ], [ -1, %45 ], [ -1, %53 ], [ 0, %63 ], [ -1, %5 ]
  call void @llvm.lifetime.end.p0(i64 320, ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %1) #20
  ret i32 %65
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @process_encode() unnamed_addr #7 {
  %1 = alloca [160 x i16], align 16
  %2 = alloca [33 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 320, ptr nonnull %1) #20
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %2) #20
  %3 = tail call ptr @gsm_create() #20
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = load ptr, ptr @progname, align 8, !tbaa !5
  tail call void @perror(ptr noundef %6) #21
  br label %48

7:                                                ; preds = %0
  %8 = tail call i32 @gsm_option(ptr noundef nonnull %3, i32 noundef 2, ptr noundef nonnull @f_fast) #20
  %9 = tail call i32 @gsm_option(ptr noundef nonnull %3, i32 noundef 1, ptr noundef nonnull @f_verbose) #20
  br label %10

10:                                               ; preds = %21, %7
  %11 = load ptr, ptr @input, align 8, !tbaa !5
  %12 = call i32 %11(ptr noundef nonnull %1) #20
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %35

14:                                               ; preds = %10
  %15 = icmp ult i32 %12, 160
  br i1 %15, label %16, label %21

16:                                               ; preds = %14
  %17 = zext nneg i32 %12 to i64
  %18 = getelementptr inbounds i16, ptr %1, i64 %17
  %19 = shl nuw nsw i64 %17, 1
  %20 = sub nuw nsw i64 320, %19
  call void @llvm.memset.p0.i64(ptr nonnull align 2 %18, i8 0, i64 %20, i1 false)
  br label %21

21:                                               ; preds = %16, %14
  call void @gsm_encode(ptr noundef nonnull %3, ptr noundef nonnull %1, ptr noundef nonnull %2) #20
  %22 = load ptr, ptr @out, align 8, !tbaa !5
  %23 = call i64 @fwrite(ptr noundef nonnull %2, i64 noundef 33, i64 noundef 1, ptr noundef %22)
  %24 = icmp eq i64 %23, 1
  br i1 %24, label %10, label %25, !llvm.loop !35

25:                                               ; preds = %21
  %26 = load ptr, ptr @outname, align 8
  %27 = icmp eq ptr %26, null
  %28 = select i1 %27, ptr @.str.36, ptr %26
  call void @perror(ptr noundef nonnull %28) #21
  %29 = load ptr, ptr @stderr, align 8, !tbaa !5
  %30 = load ptr, ptr @progname, align 8, !tbaa !5
  %31 = load ptr, ptr @outname, align 8
  %32 = icmp eq ptr %31, null
  %33 = select i1 %32, ptr @.str.36, ptr %31
  %34 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %29, ptr noundef nonnull @.str.58, ptr noundef %30, ptr noundef nonnull %33) #21
  call void @gsm_destroy(ptr noundef nonnull %3) #20
  br label %48

35:                                               ; preds = %10
  %36 = icmp slt i32 %12, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %35
  %38 = load ptr, ptr @inname, align 8
  %39 = icmp eq ptr %38, null
  %40 = select i1 %39, ptr @.str.37, ptr %38
  call void @perror(ptr noundef nonnull %40) #21
  %41 = load ptr, ptr @stderr, align 8, !tbaa !5
  %42 = load ptr, ptr @progname, align 8, !tbaa !5
  %43 = load ptr, ptr @inname, align 8
  %44 = icmp eq ptr %43, null
  %45 = select i1 %44, ptr @.str.37, ptr %43
  %46 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %41, ptr noundef nonnull @.str.59, ptr noundef %42, ptr noundef nonnull %45) #21
  call void @gsm_destroy(ptr noundef nonnull %3) #20
  br label %48

47:                                               ; preds = %35
  call void @gsm_destroy(ptr noundef nonnull %3) #20
  br label %48

48:                                               ; preds = %47, %37, %25, %5
  %49 = phi i32 [ -1, %25 ], [ -1, %37 ], [ 0, %47 ], [ -1, %5 ]
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(i64 320, ptr nonnull %1) #20
  ret i32 %49
}

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind memory(read)
declare noundef i32 @ferror(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare void @perror(ptr nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #12

; Function Attrs: nounwind uwtable
define internal noundef ptr @codename(ptr noundef %0) unnamed_addr #7 {
  %2 = tail call fastcc ptr @normalname(ptr noundef %0, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.45)
  ret ptr %2
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @normalname(ptr noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #7 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %51, label %5

5:                                                ; preds = %3
  %6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #19
  %7 = add i64 %6, 1
  %8 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #19
  %9 = add i64 %7, %8
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #19
  %11 = add i64 %9, %10
  %12 = tail call noalias ptr @malloc(i64 noundef %11) #23
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %5
  %15 = load ptr, ptr @stderr, align 8, !tbaa !5
  %16 = load ptr, ptr @progname, align 8, !tbaa !5
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef nonnull @.str.46, ptr noundef %16, i64 noundef %11) #21
  tail call void @onintr()
  unreachable

18:                                               ; preds = %5
  %19 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(1) %0) #20
  %20 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %12) #19
  %21 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #19
  %22 = icmp ne i64 %21, 0
  %23 = icmp ugt i64 %20, %21
  %24 = select i1 %22, i1 %23, i1 false
  br i1 %24, label %25, label %31

25:                                               ; preds = %18
  %26 = sub i64 %20, %21
  %27 = getelementptr inbounds i8, ptr %12, i64 %26
  %28 = tail call i32 @bcmp(ptr nonnull %27, ptr %2, i64 %21)
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, ptr %27, ptr null
  br label %31

31:                                               ; preds = %18, %25
  %32 = phi ptr [ %30, %25 ], [ null, %18 ]
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %32, ptr noundef nonnull dereferenceable(1) %1) #20
  br label %51

36:                                               ; preds = %31
  %37 = load i8, ptr %1, align 1, !tbaa !9
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %51, label %39

39:                                               ; preds = %36
  %40 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #19
  %41 = icmp ne i64 %40, 0
  %42 = icmp ugt i64 %20, %40
  %43 = select i1 %41, i1 %42, i1 false
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = sub i64 %20, %40
  %46 = getelementptr inbounds i8, ptr %12, i64 %45
  %47 = tail call i32 @bcmp(ptr nonnull %46, ptr nonnull %1, i64 %40)
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %39, %44
  %50 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(1) %1) #20
  br label %51

51:                                               ; preds = %34, %49, %44, %36, %3
  %52 = phi ptr [ null, %3 ], [ %12, %36 ], [ %12, %44 ], [ %12, %49 ], [ %12, %34 ]
  ret ptr %52
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i32 @fstat(i32 noundef, ptr nocapture noundef) local_unnamed_addr #6

declare i32 @fileno(...) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define internal noundef ptr @plainname(ptr noundef %0) unnamed_addr #7 {
  %2 = tail call fastcc ptr @normalname(ptr noundef %0, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.41)
  ret ptr %2
}

; Function Attrs: nofree
declare noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #15

declare i32 @close(i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare i32 @isatty(i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #6

declare ptr @gsm_create() local_unnamed_addr #0

declare i32 @gsm_option(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

declare void @gsm_destroy(ptr noundef) local_unnamed_addr #0

declare i32 @gsm_decode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #16

declare void @gsm_encode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @utime(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #6

declare i32 @fchmod(...) local_unnamed_addr #0

declare i32 @fchown(...) local_unnamed_addr #0

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #17

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #18

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #17 = { nofree nounwind }
attributes #18 = { nofree nounwind willreturn memory(argmem: read) }
attributes #19 = { nounwind willreturn memory(read) }
attributes #20 = { nounwind }
attributes #21 = { cold }
attributes #22 = { noreturn nounwind }
attributes #23 = { nounwind allocsize(0) }
attributes #24 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !7, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !13}
!15 = !{!16, !17, i64 16}
!16 = !{!"stat", !17, i64 0, !17, i64 8, !17, i64 16, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !17, i64 40, !17, i64 48, !17, i64 56, !17, i64 64, !17, i64 72, !17, i64 80, !17, i64 88, !17, i64 96, !17, i64 104, !17, i64 112, !7, i64 120}
!17 = !{!"long", !7, i64 0}
!18 = !{!16, !11, i64 24}
!19 = !{!20, !6, i64 16}
!20 = !{!"fmtdesc", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48}
!21 = distinct !{!21, !13}
!22 = !{!20, !6, i64 48}
!23 = !{!20, !6, i64 40}
!24 = !{!20, !6, i64 24}
!25 = !{!20, !6, i64 32}
!26 = !{ptr @codename, ptr @plainname}
!27 = distinct !{!27, !13}
!28 = !{ptr @process_decode, ptr @process_encode}
!29 = !{!16, !17, i64 72}
!30 = !{!17, !17, i64 0}
!31 = !{!16, !17, i64 88}
!32 = !{!16, !11, i64 28}
!33 = !{!16, !11, i64 32}
!34 = distinct !{!34, !13}
!35 = distinct !{!35, !13}
