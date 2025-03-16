; ModuleID = 'zfont1.c'
source_filename = "zfont1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.op_def = type { ptr, ptr }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16 }
%union.v = type { i64 }
%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.build_proc_refs_s = type { %struct.ref_s, %struct.ref_s }
%struct.gs_type1_data_s = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i64, i64, i64, i32, float, float, %struct.anon, float, i32, %struct.anon.0, %struct.anon.1, i32, %struct.anon.2, i32, %struct.anon.3, %struct.anon.4, %struct.anon.5, %struct.anon.6, %struct.anon.7 }
%struct.anon = type { i32, [14 x float] }
%struct.anon.0 = type { i32, [14 x float] }
%struct.anon.1 = type { i32, [10 x float] }
%struct.anon.2 = type { i32, [10 x float] }
%struct.anon.3 = type { i32, [1 x float] }
%struct.anon.4 = type { i32, [1 x float] }
%struct.anon.5 = type { i32, [12 x float] }
%struct.anon.6 = type { i32, [12 x float] }
%struct.anon.7 = type { i32, [16 x float] }
%struct.gs_font_type1_s = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, i32, i32, %struct.gs_type1_data_s }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_font_procs_s = type { ptr, ptr, ptr, ptr, %struct.gx_xfont_callbacks_s, ptr, ptr, ptr }
%struct.gx_xfont_callbacks_s = type { ptr, ptr }
%struct.gs_font_name_s = type { [48 x i8], i32 }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gs_point_s = type { double, double }
%struct.gs_uid_s = type { i64, ptr }
%struct.font_data_s = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %union._fs }
%union._fs = type { %struct._f1 }
%struct._f1 = type { %struct.ref_s, %struct.ref_s, %struct.ref_s }

@zfont1_op_defs.op_defs_ = internal constant [3 x %struct.op_def] [%struct.op_def { ptr @.str, ptr @zbuildfont1 }, %struct.op_def { ptr @.str.1, ptr @zbuildfont4 }, %struct.op_def zeroinitializer], align 16
@.str = private unnamed_addr constant [13 x i8] c"2.buildfont1\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"2.buildfont4\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"%Type1BuildChar\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"%Type1BuildGlyph\00", align 1
@buildfont1or4.no_subrs = internal global %struct.ref_s zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"Private\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"OtherSubrs\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"Subrs\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"CharstringType\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"GlobalSubrs\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"gsubrNumberBias\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"defaultWidthX\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"nominalWidthX\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"initialRandomSeed\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"lenIV\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"subroutineNumberBias\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"BlueFuzz\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"BlueScale\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"BlueShift\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"BlueValues\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"ExpansionFactor\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"FamilyBlues\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"FamilyOtherBlues\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"ForceBold\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"LanguageGroup\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"OtherBlues\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"RndStemUp\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"StdHW\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"StdVW\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"StemSnapH\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"StemSnapV\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"WeightVector\00", align 1
@st_gs_font_type1 = external constant %struct.gs_memory_struct_type_s, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @zfont1_op_defs() local_unnamed_addr #0 {
  ret ptr @zfont1_op_defs.op_defs_
}

