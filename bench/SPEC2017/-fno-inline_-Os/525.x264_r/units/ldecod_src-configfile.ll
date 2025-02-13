; ModuleID = 'ldecod_src/configfile.c'
source_filename = "ldecod_src/configfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.inp_par = type { [255 x i8], [255 x i8], [255 x i8], i32, i32, i32, i32, i32, i32, %struct.frame_format, %struct.frame_format, i32, i32, %struct.video_data_file, %struct.video_data_file, %struct.video_data_file, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.frame_format = type { i32, i32, double, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32, [3 x i32], [3 x i32], [3 x i32], i32, i32 }
%struct.video_data_file = type { [255 x i8], [255 x i8], [255 x i8], i32, i32, %struct.frame_format, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.Mapping = type { ptr, ptr, i32, double, i32, double, double, i32 }

@.str = private unnamed_addr constant [10 x i8] c"InputFile\00", align 1
@cfgparams = dso_local global %struct.inp_par zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"OutputFile\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"RefFile\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"WriteUV\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"FileFormat\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"RefOffset\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"POCScale\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"DisplayDecParams\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"ConcealMode\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"RefPOCGap\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"POCGap\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"Silent\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"IntraProfileDeblocking\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"DecFrmNum\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"DecodeAllLayers\00", align 1
@Map = dso_local global [16 x %struct.Mapping] [%struct.Mapping { ptr @.str, ptr @cfgparams, i32 1, double 0.000000e+00, i32 0, double 0.000000e+00, double 0.000000e+00, i32 255 }, %struct.Mapping { ptr @.str.1, ptr getelementptr (i8, ptr @cfgparams, i64 255), i32 1, double 0.000000e+00, i32 0, double 0.000000e+00, double 0.000000e+00, i32 255 }, %struct.Mapping { ptr @.str.2, ptr getelementptr (i8, ptr @cfgparams, i64 510), i32 1, double 0.000000e+00, i32 0, double 0.000000e+00, double 0.000000e+00, i32 255 }, %struct.Mapping { ptr @.str.3, ptr getelementptr (i8, ptr @cfgparams, i64 780), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00, i32 0 }, %struct.Mapping { ptr @.str.4, ptr getelementptr (i8, ptr @cfgparams, i64 768), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00, i32 0 }, %struct.Mapping { ptr @.str.5, ptr getelementptr (i8, ptr @cfgparams, i64 772), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 2.560000e+02, i32 0 }, %struct.Mapping { ptr @.str.6, ptr getelementptr (i8, ptr @cfgparams, i64 776), i32 0, double 2.000000e+00, i32 1, double 1.000000e+00, double 1.000000e+01, i32 0 }, %struct.Mapping { ptr @.str.7, ptr getelementptr (i8, ptr @cfgparams, i64 4012), i32 0, double 1.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00, i32 0 }, %struct.Mapping { ptr @.str.8, ptr getelementptr (i8, ptr @cfgparams, i64 3980), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 2.000000e+00, i32 0 }, %struct.Mapping { ptr @.str.9, ptr getelementptr (i8, ptr @cfgparams, i64 3984), i32 0, double 2.000000e+00, i32 1, double 0.000000e+00, double 4.000000e+00, i32 0 }, %struct.Mapping { ptr @.str.10, ptr getelementptr (i8, ptr @cfgparams, i64 3988), i32 0, double 2.000000e+00, i32 1, double 0.000000e+00, double 4.000000e+00, i32 0 }, %struct.Mapping { ptr @.str.11, ptr getelementptr (i8, ptr @cfgparams, i64 784), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00, i32 0 }, %struct.Mapping { ptr @.str.12, ptr getelementptr (i8, ptr @cfgparams, i64 788), i32 0, double 1.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00, i32 0 }, %struct.Mapping { ptr @.str.13, ptr getelementptr (i8, ptr @cfgparams, i64 4008), i32 0, double 0.000000e+00, i32 2, double 0.000000e+00, double 0.000000e+00, i32 0 }, %struct.Mapping { ptr @.str.14, ptr getelementptr (i8, ptr @cfgparams, i64 3976), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00, i32 0 }, %struct.Mapping { ptr null, ptr null, i32 -1, double 0.000000e+00, i32 0, double 0.000000e+00, double 0.000000e+00, i32 0 }], align 16
@stderr = external local_unnamed_addr global ptr, align 8
@.str.15 = private unnamed_addr constant [807 x i8] c"\0A   ldecod [-h] [-d defdec.cfg] {[-f curenc1.cfg]...[-f curencN.cfg]} {[-p EncParam1=EncValue1]..[-p EncParamM=EncValueM]}\0A\0A## Parameters\0A\0A## Options\0A   -h :  prints function usage\0A   -d :  use <defdec.cfg> as default file for parameter initializations.\0A         If not used then file defaults to encoder.cfg in local directory.\0A   -f :  read <curencM.cfg> for reseting selected encoder parameters.\0A         Multiple files could be used that set different parameters\0A   -p :  Set parameter <DecParamM> to <DecValueM>.\0A         See default decoder.cfg file for description of all parameters.\0A\0A## Examples of usage:\0A   ldecod\0A   ldecod  -h\0A   ldecod  -d default.cfg\0A   ldecod  -f curenc1.cfg\0A   ldecod  -f curenc1.cfg -p InputFile=\22e:\\data\\container_qcif_30.264\22 -p OutputFile=\22dec.yuv\22 -p RefFile=\22Rec.yuv\22\0A\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"decoder.cfg\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"-v\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"-d\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"Parsing Configfile %s\0A\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"-f\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"-F\00", align 1
@errortext = external global [300 x i8], align 16
@.str.27 = private unnamed_addr constant [22 x i8] c"Parsing Configfile %s\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"-i\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"-I\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"-r\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"-R\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"-o\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"-O\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"-s\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"-S\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"-n\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"-N\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"-mpr\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"-MPR\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"-p\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"-P\00", align 1
@.str.43 = private unnamed_addr constant [19 x i8] c"Configure: content\00", align 1
@.str.44 = private unnamed_addr constant [33 x i8] c"Parsing command line string '%s'\00", align 1
@.str.45 = private unnamed_addr constant [79 x i8] c"Error in command line, ac %d, around string '%s', missing -f or -p parameters?\00", align 1
@.str.46 = private unnamed_addr constant [19 x i8] c"Decoder Parameters\00", align 1
@.str.47 = private unnamed_addr constant [42 x i8] c"init_conf: error reading from config file\00", align 1
@str = private unnamed_addr constant [30 x i8] c"Setting Default Parameters...\00", align 1
@str.48 = private unnamed_addr constant [14 x i8] c"JM 17 (FRExt)\00", align 1

; Function Attrs: noinline noreturn nounwind optsize uwtable
define dso_local void @JMDecHelpExit() local_unnamed_addr #0 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !34
  %2 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 806, i64 1, ptr %1) #12
  tail call void @exit(i32 noundef -1) #13
  unreachable
}

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ParseCommand(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #2 {
  %4 = icmp eq i32 %1, 2
  br i1 %4, label %5, label %16

5:                                                ; preds = %3
  %6 = getelementptr inbounds ptr, ptr %2, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(3) @.str.17, i64 noundef 2) #14
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.48)
  tail call void @exit(i32 noundef -1) #13
  unreachable

