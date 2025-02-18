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

; Function Attrs: noreturn nounwind uwtable
define dso_local void @JMDecHelpExit() local_unnamed_addr #0 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !34
  %2 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 806, i64 1, ptr %1) #12
  tail call void @exit(i32 noundef -1) #13
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @ParseCommand(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #2 {
  %4 = icmp eq i32 %1, 2
  br i1 %4, label %5, label %18

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
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load ptr, ptr @stderr, align 8, !tbaa !34
  %17 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 806, i64 1, ptr %16) #12
  tail call void @exit(i32 noundef -1) #13
  unreachable

18:                                               ; preds = %12, %3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4016) @cfgparams, i8 0, i64 4016, i1 false)
  %19 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %20 = tail call i32 @InitParams(ptr noundef nonnull @Map) #15
  %21 = icmp sgt i32 %1, 2
  br i1 %21, label %22, label %41

22:                                               ; preds = %18
  %23 = getelementptr inbounds ptr, ptr %2, i64 1
  %24 = load ptr, ptr %23, align 8, !tbaa !34
  %25 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %24, ptr noundef nonnull dereferenceable(3) @.str.21, i64 noundef 2) #14
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = getelementptr inbounds ptr, ptr %2, i64 2
  %29 = load ptr, ptr %28, align 8, !tbaa !34
  %30 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %29, ptr noundef nonnull dereferenceable(5) @.str.22, i64 noundef 4) #14
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %31, ptr null, ptr %29
  br label %33

33:                                               ; preds = %27, %22
  %34 = phi i32 [ 3, %27 ], [ 1, %22 ]
  %35 = phi ptr [ %32, %27 ], [ @.str.16, %22 ]
  %36 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %24, ptr noundef nonnull dereferenceable(3) @.str.19, i64 noundef 2) #14
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load ptr, ptr @stderr, align 8, !tbaa !34
  %40 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 806, i64 1, ptr %39) #12
  tail call void @exit(i32 noundef -1) #13
  unreachable

41:                                               ; preds = %33, %18
  %42 = phi i32 [ %34, %33 ], [ 1, %18 ]
  %43 = phi ptr [ %35, %33 ], [ @.str.16, %18 ]
  %44 = icmp eq ptr %43, null
  br i1 %44, label %53, label %45

45:                                               ; preds = %41
  %46 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, ptr noundef nonnull %43)
  %47 = tail call ptr @GetConfigFileContent(ptr noundef nonnull %43) #15
  %48 = icmp eq ptr %47, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %47) #14
  %51 = trunc i64 %50 to i32
  tail call void @ParseContent(ptr noundef %0, ptr noundef nonnull @Map, ptr noundef nonnull %47, i32 noundef %51) #15
  %52 = tail call i32 @putchar(i32 10)
  tail call void @free(ptr noundef %47) #15
  br label %53

53:                                               ; preds = %45, %49, %41
  %54 = icmp slt i32 %42, %1
  br i1 %54, label %55, label %236

55:                                               ; preds = %53
  %56 = getelementptr inbounds %struct.inp_par, ptr %0, i64 0, i32 16
  %57 = getelementptr inbounds %struct.inp_par, ptr %0, i64 0, i32 24
  %58 = getelementptr inbounds %struct.inp_par, ptr %0, i64 0, i32 7
  %59 = getelementptr inbounds %struct.inp_par, ptr %0, i64 0, i32 1
  %60 = getelementptr inbounds %struct.inp_par, ptr %0, i64 0, i32 2
  br label %61

61:                                               ; preds = %55, %233
  %62 = phi i32 [ %42, %55 ], [ %234, %233 ]
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds ptr, ptr %2, i64 %63
  %65 = load ptr, ptr %64, align 8, !tbaa !34
  %66 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %65, ptr noundef nonnull dereferenceable(3) @.str.19, i64 noundef 2) #14
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %61
  %69 = load ptr, ptr @stderr, align 8, !tbaa !34
  %70 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 806, i64 1, ptr %69) #12
  tail call void @exit(i32 noundef -1) #13
  unreachable