; Function Attrs: nounwind uwtable
define internal i32 @zbuildfont1(ptr noundef %0) #1 {
  %2 = alloca %struct.build_proc_refs_s, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #5
  %3 = call i32 @build_proc_name_refs(ptr noundef nonnull %2, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #5
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = call fastcc i32 @buildfont1or4(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 1)
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi i32 [ %6, %5 ], [ %3, %1 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #5
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal i32 @zbuildfont4(ptr noundef %0) #1 {
  %2 = alloca %struct.build_proc_refs_s, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #5
  %3 = call i32 @build_gs_font_procs(ptr noundef %0, ptr noundef nonnull %2) #5
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = call fastcc i32 @buildfont1or4(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 4)
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi i32 [ %6, %5 ], [ %3, %1 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #5
  ret i32 %8
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare i32 @build_proc_name_refs(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @buildfont1or4(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 {
  %4 = alloca %struct.gs_type1_data_s, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %4) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #5
  store ptr @buildfont1or4.no_subrs, ptr %5, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #5
  store ptr @buildfont1or4.no_subrs, ptr %6, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #5
  store ptr @buildfont1or4.no_subrs, ptr %7, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #5
  %13 = getelementptr inbounds i8, ptr %0, i64 1
  %14 = load i8, ptr %13, align 1, !tbaa !9
  %15 = icmp eq i8 %14, 2
  br i1 %15, label %18, label %16

16:                                               ; preds = %3
  %17 = tail call i32 @check_type_failed(ptr noundef %0) #5
  br label %320

18:                                               ; preds = %3
  %19 = call i32 @dict_find_string(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull %8) #5
  %20 = icmp slt i32 %19, 1
  br i1 %20, label %320, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr %8, align 8, !tbaa !5
  %23 = getelementptr inbounds i8, ptr %22, i64 1
  %24 = load i8, ptr %23, align 1, !tbaa !9
  %25 = icmp eq i8 %24, 2
  br i1 %25, label %26, label %320

26:                                               ; preds = %21
  store ptr null, ptr getelementptr inbounds (%struct.ref_s, ptr @buildfont1or4.no_subrs, i64 0, i32 1), align 8, !tbaa !9
  store i16 1024, ptr @buildfont1or4.no_subrs, align 8, !tbaa !10
  store i16 0, ptr getelementptr inbounds (%struct.ref_s, ptr @buildfont1or4.no_subrs, i64 0, i32 0, i32 1), align 2, !tbaa !14
  %27 = call i32 @dict_find_string(ptr noundef %22, ptr noundef nonnull @.str.5, ptr noundef nonnull %5) #5
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load ptr, ptr %5, align 8, !tbaa !5
  %31 = load i16, ptr %30, align 8, !tbaa !10
  %32 = and i16 %31, 15360
  %33 = icmp eq i16 %32, 1024
  br i1 %33, label %34, label %320

34:                                               ; preds = %29, %26
  %35 = load ptr, ptr %8, align 8, !tbaa !5
  %36 = call i32 @dict_find_string(ptr noundef %35, ptr noundef nonnull @.str.6, ptr noundef nonnull %6) #5
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = load ptr, ptr %6, align 8, !tbaa !5
  %40 = load i16, ptr %39, align 8, !tbaa !10
  %41 = and i16 %40, 15360
  %42 = icmp eq i16 %41, 1024
  br i1 %42, label %43, label %320

43:                                               ; preds = %38, %34
  %44 = call i32 @dict_int_param(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef 1, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %4) #5
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %320, label %46

46:                                               ; preds = %43
  %47 = load i32, ptr %4, align 8, !tbaa !15
  %48 = icmp eq i32 %47, 2
  br i1 %48, label %49, label %114

49:                                               ; preds = %46
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #5
  %50 = load ptr, ptr %6, align 8, !tbaa !5
  %51 = getelementptr inbounds %struct.tas_s, ptr %50, i64 0, i32 1
  %52 = load i16, ptr %51, align 2, !tbaa !14
  %53 = icmp ult i16 %52, 1240
  %54 = icmp ult i16 %52, -31636
  %55 = select i1 %54, i32 1131, i32 32768
  %56 = select i1 %53, i32 107, i32 %55
  %57 = getelementptr inbounds %struct.gs_type1_data_s, ptr %4, i64 0, i32 7
  store i32 %56, ptr %57, align 4, !tbaa !21
  %58 = load ptr, ptr %8, align 8, !tbaa !5
  %59 = call i32 @dict_find_string(ptr noundef %58, ptr noundef nonnull @.str.8, ptr noundef nonnull %7) #5
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %49
  %62 = load ptr, ptr %7, align 8, !tbaa !5
  %63 = load i16, ptr %62, align 8, !tbaa !10
  %64 = and i16 %63, 15360
  %65 = icmp eq i16 %64, 1024
  br i1 %65, label %66, label %111

66:                                               ; preds = %61, %49
  %67 = load ptr, ptr %7, align 8, !tbaa !5
  %68 = getelementptr inbounds %struct.tas_s, ptr %67, i64 0, i32 1
  %69 = load i16, ptr %68, align 2, !tbaa !14
  %70 = icmp ult i16 %69, 1240
  %71 = icmp ult i16 %69, -31636
  %72 = select i1 %71, i32 1131, i32 32768
  %73 = select i1 %70, i32 107, i32 %72
  %74 = getelementptr inbounds %struct.gs_type1_data_s, ptr %4, i64 0, i32 8
  store i32 %73, ptr %74, align 8, !tbaa !22
  %75 = load ptr, ptr %8, align 8, !tbaa !5
  %76 = call i32 @dict_uint_param(ptr noundef %75, ptr noundef nonnull @.str.9, i32 noundef 0, i32 noundef -1, i32 noundef %73, ptr noundef nonnull %74) #5
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %111, label %78

78:                                               ; preds = %66
  %79 = load ptr, ptr %8, align 8, !tbaa !5
  %80 = call i32 @dict_float_param(ptr noundef %79, ptr noundef nonnull @.str.10, double noundef 0.000000e+00, ptr noundef nonnull %10) #5
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %111, label %82

82:                                               ; preds = %78
  %83 = load ptr, ptr %8, align 8, !tbaa !5
  %84 = call i32 @dict_float_param(ptr noundef %83, ptr noundef nonnull @.str.11, double noundef 0.000000e+00, ptr noundef nonnull %11) #5
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %111, label %86

86:                                               ; preds = %82
  %87 = load float, ptr %10, align 4, !tbaa !23
  %88 = fmul float %87, 4.096000e+03
  %89 = fptosi float %88 to i64
  %90 = getelementptr inbounds %struct.gs_type1_data_s, ptr %4, i64 0, i32 10
  store i64 %89, ptr %90, align 8, !tbaa !24
  %91 = load float, ptr %11, align 4, !tbaa !23
  %92 = fmul float %91, 4.096000e+03
  %93 = fptosi float %92 to i64
  %94 = getelementptr inbounds %struct.gs_type1_data_s, ptr %4, i64 0, i32 11
  store i64 %93, ptr %94, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #5
  %95 = load ptr, ptr %8, align 8, !tbaa !5
  %96 = call i32 @dict_find_string(ptr noundef %95, ptr noundef nonnull @.str.12, ptr noundef nonnull %12) #5
  %97 = icmp slt i32 %96, 1
  br i1 %97, label %106, label %98

98:                                               ; preds = %86
  %99 = load ptr, ptr %12, align 8, !tbaa !5
  %100 = getelementptr inbounds i8, ptr %99, i64 1
  %101 = load i8, ptr %100, align 1, !tbaa !9
  %102 = icmp eq i8 %101, 11
  br i1 %102, label %103, label %110

103:                                              ; preds = %98
  %104 = getelementptr inbounds %struct.ref_s, ptr %99, i64 0, i32 1
  %105 = load i64, ptr %104, align 8, !tbaa !9
  br label %106

106:                                              ; preds = %86, %103
  %107 = phi i64 [ %105, %103 ], [ 0, %86 ]
  %108 = getelementptr inbounds %struct.gs_type1_data_s, ptr %4, i64 0, i32 9
  store i64 %107, ptr %108, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #5
  %109 = getelementptr inbounds %struct.gs_type1_data_s, ptr %4, i64 0, i32 6
  store i32 -1, ptr %109, align 8, !tbaa !27
  br label %111

110:                                              ; preds = %98
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #5
  br label %111

111:                                              ; preds = %110, %66, %78, %82, %61, %106
  %112 = phi i32 [ -20, %106 ], [ -20, %61 ], [ %76, %66 ], [ %80, %78 ], [ %84, %82 ], [ -20, %110 ]
  %113 = phi i1 [ true, %106 ], [ false, %61 ], [ false, %66 ], [ false, %78 ], [ false, %82 ], [ false, %110 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #5
  br i1 %113, label %118, label %320

114:                                              ; preds = %46
  %115 = getelementptr inbounds %struct.gs_type1_data_s, ptr %4, i64 0, i32 7
  store i32 0, ptr %115, align 4, !tbaa !21
  %116 = getelementptr inbounds %struct.gs_type1_data_s, ptr %4, i64 0, i32 8
  store i32 0, ptr %116, align 8, !tbaa !22
  %117 = getelementptr inbounds %struct.gs_type1_data_s, ptr %4, i64 0, i32 6
  store i32 4, ptr %117, align 8, !tbaa !27
  br label %118

118:                                              ; preds = %111, %114
  %119 = load ptr, ptr %8, align 8, !tbaa !5
  %120 = getelementptr inbounds %struct.gs_type1_data_s, ptr %4, i64 0, i32 6
  %121 = load i32, ptr %120, align 8, !tbaa !27
  %122 = call i32 @dict_int_param(ptr noundef %119, ptr noundef nonnull @.str.13, i32 noundef -1, i32 noundef 255, i32 noundef %121, ptr noundef nonnull %120) #5
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %320, label %124

124:                                              ; preds = %118
  %125 = load ptr, ptr %8, align 8, !tbaa !5
  %126 = getelementptr inbounds %struct.gs_type1_data_s, ptr %4, i64 0, i32 7
  %127 = load i32, ptr %126, align 4, !tbaa !21
  %128 = call i32 @dict_uint_param(ptr noundef %125, ptr noundef nonnull @.str.14, i32 noundef 0, i32 noundef -1, i32 noundef %127, ptr noundef nonnull %126) #5
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %320, label %130

130:                                              ; preds = %124
  %131 = load ptr, ptr %8, align 8, !tbaa !5
  %132 = getelementptr inbounds %struct.gs_type1_data_s, ptr %4, i64 0, i32 12
  %133 = call i32 @dict_int_param(ptr noundef %131, ptr noundef nonnull @.str.15, i32 noundef 0, i32 noundef 1999, i32 noundef 1, ptr noundef nonnull %132) #5
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %320, label %135

135:                                              ; preds = %130
  %136 = load ptr, ptr %8, align 8, !tbaa !5
  %137 = getelementptr inbounds %struct.gs_type1_data_s, ptr %4, i64 0, i32 13
  %138 = call i32 @dict_float_param(ptr noundef %136, ptr noundef nonnull @.str.16, double noundef 3.962500e-02, ptr noundef nonnull %137) #5
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %320, label %140

140:                                              ; preds = %135
  %141 = load ptr, ptr %8, align 8, !tbaa !5
  %142 = getelementptr inbounds %struct.gs_type1_data_s, ptr %4, i64 0, i32 14
  %143 = call i32 @dict_float_param(ptr noundef %141, ptr noundef nonnull @.str.17, double noundef 7.000000e+00, ptr noundef nonnull %142) #5
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %320, label %145

145:                                              ; preds = %140
  %146 = load ptr, ptr %8, align 8, !tbaa !5
  %147 = getelementptr inbounds %struct.gs_type1_data_s, ptr %4, i64 0, i32 15
  %148 = getelementptr inbounds %struct.gs_type1_data_s, ptr %4, i64 0, i32 15, i32 1
  %149 = call i32 @dict_float_array_param(ptr noundef %146, ptr noundef nonnull @.str.18, i32 noundef 14, ptr noundef nonnull %148, ptr noundef null) #5
  store i32 %149, ptr %147, align 4, !tbaa !28
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %320, label %151

151:                                              ; preds = %145
  %152 = load ptr, ptr %8, align 8, !tbaa !5
  %153 = getelementptr inbounds %struct.gs_type1_data_s, ptr %4, i64 0, i32 16
  %154 = call i32 @dict_float_param(ptr noundef %152, ptr noundef nonnull @.str.19, double noundef 6.000000e-02, ptr noundef nonnull %153) #5
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %320, label %156

156:                                              ; preds = %151
  %157 = load ptr, ptr %8, align 8, !tbaa !5
  %158 = getelementptr inbounds %struct.gs_type1_data_s, ptr %4, i64 0, i32 18
  %159 = getelementptr inbounds %struct.gs_type1_data_s, ptr %4, i64 0, i32 18, i32 1
  %160 = call i32 @dict_float_array_param(ptr noundef %157, ptr noundef nonnull @.str.20, i32 noundef 14, ptr noundef nonnull %159, ptr noundef null) #5
  store i32 %160, ptr %158, align 8, !tbaa !29
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %320, label %162

162:                                              ; preds = %156
  %163 = load ptr, ptr %8, align 8, !tbaa !5
  %164 = getelementptr inbounds %struct.gs_type1_data_s, ptr %4, i64 0, i32 19
  %165 = getelementptr inbounds %struct.gs_type1_data_s, ptr %4, i64 0, i32 19, i32 1
  %166 = call i32 @dict_float_array_param(ptr noundef %163, ptr noundef nonnull @.str.21, i32 noundef 10, ptr noundef nonnull %165, ptr noundef null) #5
  store i32 %166, ptr %164, align 4, !tbaa !30
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %320, label %168

168:                                              ; preds = %162
  %169 = load ptr, ptr %8, align 8, !tbaa !5
  %170 = getelementptr inbounds %struct.gs_type1_data_s, ptr %4, i64 0, i32 17
  %171 = call i32 @dict_bool_param(ptr noundef %169, ptr noundef nonnull @.str.22, i32 noundef 0, ptr noundef nonnull %170) #5
  %172 = icmp slt i32 %171, 0
  br i1 %172, label %320, label %173

173:                                              ; preds = %168
  %174 = load ptr, ptr %8, align 8, !tbaa !5
  %175 = getelementptr inbounds %struct.gs_type1_data_s, ptr %4, i64 0, i32 20
  %176 = call i32 @dict_int_param(ptr noundef %174, ptr noundef nonnull @.str.23, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %175) #5
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %320, label %178

178:                                              ; preds = %173
  %179 = load ptr, ptr %8, align 8, !tbaa !5
  %180 = getelementptr inbounds %struct.gs_type1_data_s, ptr %4, i64 0, i32 21
  %181 = getelementptr inbounds %struct.gs_type1_data_s, ptr %4, i64 0, i32 21, i32 1
  %182 = call i32 @dict_float_array_param(ptr noundef %179, ptr noundef nonnull @.str.24, i32 noundef 10, ptr noundef nonnull %181, ptr noundef null) #5
  store i32 %182, ptr %180, align 4, !tbaa !31
  %183 = icmp slt i32 %182, 0
  br i1 %183, label %320, label %184

184:                                              ; preds = %178
  %185 = load ptr, ptr %8, align 8, !tbaa !5
  %186 = getelementptr inbounds %struct.gs_type1_data_s, ptr %4, i64 0, i32 22
  %187 = call i32 @dict_bool_param(ptr noundef %185, ptr noundef nonnull @.str.25, i32 noundef 1, ptr noundef nonnull %186) #5
  %188 = icmp slt i32 %187, 0
  br i1 %188, label %320, label %189

189:                                              ; preds = %184
  %190 = load ptr, ptr %8, align 8, !tbaa !5
  %191 = getelementptr inbounds %struct.gs_type1_data_s, ptr %4, i64 0, i32 23
  %192 = getelementptr inbounds %struct.gs_type1_data_s, ptr %4, i64 0, i32 23, i32 1
  %193 = call i32 @dict_float_array_param(ptr noundef %190, ptr noundef nonnull @.str.26, i32 noundef 1, ptr noundef nonnull %192, ptr noundef null) #5
  store i32 %193, ptr %191, align 4, !tbaa !32
  %194 = icmp slt i32 %193, 0
  br i1 %194, label %320, label %195

195:                                              ; preds = %189
  %196 = load ptr, ptr %8, align 8, !tbaa !5
  %197 = getelementptr inbounds %struct.gs_type1_data_s, ptr %4, i64 0, i32 24
  %198 = getelementptr inbounds %struct.gs_type1_data_s, ptr %4, i64 0, i32 24, i32 1
  %199 = call i32 @dict_float_array_param(ptr noundef %196, ptr noundef nonnull @.str.27, i32 noundef 1, ptr noundef nonnull %198, ptr noundef null) #5
  store i32 %199, ptr %197, align 4, !tbaa !33
  %200 = icmp slt i32 %199, 0
  br i1 %200, label %320, label %201

201:                                              ; preds = %195
  %202 = load ptr, ptr %8, align 8, !tbaa !5
  %203 = getelementptr inbounds %struct.gs_type1_data_s, ptr %4, i64 0, i32 25
  %204 = getelementptr inbounds %struct.gs_type1_data_s, ptr %4, i64 0, i32 25, i32 1
  %205 = call i32 @dict_float_array_param(ptr noundef %202, ptr noundef nonnull @.str.28, i32 noundef 12, ptr noundef nonnull %204, ptr noundef null) #5
  store i32 %205, ptr %203, align 4, !tbaa !34
  %206 = icmp slt i32 %205, 0
  br i1 %206, label %320, label %207

207:                                              ; preds = %201
  %208 = load ptr, ptr %8, align 8, !tbaa !5
  %209 = getelementptr inbounds %struct.gs_type1_data_s, ptr %4, i64 0, i32 26
  %210 = getelementptr inbounds %struct.gs_type1_data_s, ptr %4, i64 0, i32 26, i32 1
  %211 = call i32 @dict_float_array_param(ptr noundef %208, ptr noundef nonnull @.str.29, i32 noundef 12, ptr noundef nonnull %210, ptr noundef null) #5
  store i32 %211, ptr %209, align 8, !tbaa !35
  %212 = icmp slt i32 %211, 0
  br i1 %212, label %320, label %213

213:                                              ; preds = %207
  %214 = getelementptr inbounds %struct.gs_type1_data_s, ptr %4, i64 0, i32 27
  %215 = getelementptr inbounds %struct.gs_type1_data_s, ptr %4, i64 0, i32 27, i32 1
  %216 = call i32 @dict_float_array_param(ptr noundef %0, ptr noundef nonnull @.str.30, i32 noundef 16, ptr noundef nonnull %215, ptr noundef null) #5
  store i32 %216, ptr %214, align 4, !tbaa !36
  %217 = icmp slt i32 %216, 0
  br i1 %217, label %320, label %218

218:                                              ; preds = %213
  %219 = load i32, ptr %147, align 4, !tbaa !28
  %220 = icmp sgt i32 %219, 0
  br i1 %220, label %221, label %223

221:                                              ; preds = %218
  %222 = zext nneg i32 %219 to i64
  br label %229

223:                                              ; preds = %229, %218
  %224 = phi float [ 1.000000e+00, %218 ], [ %239, %229 ]
  %225 = load i32, ptr %180, align 4, !tbaa !31
  %226 = icmp sgt i32 %225, 0
  br i1 %226, label %227, label %242

227:                                              ; preds = %223
  %228 = zext nneg i32 %225 to i64
  br label %248

229:                                              ; preds = %221, %229
  %230 = phi i64 [ 0, %221 ], [ %240, %229 ]
  %231 = phi float [ 1.000000e+00, %221 ], [ %239, %229 ]
  %232 = or disjoint i64 %230, 1
  %233 = getelementptr inbounds %struct.gs_type1_data_s, ptr %4, i64 0, i32 15, i32 1, i64 %232
  %234 = load float, ptr %233, align 4, !tbaa !23
  %235 = getelementptr inbounds %struct.gs_type1_data_s, ptr %4, i64 0, i32 15, i32 1, i64 %230
  %236 = load float, ptr %235, align 8, !tbaa !23
  %237 = fsub float %234, %236
  %238 = fcmp ogt float %237, %231
  %239 = select i1 %238, float %237, float %231
  %240 = add nuw nsw i64 %230, 2
  %241 = icmp ult i64 %240, %222
  br i1 %241, label %229, label %223, !llvm.loop !37

242:                                              ; preds = %248, %223
  %243 = phi float [ %224, %223 ], [ %258, %248 ]
  %244 = load i32, ptr %158, align 8, !tbaa !29
  %245 = icmp sgt i32 %244, 0
  br i1 %245, label %246, label %261

246:                                              ; preds = %242
  %247 = zext nneg i32 %244 to i64
  br label %267

248:                                              ; preds = %227, %248
  %249 = phi i64 [ 0, %227 ], [ %259, %248 ]
  %250 = phi float [ %224, %227 ], [ %258, %248 ]
  %251 = or disjoint i64 %249, 1
  %252 = getelementptr inbounds %struct.gs_type1_data_s, ptr %4, i64 0, i32 21, i32 1, i64 %251
  %253 = load float, ptr %252, align 4, !tbaa !23
  %254 = getelementptr inbounds %struct.gs_type1_data_s, ptr %4, i64 0, i32 21, i32 1, i64 %249
  %255 = load float, ptr %254, align 8, !tbaa !23
  %256 = fsub float %253, %255
  %257 = fcmp ogt float %256, %250
  %258 = select i1 %257, float %256, float %250
  %259 = add nuw nsw i64 %249, 2
  %260 = icmp ult i64 %259, %228
  br i1 %260, label %248, label %242, !llvm.loop !39

261:                                              ; preds = %267, %242
  %262 = phi float [ %243, %242 ], [ %277, %267 ]
  %263 = load i32, ptr %164, align 4, !tbaa !30
  %264 = icmp sgt i32 %263, 0
  br i1 %264, label %265, label %293

265:                                              ; preds = %261
  %266 = zext nneg i32 %263 to i64
  br label %280

267:                                              ; preds = %246, %267
  %268 = phi i64 [ 0, %246 ], [ %278, %267 ]
  %269 = phi float [ %243, %246 ], [ %277, %267 ]
  %270 = or disjoint i64 %268, 1
  %271 = getelementptr inbounds %struct.gs_type1_data_s, ptr %4, i64 0, i32 18, i32 1, i64 %270
  %272 = load float, ptr %271, align 8, !tbaa !23
  %273 = getelementptr inbounds %struct.gs_type1_data_s, ptr %4, i64 0, i32 18, i32 1, i64 %268
  %274 = load float, ptr %273, align 4, !tbaa !23
  %275 = fsub float %272, %274
  %276 = fcmp ogt float %275, %269
  %277 = select i1 %276, float %275, float %269
  %278 = add nuw nsw i64 %268, 2
  %279 = icmp ult i64 %278, %247
  br i1 %279, label %267, label %261, !llvm.loop !40

280:                                              ; preds = %265, %280
  %281 = phi i64 [ 0, %265 ], [ %291, %280 ]
  %282 = phi float [ %262, %265 ], [ %290, %280 ]
  %283 = or disjoint i64 %281, 1
  %284 = getelementptr inbounds %struct.gs_type1_data_s, ptr %4, i64 0, i32 19, i32 1, i64 %283
  %285 = load float, ptr %284, align 4, !tbaa !23
  %286 = getelementptr inbounds %struct.gs_type1_data_s, ptr %4, i64 0, i32 19, i32 1, i64 %281
  %287 = load float, ptr %286, align 8, !tbaa !23
  %288 = fsub float %285, %287
  %289 = fcmp ogt float %288, %282
  %290 = select i1 %289, float %288, float %282
  %291 = add nuw nsw i64 %281, 2
  %292 = icmp ult i64 %291, %266
  br i1 %292, label %280, label %293, !llvm.loop !41

293:                                              ; preds = %280, %261
  %294 = phi float [ %262, %261 ], [ %290, %280 ]
  %295 = load float, ptr %137, align 4, !tbaa !42
  %296 = fmul float %294, %295
  %297 = fcmp ogt float %296, 1.000000e+00
  br i1 %297, label %298, label %300

298:                                              ; preds = %293
  %299 = fdiv float 1.000000e+00, %294
  store float %299, ptr %137, align 4, !tbaa !42
  br label %300

300:                                              ; preds = %298, %293
  %301 = call i32 @build_gs_primitive_font(ptr noundef %0, ptr noundef nonnull %9, i32 noundef %2, ptr noundef nonnull @st_gs_font_type1, ptr noundef %1, i32 noundef 0) #5
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %303, label %320

303:                                              ; preds = %300
  %304 = load ptr, ptr %9, align 8, !tbaa !5
  %305 = getelementptr inbounds %struct.gs_font_type1_s, ptr %304, i64 0, i32 5
  %306 = load ptr, ptr %305, align 8, !tbaa !43
  %307 = getelementptr inbounds %struct.gs_font_type1_s, ptr %304, i64 0, i32 22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %307, ptr noundef nonnull align 8 dereferenceable(512) %4, i64 512, i1 false), !tbaa.struct !53
  %308 = getelementptr inbounds %struct.font_data_s, ptr %306, i64 0, i32 5
  %309 = load ptr, ptr %5, align 8, !tbaa !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %308, ptr noundef nonnull align 8 dereferenceable(16) %309, i64 16, i1 false), !tbaa.struct !56
  %310 = getelementptr inbounds %struct.font_data_s, ptr %306, i64 0, i32 5, i32 0, i32 1
  %311 = load ptr, ptr %6, align 8, !tbaa !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %310, ptr noundef nonnull align 8 dereferenceable(16) %311, i64 16, i1 false), !tbaa.struct !56
  %312 = getelementptr inbounds %struct.font_data_s, ptr %306, i64 0, i32 5, i32 0, i32 2
  %313 = load ptr, ptr %7, align 8, !tbaa !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %312, ptr noundef nonnull align 8 dereferenceable(16) %313, i64 16, i1 false), !tbaa.struct !56
  %314 = getelementptr inbounds %struct.gs_font_type1_s, ptr %304, i64 0, i32 22, i32 1
  store ptr @z1_subr_proc, ptr %314, align 8, !tbaa !58
  %315 = getelementptr inbounds %struct.gs_font_type1_s, ptr %304, i64 0, i32 22, i32 2
  store ptr @z1_seac_proc, ptr %315, align 8, !tbaa !59
  %316 = getelementptr inbounds %struct.gs_font_type1_s, ptr %304, i64 0, i32 22, i32 3
  store ptr @z1_push_proc, ptr %316, align 8, !tbaa !60
  %317 = getelementptr inbounds %struct.gs_font_type1_s, ptr %304, i64 0, i32 22, i32 4
  store ptr @z1_pop_proc, ptr %317, align 8, !tbaa !61
  %318 = getelementptr inbounds %struct.gs_font_type1_s, ptr %304, i64 0, i32 22, i32 5
  store ptr %306, ptr %318, align 8, !tbaa !62
  %319 = call i32 @define_gs_font(ptr noundef %304) #5
  br label %320

320:                                              ; preds = %300, %118, %124, %130, %135, %140, %145, %151, %156, %162, %168, %173, %178, %184, %189, %195, %201, %207, %213, %43, %38, %29, %18, %21, %111, %303, %16
  %321 = phi i32 [ %319, %303 ], [ %112, %111 ], [ %17, %16 ], [ -10, %21 ], [ -10, %18 ], [ -20, %29 ], [ -20, %38 ], [ %44, %43 ], [ %122, %118 ], [ %128, %124 ], [ %133, %130 ], [ %138, %135 ], [ %143, %140 ], [ %149, %145 ], [ %154, %151 ], [ %160, %156 ], [ %166, %162 ], [ %171, %168 ], [ %176, %173 ], [ %182, %178 ], [ %187, %184 ], [ %193, %189 ], [ %199, %195 ], [ %205, %201 ], [ %211, %207 ], [ %216, %213 ], [ %301, %300 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %4) #5
  ret i32 %321
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare i32 @check_type_failed(ptr noundef) local_unnamed_addr #3

declare i32 @dict_find_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @dict_int_param(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @dict_uint_param(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @dict_float_param(ptr noundef, ptr noundef, double noundef, ptr noundef) local_unnamed_addr #3

declare i32 @dict_float_array_param(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @dict_bool_param(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @build_gs_primitive_font(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare i32 @z1_subr_proc(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #3

declare i32 @z1_seac_proc(ptr noundef, i32 noundef, ptr noundef) #3

declare i32 @z1_push_proc(ptr noundef, ptr noundef, i32 noundef) #3

declare i32 @z1_pop_proc(ptr noundef, ptr noundef) #3

declare i32 @define_gs_font(ptr noundef) local_unnamed_addr #3

declare i32 @build_gs_font_procs(ptr noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind }

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
!10 = !{!11, !13, i64 0}
!11 = !{!"ref_s", !12, i64 0, !7, i64 8}
!12 = !{!"tas_s", !13, i64 0, !13, i64 2}
!13 = !{!"short", !7, i64 0}
!14 = !{!11, !13, i64 2}
!15 = !{!16, !17, i64 0}
!16 = !{!"gs_type1_data_s", !17, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !17, i64 48, !17, i64 52, !17, i64 56, !18, i64 64, !18, i64 72, !18, i64 80, !17, i64 88, !19, i64 92, !19, i64 96, !20, i64 100, !19, i64 160, !17, i64 164, !20, i64 168, !20, i64 228, !17, i64 272, !20, i64 276, !17, i64 320, !20, i64 324, !20, i64 332, !20, i64 340, !20, i64 392, !20, i64 444}
!17 = !{!"int", !7, i64 0}
!18 = !{!"long", !7, i64 0}
!19 = !{!"float", !7, i64 0}
!20 = !{!"", !17, i64 0, !7, i64 4}
!21 = !{!16, !17, i64 52}
!22 = !{!16, !17, i64 56}
!23 = !{!19, !19, i64 0}
!24 = !{!16, !18, i64 72}
!25 = !{!16, !18, i64 80}
!26 = !{!16, !18, i64 64}
!27 = !{!16, !17, i64 48}
!28 = !{!16, !17, i64 100}
!29 = !{!16, !17, i64 168}
!30 = !{!16, !17, i64 228}
!31 = !{!16, !17, i64 276}
!32 = !{!16, !17, i64 324}
!33 = !{!16, !17, i64 332}
!34 = !{!16, !17, i64 340}
!35 = !{!16, !17, i64 392}
!36 = !{!16, !17, i64 444}
!37 = distinct !{!37, !38}
!38 = !{!"llvm.loop.unroll.disable"}
!39 = distinct !{!39, !38}
!40 = distinct !{!40, !38}
!41 = distinct !{!41, !38}
!42 = !{!16, !19, i64 92}
!43 = !{!44, !6, i64 40}
!44 = !{!"gs_font_type1_s", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !45, i64 48, !17, i64 72, !17, i64 76, !17, i64 80, !17, i64 84, !17, i64 88, !17, i64 92, !17, i64 96, !19, i64 100, !46, i64 104, !48, i64 176, !48, i64 228, !49, i64 280, !52, i64 312, !17, i64 328, !17, i64 332, !16, i64 336}
!45 = !{!"gs_matrix_s", !19, i64 0, !19, i64 4, !19, i64 8, !19, i64 12, !19, i64 16, !19, i64 20}
!46 = !{!"gs_font_procs_s", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !47, i64 32, !6, i64 48, !6, i64 56, !6, i64 64}
!47 = !{!"gx_xfont_callbacks_s", !6, i64 0, !6, i64 8}
!48 = !{!"gs_font_name_s", !7, i64 0, !17, i64 48}
!49 = !{!"gs_rect_s", !50, i64 0, !50, i64 16}
!50 = !{!"gs_point_s", !51, i64 0, !51, i64 8}
!51 = !{!"double", !7, i64 0}
!52 = !{!"gs_uid_s", !18, i64 0, !6, i64 8}
!53 = !{i64 0, i64 4, !54, i64 8, i64 8, !5, i64 16, i64 8, !5, i64 24, i64 8, !5, i64 32, i64 8, !5, i64 40, i64 8, !5, i64 48, i64 4, !54, i64 52, i64 4, !54, i64 56, i64 4, !54, i64 64, i64 8, !55, i64 72, i64 8, !55, i64 80, i64 8, !55, i64 88, i64 4, !54, i64 92, i64 4, !23, i64 96, i64 4, !23, i64 100, i64 4, !54, i64 104, i64 56, !9, i64 160, i64 4, !23, i64 164, i64 4, !54, i64 168, i64 4, !54, i64 172, i64 56, !9, i64 228, i64 4, !54, i64 232, i64 40, !9, i64 272, i64 4, !54, i64 276, i64 4, !54, i64 280, i64 40, !9, i64 320, i64 4, !54, i64 324, i64 4, !54, i64 328, i64 4, !9, i64 332, i64 4, !54, i64 336, i64 4, !9, i64 340, i64 4, !54, i64 344, i64 48, !9, i64 392, i64 4, !54, i64 396, i64 48, !9, i64 444, i64 4, !54, i64 448, i64 64, !9}
!54 = !{!17, !17, i64 0}
!55 = !{!18, !18, i64 0}
!56 = !{i64 0, i64 2, !57, i64 2, i64 2, !57, i64 8, i64 8, !55, i64 8, i64 2, !57, i64 8, i64 4, !23, i64 8, i64 8, !55, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5}
!57 = !{!13, !13, i64 0}
!58 = !{!44, !6, i64 344}
!59 = !{!44, !6, i64 352}
!60 = !{!44, !6, i64 360}
!61 = !{!44, !6, i64 368}
!62 = !{!44, !6, i64 376}