12:                                               ; preds = %5
  %13 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(3) @.str.19, i64 noundef 2) #14
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  tail call void @JMDecHelpExit() #15
  unreachable

16:                                               ; preds = %12, %3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4016) @cfgparams, i8 0, i64 4016, i1 false)
  %17 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %18 = tail call i32 @InitParams(ptr noundef nonnull @Map) #16
  %19 = icmp sgt i32 %1, 2
  br i1 %19, label %20, label %37

20:                                               ; preds = %16
  %21 = getelementptr inbounds ptr, ptr %2, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !34
  %23 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %22, ptr noundef nonnull dereferenceable(3) @.str.21, i64 noundef 2) #14
  %24 = icmp eq i32 %23, 0
  %25 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %22, ptr noundef nonnull dereferenceable(3) @.str.19, i64 noundef 2) #14
  %26 = icmp eq i32 %25, 0
  br i1 %24, label %27, label %28

27:                                               ; preds = %20
  br i1 %26, label %29, label %30

28:                                               ; preds = %20
  br i1 %26, label %29, label %37

29:                                               ; preds = %28, %27
  tail call void @JMDecHelpExit() #15
  unreachable

30:                                               ; preds = %27
  %31 = getelementptr inbounds ptr, ptr %2, i64 2
  %32 = load ptr, ptr %31, align 8, !tbaa !34
  %33 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %32, ptr noundef nonnull dereferenceable(5) @.str.22, i64 noundef 4) #14
  %34 = icmp eq i32 %33, 0
  %35 = icmp eq ptr %32, null
  %36 = or i1 %34, %35
  br i1 %36, label %47, label %37