71:                                               ; preds = %61
  %72 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %65, ptr noundef nonnull dereferenceable(3) @.str.25, i64 noundef 2) #14
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %71
  %75 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %65, ptr noundef nonnull dereferenceable(3) @.str.26, i64 noundef 2) #14
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %90

77:                                               ; preds = %74, %71
  %78 = getelementptr ptr, ptr %64, i64 1
  %79 = load ptr, ptr %78, align 8, !tbaa !34
  %80 = tail call ptr @GetConfigFileContent(ptr noundef %79) #15
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 300) #15
  br label %83

83:                                               ; preds = %82, %77
  %84 = load ptr, ptr %78, align 8, !tbaa !34
  %85 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, ptr noundef %84)
  %86 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %80) #14
  %87 = trunc i64 %86 to i32
  tail call void @ParseContent(ptr noundef %0, ptr noundef nonnull @Map, ptr noundef %80, i32 noundef %87) #15
  %88 = tail call i32 @putchar(i32 10)
  tail call void @free(ptr noundef %80) #15
  %89 = add nsw i32 %62, 2
  br label %233

90:                                               ; preds = %74
  %91 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %65, ptr noundef nonnull dereferenceable(3) @.str.28, i64 noundef 2) #14
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %90
  %94 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %65, ptr noundef nonnull dereferenceable(3) @.str.29, i64 noundef 2) #14
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %93, %90
  %97 = getelementptr ptr, ptr %64, i64 1
  %98 = load ptr, ptr %97, align 8, !tbaa !34
  %99 = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %98, i64 noundef 255) #15
  %100 = add nsw i32 %62, 2
  br label %233

101:                                              ; preds = %93
  %102 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %65, ptr noundef nonnull dereferenceable(3) @.str.30, i64 noundef 2) #14
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %101
  %105 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %65, ptr noundef nonnull dereferenceable(3) @.str.31, i64 noundef 2) #14
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %104, %101
  %108 = getelementptr ptr, ptr %64, i64 1
  %109 = load ptr, ptr %108, align 8, !tbaa !34
  %110 = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %60, ptr noundef nonnull dereferenceable(1) %109, i64 noundef 255) #15
  %111 = add nsw i32 %62, 2
  br label %233

112:                                              ; preds = %104
  %113 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %65, ptr noundef nonnull dereferenceable(3) @.str.32, i64 noundef 2) #14
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %112
  %116 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %65, ptr noundef nonnull dereferenceable(3) @.str.33, i64 noundef 2) #14
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %115, %112
  %119 = getelementptr ptr, ptr %64, i64 1
  %120 = load ptr, ptr %119, align 8, !tbaa !34
  %121 = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(1) %120, i64 noundef 255) #15
  %122 = add nsw i32 %62, 2
  br label %233

123:                                              ; preds = %115
  %124 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %65, ptr noundef nonnull dereferenceable(3) @.str.34, i64 noundef 2) #14
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %129, label %126

126:                                              ; preds = %123
  %127 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %65, ptr noundef nonnull dereferenceable(3) @.str.35, i64 noundef 2) #14
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %126, %123
  store i32 1, ptr %58, align 8, !tbaa !38
  %130 = add nsw i32 %62, 1
  br label %233

131:                                              ; preds = %126
  %132 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %65, ptr noundef nonnull dereferenceable(3) @.str.36, i64 noundef 2) #14
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %137, label %134

134:                                              ; preds = %131
  %135 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %65, ptr noundef nonnull dereferenceable(3) @.str.37, i64 noundef 2) #14
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %145

137:                                              ; preds = %134, %131
  %138 = getelementptr ptr, ptr %64, i64 1
  %139 = load ptr, ptr %138, align 8, !tbaa !34
  %140 = tail call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %139, ptr noundef nonnull @.str.38, ptr noundef nonnull %57) #15
  %141 = icmp eq i32 %140, 1
  br i1 %141, label %143, label %142

142:                                              ; preds = %137
  tail call void @error(ptr noundef nonnull @.str.47, i32 noundef 500) #15
  br label %143

143:                                              ; preds = %137, %142
  %144 = add nsw i32 %62, 2
  br label %233

145:                                              ; preds = %134
  %146 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %65, ptr noundef nonnull dereferenceable(5) @.str.39, i64 noundef 4) #14
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %151, label %148

148:                                              ; preds = %145
  %149 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %65, ptr noundef nonnull dereferenceable(5) @.str.40, i64 noundef 4) #14
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %159

151:                                              ; preds = %148, %145
  %152 = getelementptr ptr, ptr %64, i64 1
  %153 = load ptr, ptr %152, align 8, !tbaa !34
  %154 = tail call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %153, ptr noundef nonnull @.str.38, ptr noundef nonnull %56) #15
  %155 = icmp eq i32 %154, 1
  br i1 %155, label %157, label %156

156:                                              ; preds = %151
  tail call void @error(ptr noundef nonnull @.str.47, i32 noundef 500) #15
  br label %157

157:                                              ; preds = %151, %156
  %158 = add nsw i32 %62, 2
  br label %233

159:                                              ; preds = %148
  %160 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %65, ptr noundef nonnull dereferenceable(3) @.str.41, i64 noundef 2) #14
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %165, label %162

162:                                              ; preds = %159
  %163 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %65, ptr noundef nonnull dereferenceable(3) @.str.42, i64 noundef 2) #14
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %231

165:                                              ; preds = %162, %159
  %166 = add nsw i32 %62, 1
  %167 = icmp slt i32 %166, %1
  br i1 %167, label %168, label %186

168:                                              ; preds = %165
  %169 = sext i32 %166 to i64
  br label %170

170:                                              ; preds = %168, %177
  %171 = phi i64 [ %169, %168 ], [ %178, %177 ]
  %172 = phi i32 [ 0, %168 ], [ %181, %177 ]
  %173 = getelementptr inbounds ptr, ptr %2, i64 %171
  %174 = load ptr, ptr %173, align 8, !tbaa !34
  %175 = load i8, ptr %174, align 1, !tbaa !44
  %176 = icmp eq i8 %175, 45
  br i1 %176, label %184, label %177

177:                                              ; preds = %170
  %178 = add nsw i64 %171, 1
  %179 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %174) #14
  %180 = trunc i64 %179 to i32
  %181 = add nsw i32 %172, %180
  %182 = trunc i64 %178 to i32
  %183 = icmp eq i32 %182, %1
  br i1 %183, label %186, label %170, !llvm.loop !45

184:                                              ; preds = %170
  %185 = trunc i64 %171 to i32
  br label %186

186:                                              ; preds = %184, %177, %165
  %187 = phi i32 [ 0, %165 ], [ %172, %184 ], [ %181, %177 ]
  %188 = phi i32 [ %166, %165 ], [ %185, %184 ], [ %1, %177 ]
  %189 = add nsw i32 %187, 1000
  %190 = sext i32 %189 to i64
  %191 = tail call noalias ptr @malloc(i64 noundef %190) #16
  %192 = icmp eq ptr %191, null
  br i1 %192, label %193, label %194

193:                                              ; preds = %186
  tail call void @no_mem_exit(ptr noundef nonnull @.str.43) #15
  br label %194

194:                                              ; preds = %193, %186
  store i8 0, ptr %191, align 1, !tbaa !44
  %195 = icmp slt i32 %166, %188
  br i1 %195, label %196, label %225

196:                                              ; preds = %194
  %197 = sext i32 %166 to i64
  br label %198

198:                                              ; preds = %196, %219
  %199 = phi i64 [ %197, %196 ], [ %220, %219 ]
  %200 = getelementptr inbounds ptr, ptr %2, i64 %199
  %201 = load ptr, ptr %200, align 8, !tbaa !34
  %202 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %191) #14
  %203 = shl i64 %202, 32
  %204 = ashr exact i64 %203, 32
  %205 = getelementptr inbounds i8, ptr %191, i64 %204
  br label %206