37:                                               ; preds = %28, %16, %30
  %38 = phi ptr [ %32, %30 ], [ @.str.16, %16 ], [ @.str.16, %28 ]
  %39 = phi i32 [ 3, %30 ], [ 1, %16 ], [ 1, %28 ]
  %40 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, ptr noundef nonnull %38) #15
  %41 = tail call ptr @GetConfigFileContent(ptr noundef nonnull %38) #16
  %42 = icmp eq ptr %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %37
  %44 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %41) #14
  %45 = trunc i64 %44 to i32
  tail call void @ParseContent(ptr noundef %0, ptr noundef nonnull @Map, ptr noundef nonnull %41, i32 noundef %45) #16
  %46 = tail call i32 @putchar(i32 10)
  tail call void @free(ptr noundef nonnull %41) #16
  br label %47

47:                                               ; preds = %37, %43, %30
  %48 = phi i32 [ %39, %37 ], [ %39, %43 ], [ 3, %30 ]
  %49 = icmp slt i32 %48, %1
  br i1 %49, label %50, label %221

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.inp_par, ptr %0, i64 0, i32 16
  %52 = getelementptr inbounds %struct.inp_par, ptr %0, i64 0, i32 24
  %53 = getelementptr inbounds %struct.inp_par, ptr %0, i64 0, i32 7
  %54 = getelementptr inbounds %struct.inp_par, ptr %0, i64 0, i32 1
  %55 = getelementptr inbounds %struct.inp_par, ptr %0, i64 0, i32 2
  br label %56

56:                                               ; preds = %50, %218
  %57 = phi i32 [ %48, %50 ], [ %219, %218 ]
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds ptr, ptr %2, i64 %58
  %60 = load ptr, ptr %59, align 8, !tbaa !34
  %61 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %60, ptr noundef nonnull dereferenceable(3) @.str.19, i64 noundef 2) #14
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  tail call void @JMDecHelpExit() #15
  unreachable

64:                                               ; preds = %56
  %65 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %60, ptr noundef nonnull dereferenceable(3) @.str.25, i64 noundef 2) #14
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  %68 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %60, ptr noundef nonnull dereferenceable(3) @.str.26, i64 noundef 2) #14
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %83

70:                                               ; preds = %67, %64
  %71 = getelementptr ptr, ptr %59, i64 1
  %72 = load ptr, ptr %71, align 8, !tbaa !34
  %73 = tail call ptr @GetConfigFileContent(ptr noundef %72) #16
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 300) #16
  br label %76

76:                                               ; preds = %75, %70
  %77 = load ptr, ptr %71, align 8, !tbaa !34
  %78 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, ptr noundef %77) #15
  %79 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %73) #14
  %80 = trunc i64 %79 to i32
  tail call void @ParseContent(ptr noundef %0, ptr noundef nonnull @Map, ptr noundef %73, i32 noundef %80) #16
  %81 = tail call i32 @putchar(i32 10)
  tail call void @free(ptr noundef %73) #16
  %82 = add nsw i32 %57, 2
  br label %218