206:                                              ; preds = %216, %198
  %207 = phi ptr [ %201, %198 ], [ %218, %216 ]
  %208 = phi ptr [ %205, %198 ], [ %217, %216 ]
  %209 = load i8, ptr %207, align 1, !tbaa !44
  switch i8 %209, label %214 [
    i8 0, label %219
    i8 61, label %210
  ]

210:                                              ; preds = %206
  %211 = getelementptr inbounds i8, ptr %208, i64 1
  store i8 32, ptr %208, align 1, !tbaa !44
  %212 = getelementptr inbounds i8, ptr %208, i64 2
  store i8 61, ptr %211, align 1, !tbaa !44
  %213 = getelementptr inbounds i8, ptr %208, i64 3
  store i8 32, ptr %212, align 1, !tbaa !44
  br label %216

214:                                              ; preds = %206
  %215 = getelementptr inbounds i8, ptr %208, i64 1
  store i8 %209, ptr %208, align 1, !tbaa !44
  br label %216

216:                                              ; preds = %214, %210
  %217 = phi ptr [ %213, %210 ], [ %215, %214 ]
  %218 = getelementptr inbounds i8, ptr %207, i64 1
  br label %206, !llvm.loop !48

219:                                              ; preds = %206
  store i8 0, ptr %208, align 1, !tbaa !44
  %220 = add nsw i64 %199, 1
  %221 = trunc i64 %220 to i32
  %222 = icmp eq i32 %188, %221
  br i1 %222, label %223, label %198, !llvm.loop !49

223:                                              ; preds = %219
  %224 = trunc i64 %220 to i32
  br label %225

225:                                              ; preds = %223, %194
  %226 = phi i32 [ %166, %194 ], [ %224, %223 ]
  %227 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, ptr noundef nonnull %191)
  %228 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %191) #14
  %229 = trunc i64 %228 to i32
  tail call void @ParseContent(ptr noundef %0, ptr noundef nonnull @Map, ptr noundef nonnull %191, i32 noundef %229) #15
  tail call void @free(ptr noundef %191) #15
  %230 = tail call i32 @putchar(i32 10)
  br label %233

231:                                              ; preds = %162
  %232 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.45, i32 noundef %62, ptr noundef %65) #15
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 300) #15
  br label %233

233:                                              ; preds = %96, %118, %143, %225, %231, %157, %129, %107, %83
  %234 = phi i32 [ %89, %83 ], [ %100, %96 ], [ %111, %107 ], [ %122, %118 ], [ %130, %129 ], [ %144, %143 ], [ %158, %157 ], [ %226, %225 ], [ %62, %231 ]
  %235 = icmp slt i32 %234, %1
  br i1 %235, label %61, label %236, !llvm.loop !50

236:                                              ; preds = %233, %53
  %237 = tail call i32 @putchar(i32 10)
  %238 = tail call i32 @TestParams(ptr noundef nonnull @Map, ptr noundef null) #15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4016) @cfgparams, ptr noundef nonnull align 8 dereferenceable(4016) %0, i64 4016, i1 false), !tbaa.struct !51
  %239 = getelementptr inbounds %struct.inp_par, ptr %0, i64 0, i32 12
  store i32 0, ptr %239, align 4, !tbaa !54
  %240 = getelementptr inbounds %struct.inp_par, ptr %0, i64 0, i32 25
  %241 = load i32, ptr %240, align 4, !tbaa !55
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %245, label %243

243:                                              ; preds = %236
  %244 = tail call i32 @DisplayParams(ptr noundef nonnull @Map, ptr noundef nonnull @.str.46) #15
  br label %245

245:                                              ; preds = %243, %236
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

declare i32 @InitParams(ptr noundef) local_unnamed_addr #6

declare ptr @GetConfigFileContent(ptr noundef) local_unnamed_addr #6