83:                                               ; preds = %67
  %84 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %60, ptr noundef nonnull dereferenceable(3) @.str.28, i64 noundef 2) #14
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %83
  %87 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %60, ptr noundef nonnull dereferenceable(3) @.str.29, i64 noundef 2) #14
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %86, %83
  %90 = getelementptr ptr, ptr %59, i64 1
  %91 = load ptr, ptr %90, align 8, !tbaa !34
  %92 = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %91, i64 noundef 255) #16
  %93 = add nsw i32 %57, 2
  br label %218

94:                                               ; preds = %86
  %95 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %60, ptr noundef nonnull dereferenceable(3) @.str.30, i64 noundef 2) #14
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %94
  %98 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %60, ptr noundef nonnull dereferenceable(3) @.str.31, i64 noundef 2) #14
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %97, %94
  %101 = getelementptr ptr, ptr %59, i64 1
  %102 = load ptr, ptr %101, align 8, !tbaa !34
  %103 = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(1) %102, i64 noundef 255) #16
  %104 = add nsw i32 %57, 2
  br label %218

105:                                              ; preds = %97
  %106 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %60, ptr noundef nonnull dereferenceable(3) @.str.32, i64 noundef 2) #14
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %105
  %109 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %60, ptr noundef nonnull dereferenceable(3) @.str.33, i64 noundef 2) #14
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %108, %105
  %112 = getelementptr ptr, ptr %59, i64 1
  %113 = load ptr, ptr %112, align 8, !tbaa !34
  %114 = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(1) %113, i64 noundef 255) #16
  %115 = add nsw i32 %57, 2
  br label %218

116:                                              ; preds = %108
  %117 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %60, ptr noundef nonnull dereferenceable(3) @.str.34, i64 noundef 2) #14
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %116
  %120 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %60, ptr noundef nonnull dereferenceable(3) @.str.35, i64 noundef 2) #14
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %119, %116
  store i32 1, ptr %53, align 8, !tbaa !38
  %123 = add nsw i32 %57, 1
  br label %218

124:                                              ; preds = %119
  %125 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %60, ptr noundef nonnull dereferenceable(3) @.str.36, i64 noundef 2) #14
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %130, label %127

127:                                              ; preds = %124
  %128 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %60, ptr noundef nonnull dereferenceable(3) @.str.37, i64 noundef 2) #14
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %127, %124
  %131 = getelementptr ptr, ptr %59, i64 1
  %132 = load ptr, ptr %131, align 8, !tbaa !34
  %133 = tail call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %132, ptr noundef nonnull @.str.38, ptr noundef nonnull %52) #16
  tail call fastcc void @conf_read_check(i32 noundef %133) #15
  %134 = add nsw i32 %57, 2
  br label %218

135:                                              ; preds = %127
  %136 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %60, ptr noundef nonnull dereferenceable(5) @.str.39, i64 noundef 4) #14
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %141, label %138

138:                                              ; preds = %135
  %139 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %60, ptr noundef nonnull dereferenceable(5) @.str.40, i64 noundef 4) #14
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %138, %135
  %142 = getelementptr ptr, ptr %59, i64 1
  %143 = load ptr, ptr %142, align 8, !tbaa !34
  %144 = tail call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %143, ptr noundef nonnull @.str.38, ptr noundef nonnull %51) #16
  tail call fastcc void @conf_read_check(i32 noundef %144) #15
  %145 = add nsw i32 %57, 2
  br label %218

146:                                              ; preds = %138
  %147 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %60, ptr noundef nonnull dereferenceable(3) @.str.41, i64 noundef 2) #14
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %152, label %149

149:                                              ; preds = %146
  %150 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %60, ptr noundef nonnull dereferenceable(3) @.str.42, i64 noundef 2) #14
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %216

152:                                              ; preds = %149, %146
  %153 = add nsw i32 %57, 1
  %154 = icmp slt i32 %153, %1
  br i1 %154, label %155, label %173