declare void @ParseContent(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #7

declare void @error(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #9

declare void @no_mem_exit(ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

declare i32 @DisplayParams(ptr noundef, ptr noundef) local_unnamed_addr #6

declare i32 @TestParams(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #11

attributes #0 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nofree nounwind }
attributes #12 = { cold }
attributes #13 = { noreturn nounwind }
attributes #14 = { nounwind willreturn memory(read) }
attributes #15 = { nounwind }
attributes #16 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 11233431}
!8 = !{!"MaxCount", i64 921600}
!9 = !{!"MaxInternalCount", i64 921600}
!10 = !{!"MaxFunctionCount", i64 921600}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 921600, i32 8}
!18 = !{i32 100000, i64 921600, i32 8}
!19 = !{i32 200000, i64 921600, i32 8}
!20 = !{i32 300000, i64 921600, i32 8}
!21 = !{i32 400000, i64 921600, i32 8}
!22 = !{i32 500000, i64 921600, i32 8}
!23 = !{i32 600000, i64 921600, i32 8}
!24 = !{i32 700000, i64 915762, i32 9}
!25 = !{i32 800000, i64 908579, i32 10}
!26 = !{i32 900000, i64 460800, i32 13}
!27 = !{i32 950000, i64 460800, i32 13}
!28 = !{i32 990000, i64 115200, i32 14}
!29 = !{i32 999000, i64 12790, i32 20}
!30 = !{i32 999900, i64 536, i32 29}
!31 = !{i32 999990, i64 90, i32 32}
!32 = !{i32 999999, i64 1, i32 66}
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
!45 = distinct !{!45, !46, !47}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!"llvm.loop.unroll.disable"}
!48 = distinct !{!48, !46, !47}
!49 = distinct !{!49, !46, !47}
!50 = distinct !{!50, !46, !47}
!51 = !{i64 0, i64 255, !44, i64 255, i64 255, !44, i64 510, i64 255, !44, i64 768, i64 4, !52, i64 772, i64 4, !52, i64 776, i64 4, !52, i64 780, i64 4, !52, i64 784, i64 4, !52, i64 788, i64 4, !52, i64 792, i64 4, !52, i64 796, i64 4, !52, i64 800, i64 8, !53, i64 808, i64 12, !44, i64 820, i64 12, !44, i64 832, i64 4, !52, i64 836, i64 4, !52, i64 840, i64 4, !52, i64 844, i64 4, !52, i64 848, i64 4, !52, i64 852, i64 4, !52, i64 856, i64 4, !52, i64 860, i64 4, !52, i64 864, i64 12, !44, i64 876, i64 4, !52, i64 880, i64 12, !44, i64 892, i64 12, !44, i64 904, i64 12, !44, i64 916, i64 4, !52, i64 920, i64 4, !52, i64 928, i64 4, !52, i64 932, i64 4, !52, i64 936, i64 8, !53, i64 944, i64 12, !44, i64 956, i64 12, !44, i64 968, i64 4, !52, i64 972, i64 4, !52, i64 976, i64 4, !52, i64 980, i64 4, !52, i64 984, i64 4, !52, i64 988, i64 4, !52, i64 992, i64 4, !52, i64 996, i64 4, !52, i64 1000, i64 12, !44, i64 1012, i64 4, !52, i64 1016, i64 12, !44, i64 1028, i64 12, !44, i64 1040, i64 12, !44, i64 1052, i64 4, !52, i64 1056, i64 4, !52, i64 1064, i64 4, !52, i64 1068, i64 4, !52, i64 1072, i64 255, !44, i64 1327, i64 255, !44, i64 1582, i64 255, !44, i64 1840, i64 4, !52, i64 1844, i64 4, !52, i64 1848, i64 4, !52, i64 1852, i64 4, !52, i64 1856, i64 8, !53, i64 1864, i64 12, !44, i64 1876, i64 12, !44, i64 1888, i64 4, !52, i64 1892, i64 4, !52, i64 1896, i64 4, !52, i64 1900, i64 4, !52, i64 1904, i64 4, !52, i64 1908, i64 4, !52, i64 1912, i64 4, !52, i64 1916, i64 4, !52, i64 1920, i64 12, !44, i64 1932, i64 4, !52, i64 1936, i64 12, !44, i64 1948, i64 12, !44, i64 1960, i64 12, !44, i64 1972, i64 4, !52, i64 1976, i64 4, !52, i64 1984, i64 4, !52, i64 1988, i64 4, !52, i64 1992, i64 4, !52, i64 1996, i64 4, !52, i64 2000, i64 4, !52, i64 2004, i64 4, !52, i64 2008, i64 4, !52, i64 2012, i64 4, !52, i64 2016, i64 4, !52, i64 2020, i64 4, !52, i64 2024, i64 4, !52, i64 2032, i64 8, !34, i64 2040, i64 255, !44, i64 2295, i64 255, !44, i64 2550, i64 255, !44, i64 2808, i64 4, !52, i64 2812, i64 4, !52, i64 2816, i64 4, !52, i64 2820, i64 4, !52, i64 2824, i64 8, !53, i64 2832, i64 12, !44, i64 2844, i64 12, !44, i64 2856, i64 4, !52, i64 2860, i64 4, !52, i64 2864, i64 4, !52, i64 2868, i64 4, !52, i64 2872, i64 4, !52, i64 2876, i64 4, !52, i64 2880, i64 4, !52, i64 2884, i64 4, !52, i64 2888, i64 12, !44, i64 2900, i64 4, !52, i64 2904, i64 12, !44, i64 2916, i64 12, !44, i64 2928, i64 12, !44, i64 2940, i64 4, !52, i64 2944, i64 4, !52, i64 2952, i64 4, !52, i64 2956, i64 4, !52, i64 2960, i64 4, !52, i64 2964, i64 4, !52, i64 2968, i64 4, !52, i64 2972, i64 4, !52, i64 2976, i64 4, !52, i64 2980, i64 4, !52, i64 2984, i64 4, !52, i64 2988, i64 4, !52, i64 2992, i64 4, !52, i64 3000, i64 8, !34, i64 3008, i64 255, !44, i64 3263, i64 255, !44, i64 3518, i64 255, !44, i64 3776, i64 4, !52, i64 3780, i64 4, !52, i64 3784, i64 4, !52, i64 3788, i64 4, !52, i64 3792, i64 8, !53, i64 3800, i64 12, !44, i64 3812, i64 12, !44, i64 3824, i64 4, !52, i64 3828, i64 4, !52, i64 3832, i64 4, !52, i64 3836, i64 4, !52, i64 3840, i64 4, !52, i64 3844, i64 4, !52, i64 3848, i64 4, !52, i64 3852, i64 4, !52, i64 3856, i64 12, !44, i64 3868, i64 4, !52, i64 3872, i64 12, !44, i64 3884, i64 12, !44, i64 3896, i64 12, !44, i64 3908, i64 4, !52, i64 3912, i64 4, !52, i64 3920, i64 4, !52, i64 3924, i64 4, !52, i64 3928, i64 4, !52, i64 3932, i64 4, !52, i64 3936, i64 4, !52, i64 3940, i64 4, !52, i64 3944, i64 4, !52, i64 3948, i64 4, !52, i64 3952, i64 4, !52, i64 3956, i64 4, !52, i64 3960, i64 4, !52, i64 3968, i64 8, !34, i64 3976, i64 4, !52, i64 3980, i64 4, !52, i64 3984, i64 4, !52, i64 3988, i64 4, !52, i64 3992, i64 4, !52, i64 3996, i64 4, !52, i64 4000, i64 4, !52, i64 4004, i64 4, !52, i64 4008, i64 4, !52, i64 4012, i64 4, !52}
!52 = !{!40, !40, i64 0}
!53 = !{!42, !42, i64 0}
!54 = !{!39, !40, i64 1068}
!55 = !{!39, !40, i64 4012}