155:                                              ; preds = %152
  %156 = sext i32 %153 to i64
  br label %157

157:                                              ; preds = %155, %164
  %158 = phi i64 [ %156, %155 ], [ %165, %164 ]
  %159 = phi i32 [ 0, %155 ], [ %168, %164 ]
  %160 = getelementptr inbounds ptr, ptr %2, i64 %158
  %161 = load ptr, ptr %160, align 8, !tbaa !34
  %162 = load i8, ptr %161, align 1, !tbaa !44
  %163 = icmp eq i8 %162, 45
  br i1 %163, label %171, label %164

164:                                              ; preds = %157
  %165 = add nsw i64 %158, 1
  %166 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %161) #14
  %167 = trunc i64 %166 to i32
  %168 = add nsw i32 %159, %167
  %169 = trunc i64 %165 to i32
  %170 = icmp eq i32 %169, %1
  br i1 %170, label %173, label %157, !llvm.loop !45

171:                                              ; preds = %157
  %172 = trunc i64 %158 to i32
  br label %173

173:                                              ; preds = %164, %171, %152
  %174 = phi i32 [ 0, %152 ], [ %159, %171 ], [ %168, %164 ]
  %175 = phi i32 [ %153, %152 ], [ %172, %171 ], [ %1, %164 ]
  %176 = add nsw i32 %174, 1000
  %177 = sext i32 %176 to i64
  %178 = tail call noalias ptr @malloc(i64 noundef %177) #17
  %179 = icmp eq ptr %178, null
  br i1 %179, label %180, label %181

180:                                              ; preds = %173
  tail call void @no_mem_exit(ptr noundef nonnull @.str.43) #16
  br label %181

181:                                              ; preds = %180, %173
  store i8 0, ptr %178, align 1, !tbaa !44
  %182 = icmp slt i32 %153, %175
  br i1 %182, label %183, label %210

183:                                              ; preds = %181
  %184 = sext i32 %153 to i64
  br label %185

185:                                              ; preds = %183, %206
  %186 = phi i64 [ %184, %183 ], [ %207, %206 ]
  %187 = getelementptr inbounds ptr, ptr %2, i64 %186
  %188 = load ptr, ptr %187, align 8, !tbaa !34
  %189 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %178) #14
  %190 = shl i64 %189, 32
  %191 = ashr exact i64 %190, 32
  %192 = getelementptr inbounds i8, ptr %178, i64 %191
  br label %193

193:                                              ; preds = %203, %185
  %194 = phi ptr [ %188, %185 ], [ %205, %203 ]
  %195 = phi ptr [ %192, %185 ], [ %204, %203 ]
  %196 = load i8, ptr %194, align 1, !tbaa !44
  switch i8 %196, label %201 [
    i8 0, label %206
    i8 61, label %197
  ]

197:                                              ; preds = %193
  %198 = getelementptr inbounds i8, ptr %195, i64 1
  store i8 32, ptr %195, align 1, !tbaa !44
  %199 = getelementptr inbounds i8, ptr %195, i64 2
  store i8 61, ptr %198, align 1, !tbaa !44
  %200 = getelementptr inbounds i8, ptr %195, i64 3
  store i8 32, ptr %199, align 1, !tbaa !44
  br label %203

201:                                              ; preds = %193
  %202 = getelementptr inbounds i8, ptr %195, i64 1
  store i8 %196, ptr %195, align 1, !tbaa !44
  br label %203

203:                                              ; preds = %201, %197
  %204 = phi ptr [ %200, %197 ], [ %202, %201 ]
  %205 = getelementptr inbounds i8, ptr %194, i64 1
  br label %193, !llvm.loop !47

206:                                              ; preds = %193
  store i8 0, ptr %195, align 1, !tbaa !44
  %207 = add nsw i64 %186, 1
  %208 = trunc i64 %207 to i32
  %209 = icmp eq i32 %175, %208
  br i1 %209, label %210, label %185, !llvm.loop !48

210:                                              ; preds = %206, %181
  %211 = phi i32 [ %153, %181 ], [ %175, %206 ]
  %212 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, ptr noundef nonnull %178) #15
  %213 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %178) #14
  %214 = trunc i64 %213 to i32
  tail call void @ParseContent(ptr noundef %0, ptr noundef nonnull @Map, ptr noundef nonnull %178, i32 noundef %214) #16
  tail call void @free(ptr noundef %178) #16
  %215 = tail call i32 @putchar(i32 10)
  br label %218

216:                                              ; preds = %149
  %217 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.45, i32 noundef %57, ptr noundef %60) #16
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 300) #16
  br label %218

218:                                              ; preds = %89, %111, %130, %210, %216, %141, %122, %100, %76
  %219 = phi i32 [ %82, %76 ], [ %93, %89 ], [ %104, %100 ], [ %115, %111 ], [ %123, %122 ], [ %134, %130 ], [ %145, %141 ], [ %211, %210 ], [ %57, %216 ]
  %220 = icmp slt i32 %219, %1
  br i1 %220, label %56, label %221, !llvm.loop !49

221:                                              ; preds = %218, %47
  %222 = tail call i32 @putchar(i32 10)
  tail call fastcc void @PatchInp() #15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4016) @cfgparams, ptr noundef nonnull align 8 dereferenceable(4016) %0, i64 4016, i1 false), !tbaa.struct !50
  %223 = getelementptr inbounds %struct.inp_par, ptr %0, i64 0, i32 12
  store i32 0, ptr %223, align 4, !tbaa !53
  %224 = getelementptr inbounds %struct.inp_par, ptr %0, i64 0, i32 25
  %225 = load i32, ptr %224, align 4, !tbaa !54
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %229, label %227

227:                                              ; preds = %221
  %228 = tail call i32 @DisplayParams(ptr noundef nonnull @Map, ptr noundef nonnull @.str.46) #16
  br label %229

229:                                              ; preds = %227, %221
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: optsize
declare i32 @InitParams(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @GetConfigFileContent(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @ParseContent(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @error(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @conf_read_check(i32 noundef %0) unnamed_addr #2 !PGOFuncName !55 {
  %2 = icmp eq i32 %0, 1
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.47, i32 noundef 500) #16
  br label %4

4:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @no_mem_exit(ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind optsize
declare noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @PatchInp() unnamed_addr #2 !PGOFuncName !56 {
  %1 = tail call i32 @TestParams(ptr noundef nonnull @Map, ptr noundef null) #16
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: optsize
declare i32 @DisplayParams(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @TestParams(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #11

attributes #0 = { noinline noreturn nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nofree nounwind }
attributes #12 = { cold }
attributes #13 = { noreturn nounwind optsize }
attributes #14 = { nounwind optsize willreturn memory(read) }
attributes #15 = { optsize }
attributes #16 = { nounwind optsize }
attributes #17 = { nounwind optsize allocsize(0) }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 5602379}
!4 = !{!"MaxCount", i64 1843200}
!5 = !{!"MaxInternalCount", i64 1843200}
!6 = !{!"MaxFunctionCount", i64 28800}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1843200, i32 2}
!14 = !{i32 100000, i64 1843200, i32 2}
!15 = !{i32 200000, i64 1843200, i32 2}
!16 = !{i32 300000, i64 1843200, i32 2}
!17 = !{i32 400000, i64 1843200, i32 2}
!18 = !{i32 500000, i64 1843200, i32 2}
!19 = !{i32 600000, i64 1843200, i32 2}
!20 = !{i32 700000, i64 921600, i32 4}
!21 = !{i32 800000, i64 921600, i32 4}
!22 = !{i32 900000, i64 921600, i32 4}
!23 = !{i32 950000, i64 921600, i32 4}
!24 = !{i32 990000, i64 28800, i32 6}
!25 = !{i32 999000, i64 14400, i32 7}
!26 = !{i32 999900, i64 720, i32 8}
!27 = !{i32 999990, i64 21, i32 9}
!28 = !{i32 999999, i64 1, i32 36}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !40, i64 784}
!39 = !{!"inp_par", !36, i64 0, !36, i64 255, !36, i64 510, !40, i64 768, !40, i64 772, !40, i64 776, !40, i64 780, !40, i64 784, !40, i64 788, !41, i64 792, !41, i64 928, !40, i64 1064, !40, i64 1068, !43, i64 1072, !43, i64 2040, !43, i64 3008, !40, i64 3976, !40, i64 3980, !40, i64 3984, !40, i64 3988, !40, i64 3992, !40, i64 3996, !40, i64 4000, !40, i64 4004, !40, i64 4008, !40, i64 4012}
!40 = !{!"int", !36, i64 0}
!41 = !{!"frame_format", !40, i64 0, !40, i64 4, !42, i64 8, !36, i64 16, !36, i64 28, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !40, i64 64, !40, i64 68, !36, i64 72, !40, i64 84, !36, i64 88, !36, i64 100, !36, i64 112, !40, i64 124, !40, i64 128}
!42 = !{!"double", !36, i64 0}
!43 = !{!"video_data_file", !36, i64 0, !36, i64 255, !36, i64 510, !40, i64 768, !40, i64 772, !41, i64 776, !40, i64 912, !40, i64 916, !40, i64 920, !40, i64 924, !40, i64 928, !40, i64 932, !40, i64 936, !40, i64 940, !40, i64 944, !40, i64 948, !40, i64 952, !35, i64 960}
!44 = !{!36, !36, i64 0}
!45 = distinct !{!45, !46}
!46 = !{!"llvm.loop.mustprogress"}
!47 = distinct !{!47, !46}
!48 = distinct !{!48, !46}
!49 = distinct !{!49, !46}
!50 = !{i64 0, i64 255, !44, i64 255, i64 255, !44, i64 510, i64 255, !44, i64 768, i64 4, !51, i64 772, i64 4, !51, i64 776, i64 4, !51, i64 780, i64 4, !51, i64 784, i64 4, !51, i64 788, i64 4, !51, i64 792, i64 4, !51, i64 796, i64 4, !51, i64 800, i64 8, !52, i64 808, i64 12, !44, i64 820, i64 12, !44, i64 832, i64 4, !51, i64 836, i64 4, !51, i64 840, i64 4, !51, i64 844, i64 4, !51, i64 848, i64 4, !51, i64 852, i64 4, !51, i64 856, i64 4, !51, i64 860, i64 4, !51, i64 864, i64 12, !44, i64 876, i64 4, !51, i64 880, i64 12, !44, i64 892, i64 12, !44, i64 904, i64 12, !44, i64 916, i64 4, !51, i64 920, i64 4, !51, i64 928, i64 4, !51, i64 932, i64 4, !51, i64 936, i64 8, !52, i64 944, i64 12, !44, i64 956, i64 12, !44, i64 968, i64 4, !51, i64 972, i64 4, !51, i64 976, i64 4, !51, i64 980, i64 4, !51, i64 984, i64 4, !51, i64 988, i64 4, !51, i64 992, i64 4, !51, i64 996, i64 4, !51, i64 1000, i64 12, !44, i64 1012, i64 4, !51, i64 1016, i64 12, !44, i64 1028, i64 12, !44, i64 1040, i64 12, !44, i64 1052, i64 4, !51, i64 1056, i64 4, !51, i64 1064, i64 4, !51, i64 1068, i64 4, !51, i64 1072, i64 255, !44, i64 1327, i64 255, !44, i64 1582, i64 255, !44, i64 1840, i64 4, !51, i64 1844, i64 4, !51, i64 1848, i64 4, !51, i64 1852, i64 4, !51, i64 1856, i64 8, !52, i64 1864, i64 12, !44, i64 1876, i64 12, !44, i64 1888, i64 4, !51, i64 1892, i64 4, !51, i64 1896, i64 4, !51, i64 1900, i64 4, !51, i64 1904, i64 4, !51, i64 1908, i64 4, !51, i64 1912, i64 4, !51, i64 1916, i64 4, !51, i64 1920, i64 12, !44, i64 1932, i64 4, !51, i64 1936, i64 12, !44, i64 1948, i64 12, !44, i64 1960, i64 12, !44, i64 1972, i64 4, !51, i64 1976, i64 4, !51, i64 1984, i64 4, !51, i64 1988, i64 4, !51, i64 1992, i64 4, !51, i64 1996, i64 4, !51, i64 2000, i64 4, !51, i64 2004, i64 4, !51, i64 2008, i64 4, !51, i64 2012, i64 4, !51, i64 2016, i64 4, !51, i64 2020, i64 4, !51, i64 2024, i64 4, !51, i64 2032, i64 8, !34, i64 2040, i64 255, !44, i64 2295, i64 255, !44, i64 2550, i64 255, !44, i64 2808, i64 4, !51, i64 2812, i64 4, !51, i64 2816, i64 4, !51, i64 2820, i64 4, !51, i64 2824, i64 8, !52, i64 2832, i64 12, !44, i64 2844, i64 12, !44, i64 2856, i64 4, !51, i64 2860, i64 4, !51, i64 2864, i64 4, !51, i64 2868, i64 4, !51, i64 2872, i64 4, !51, i64 2876, i64 4, !51, i64 2880, i64 4, !51, i64 2884, i64 4, !51, i64 2888, i64 12, !44, i64 2900, i64 4, !51, i64 2904, i64 12, !44, i64 2916, i64 12, !44, i64 2928, i64 12, !44, i64 2940, i64 4, !51, i64 2944, i64 4, !51, i64 2952, i64 4, !51, i64 2956, i64 4, !51, i64 2960, i64 4, !51, i64 2964, i64 4, !51, i64 2968, i64 4, !51, i64 2972, i64 4, !51, i64 2976, i64 4, !51, i64 2980, i64 4, !51, i64 2984, i64 4, !51, i64 2988, i64 4, !51, i64 2992, i64 4, !51, i64 3000, i64 8, !34, i64 3008, i64 255, !44, i64 3263, i64 255, !44, i64 3518, i64 255, !44, i64 3776, i64 4, !51, i64 3780, i64 4, !51, i64 3784, i64 4, !51, i64 3788, i64 4, !51, i64 3792, i64 8, !52, i64 3800, i64 12, !44, i64 3812, i64 12, !44, i64 3824, i64 4, !51, i64 3828, i64 4, !51, i64 3832, i64 4, !51, i64 3836, i64 4, !51, i64 3840, i64 4, !51, i64 3844, i64 4, !51, i64 3848, i64 4, !51, i64 3852, i64 4, !51, i64 3856, i64 12, !44, i64 3868, i64 4, !51, i64 3872, i64 12, !44, i64 3884, i64 12, !44, i64 3896, i64 12, !44, i64 3908, i64 4, !51, i64 3912, i64 4, !51, i64 3920, i64 4, !51, i64 3924, i64 4, !51, i64 3928, i64 4, !51, i64 3932, i64 4, !51, i64 3936, i64 4, !51, i64 3940, i64 4, !51, i64 3944, i64 4, !51, i64 3948, i64 4, !51, i64 3952, i64 4, !51, i64 3956, i64 4, !51, i64 3960, i64 4, !51, i64 3968, i64 8, !34, i64 3976, i64 4, !51, i64 3980, i64 4, !51, i64 3984, i64 4, !51, i64 3988, i64 4, !51, i64 3992, i64 4, !51, i64 3996, i64 4, !51, i64 4000, i64 4, !51, i64 4004, i64 4, !51, i64 4008, i64 4, !51, i64 4012, i64 4, !51}
!51 = !{!40, !40, i64 0}
!52 = !{!42, !42, i64 0}
!53 = !{!39, !40, i64 1068}
!54 = !{!39, !40, i64 4012}
!55 = !{!"configfile.c:conf_read_check"}
!56 = !{!"configfile.c:PatchInp"}
