; ModuleID = 'src/z21.c'
source_filename = "src/z21.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.CONSTRAINT = type { i32, i32, i32, i32 }
%struct.word_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, [4 x i8] }
%struct.LIST = type { ptr, ptr }
%union.FIRST_UNION = type { %struct.FILE_POS }
%struct.FILE_POS = type { i8, i8, i16, i32 }
%union.SECOND_UNION = type { %struct.anon.1 }
%struct.anon.1 = type { i32 }
%union.THIRD_UNION = type { ptr, [8 x i8] }
%struct.closure_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, ptr, %union.anon.12 }
%union.FOURTH_UNION = type { %struct.STYLE }
%struct.STYLE = type { %union.anon, %union.anon.10, i16, i16, i32 }
%union.anon = type { %struct.GAP }
%struct.GAP = type { i16, i16 }
%union.anon.10 = type { %struct.GAP }
%union.anon.12 = type { ptr }
%struct.symbol_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i8, i8, i8 }
%struct.head_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, ptr, %union.anon.13, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%union.anon.13 = type { ptr }
%struct.gapobj_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %struct.GAP, i32, i16, i16, ptr, ptr }

@.str = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@no_fpos = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"SizeGalley: precondition!\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"SizeGalley: already sized!\00", align 1
@zz_lengths = external local_unnamed_addr global [0 x i8], align 1
@zz_size = external local_unnamed_addr global i32, align 4
@zz_free = external local_unnamed_addr global [0 x ptr], align 8
@zz_hold = external local_unnamed_addr global ptr, align 8
@xx_link = external local_unnamed_addr global ptr, align 8
@zz_res = external local_unnamed_addr global ptr, align 8
@zz_tmp = external local_unnamed_addr global ptr, align 8
@AllowCrossDb = external local_unnamed_addr global i32, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"SizeGalley: threads!\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"galley %s must have just one column mark\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"%s,%s object too wide for available space\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"SizeGalley: BreakObject failed to fit!\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"TransferLinks: start_link!\00", align 1
@xx_tmp = external local_unnamed_addr global ptr, align 8
@.str.9 = private unnamed_addr constant [38 x i8] c"SizeGalley COL_THR: Up(y)!=LastUp(y)!\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"SizeGalley: missing COL_THR!\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"SizeGalley/SPLIT: hor != thor!\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"SizeGalley COL_THR: Up(y) != LastUp(y)!\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"SizeObject: type(z) != SCALE!\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"SizeObject: bc(constraint(z)) != 0\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"SizeObject SCALE: Down(z) == z!\00", align 1
@.str.16 = private unnamed_addr constant [54 x i8] c"%s with unspecified scale factor in horizontal galley\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"@Scale\00", align 1
@.str.18 = private unnamed_addr constant [61 x i8] c"replacing infinite scale factor (unconstrained width) by 1.0\00", align 1
@.str.19 = private unnamed_addr constant [59 x i8] c"replacing infinite scale factor (zero width object) by 1.0\00", align 1
@.str.20 = private unnamed_addr constant [52 x i8] c"replacing very large scale factor (over 100) by 1.0\00", align 1
@.str.21 = private unnamed_addr constant [38 x i8] c"object deleted (scale factor is zero)\00", align 1
@.str.22 = private unnamed_addr constant [51 x i8] c"object deleted (scale factor is smaller than 0.01)\00", align 1
@.str.23 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@GalleySym = external local_unnamed_addr global ptr, align 8
@ForceGalleySym = external local_unnamed_addr global ptr, align 8
@InputSym = external local_unnamed_addr global ptr, align 8
@.str.24 = private unnamed_addr constant [36 x i8] c"%s replaced by %s (mark not shared)\00", align 1
@.str.25 = private unnamed_addr constant [42 x i8] c"%s replaced by %s (infinite scale factor)\00", align 1
@.str.26 = private unnamed_addr constant [38 x i8] c"%s replaced by %s (zero scale factor)\00", align 1
@.str.27 = private unnamed_addr constant [39 x i8] c"%s replaced by %s (insufficient space)\00", align 1
@.str.28 = private unnamed_addr constant [23 x i8] c"assert failed in %s %s\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"SizeGalley:\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"SizeG: extras!\00", align 1
@.str.31 = private unnamed_addr constant [45 x i8] c"unexpected absence of %s from the body of %s\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @SizeGalley(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr nocapture noundef %9, ptr nocapture noundef %10, ptr nocapture noundef %11, ptr noundef %12) local_unnamed_addr #0 {
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca [2 x ptr], align 16
  %20 = alloca [2 x ptr], align 16
  %21 = alloca %struct.CONSTRAINT, align 4
  %22 = alloca %struct.CONSTRAINT, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %19) #4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %20) #4
  %23 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %24 = load i8, ptr %23, align 8, !tbaa !5
  %25 = icmp eq i8 %24, 8
  br i1 %25, label %26, label %30

26:                                               ; preds = %13
  %27 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !5
  %29 = icmp eq ptr %28, %0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26, %13
  %31 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %32 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %31, ptr noundef nonnull @.str.1) #4
  br label %33

33:                                               ; preds = %30, %26
  %34 = getelementptr inbounds i8, ptr %0, i64 42
  %35 = load i16, ptr %34, align 2
  %36 = and i16 %35, 2
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %40 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %39, ptr noundef nonnull @.str.2) #4
  br label %41

41:                                               ; preds = %38, %33
  %42 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !5
  br label %44

44:                                               ; preds = %44, %41
  %45 = phi ptr [ %43, %41 ], [ %47, %44 ]
  %46 = getelementptr inbounds [2 x %struct.LIST], ptr %45, i64 0, i64 1
  %47 = load ptr, ptr %46, align 8, !tbaa !5
  %48 = getelementptr inbounds %struct.word_type, ptr %47, i64 0, i32 1
  %49 = load i8, ptr %48, align 8, !tbaa !5
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %44, label %51

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.word_type, ptr %47, i64 0, i32 1
  store ptr %8, ptr %17, align 8, !tbaa !8
  store ptr %12, ptr %18, align 8, !tbaa !8
  store ptr null, ptr %14, align 8, !tbaa !8
  %53 = getelementptr inbounds [2 x ptr], ptr %20, i64 0, i64 1
  store ptr null, ptr %53, align 8, !tbaa !8
  %54 = getelementptr inbounds [2 x ptr], ptr %19, i64 0, i64 1
  store ptr null, ptr %54, align 8, !tbaa !8
  store ptr null, ptr %20, align 16, !tbaa !8
  store ptr null, ptr %19, align 16, !tbaa !8
  %55 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 17), align 1, !tbaa !5
  %56 = zext i8 %55 to i32
  store i32 %56, ptr @zz_size, align 4, !tbaa !10
  %57 = zext i8 %55 to i64
  %58 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %57
  %59 = load ptr, ptr %58, align 8, !tbaa !8
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %51
  %62 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %63 = tail call ptr @GetMemory(i32 noundef %56, ptr noundef %62) #4
  store ptr %63, ptr @zz_hold, align 8, !tbaa !8
  br label %66

64:                                               ; preds = %51
  store ptr %59, ptr @zz_hold, align 8, !tbaa !8
  %65 = load ptr, ptr %59, align 8, !tbaa !5
  store ptr %65, ptr %58, align 8, !tbaa !8
  br label %66

66:                                               ; preds = %61, %64
  %67 = phi ptr [ %63, %61 ], [ %59, %64 ]
  %68 = getelementptr inbounds %struct.word_type, ptr %67, i64 0, i32 1
  store i8 17, ptr %68, align 8, !tbaa !5
  %69 = getelementptr inbounds [2 x %struct.LIST], ptr %67, i64 0, i64 1, i32 1
  store ptr %67, ptr %69, align 8, !tbaa !5
  %70 = getelementptr inbounds [2 x %struct.LIST], ptr %67, i64 0, i64 1
  store ptr %67, ptr %70, align 8, !tbaa !5
  %71 = getelementptr inbounds %struct.LIST, ptr %67, i64 0, i32 1
  store ptr %67, ptr %71, align 8, !tbaa !5
  store ptr %67, ptr %67, align 8, !tbaa !5
  %72 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %73 = zext i8 %72 to i32
  store i32 %73, ptr @zz_size, align 4, !tbaa !10
  %74 = zext i8 %72 to i64
  %75 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %74
  %76 = load ptr, ptr %75, align 8, !tbaa !8
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %66
  %79 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %80 = tail call ptr @GetMemory(i32 noundef %73, ptr noundef %79) #4
  br label %83

81:                                               ; preds = %66
  store ptr %76, ptr @zz_hold, align 8, !tbaa !8
  %82 = load ptr, ptr %76, align 8, !tbaa !5
  store ptr %82, ptr %75, align 8, !tbaa !8
  br label %83

83:                                               ; preds = %78, %81
  %84 = phi ptr [ %80, %78 ], [ %76, %81 ]
  %85 = getelementptr inbounds %struct.word_type, ptr %84, i64 0, i32 1
  store i8 0, ptr %85, align 8, !tbaa !5
  %86 = getelementptr inbounds [2 x %struct.LIST], ptr %84, i64 0, i64 1, i32 1
  store ptr %84, ptr %86, align 8, !tbaa !5
  %87 = getelementptr inbounds [2 x %struct.LIST], ptr %84, i64 0, i64 1
  store ptr %84, ptr %87, align 8, !tbaa !5
  %88 = getelementptr inbounds %struct.LIST, ptr %84, i64 0, i32 1
  store ptr %84, ptr %88, align 8, !tbaa !5
  store ptr %84, ptr %84, align 8, !tbaa !5
  store ptr %84, ptr @xx_link, align 8, !tbaa !8
  store ptr %84, ptr @zz_res, align 8, !tbaa !8
  store ptr %67, ptr @zz_hold, align 8, !tbaa !8
  %89 = load ptr, ptr %67, align 8, !tbaa !5
  store ptr %89, ptr @zz_tmp, align 8, !tbaa !8
  %90 = load ptr, ptr %84, align 8, !tbaa !5
  store ptr %90, ptr %67, align 8, !tbaa !5
  %91 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %92 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %93 = load ptr, ptr %92, align 8, !tbaa !5
  %94 = getelementptr inbounds %struct.LIST, ptr %93, i64 0, i32 1
  store ptr %91, ptr %94, align 8, !tbaa !5
  %95 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %95, ptr %92, align 8, !tbaa !5
  %96 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %97 = getelementptr inbounds %struct.LIST, ptr %95, i64 0, i32 1
  store ptr %96, ptr %97, align 8, !tbaa !5
  %98 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %98, ptr @zz_res, align 8, !tbaa !8
  store ptr %1, ptr @zz_hold, align 8, !tbaa !8
  %99 = icmp eq ptr %1, null
  %100 = icmp eq ptr %98, null
  %101 = select i1 %99, i1 true, i1 %100
  br i1 %101, label %109, label %102

102:                                              ; preds = %83
  %103 = getelementptr inbounds [2 x %struct.LIST], ptr %1, i64 0, i64 1
  %104 = load ptr, ptr %103, align 8, !tbaa !5
  store ptr %104, ptr @zz_tmp, align 8, !tbaa !8
  %105 = getelementptr inbounds [2 x %struct.LIST], ptr %98, i64 0, i64 1
  %106 = load ptr, ptr %105, align 8, !tbaa !5
  store ptr %106, ptr %103, align 8, !tbaa !5
  %107 = getelementptr inbounds [2 x %struct.LIST], ptr %106, i64 0, i64 1, i32 1
  store ptr %1, ptr %107, align 8, !tbaa !5
  store ptr %104, ptr %105, align 8, !tbaa !5
  %108 = getelementptr inbounds [2 x %struct.LIST], ptr %104, i64 0, i64 1, i32 1
  store ptr %98, ptr %108, align 8, !tbaa !5
  br label %109

109:                                              ; preds = %83, %102
  %110 = load i32, ptr @AllowCrossDb, align 4, !tbaa !10
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %126, label %112

112:                                              ; preds = %109
  %113 = load i8, ptr %52, align 8, !tbaa !5
  %114 = icmp eq i8 %113, 2
  br i1 %114, label %115, label %126

115:                                              ; preds = %112
  %116 = getelementptr inbounds %struct.closure_type, ptr %47, i64 0, i32 5
  %117 = load ptr, ptr %116, align 8, !tbaa !5
  %118 = getelementptr inbounds %struct.symbol_type, ptr %117, i64 0, i32 16
  %119 = load i8, ptr %118, align 2
  %120 = and i8 %119, 2
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %126, label %122

122:                                              ; preds = %115
  %123 = tail call i32 @FindOptimize(ptr noundef nonnull %47, ptr noundef %1) #4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %122
  tail call void @SetOptimize(ptr noundef %0, ptr noundef %6) #4
  br label %126

126:                                              ; preds = %125, %122, %115, %112, %109
  %127 = icmp eq i32 %3, 0
  br i1 %127, label %224, label %128

128:                                              ; preds = %126
  %129 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 139), align 1, !tbaa !5
  %130 = zext i8 %129 to i32
  store i32 %130, ptr @zz_size, align 4, !tbaa !10
  %131 = zext i8 %129 to i64
  %132 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %131
  %133 = load ptr, ptr %132, align 8, !tbaa !8
  %134 = icmp eq ptr %133, null
  br i1 %134, label %135, label %138

135:                                              ; preds = %128
  %136 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %137 = tail call ptr @GetMemory(i32 noundef %130, ptr noundef %136) #4
  store ptr %137, ptr @zz_hold, align 8, !tbaa !8
  br label %140

138:                                              ; preds = %128
  store ptr %133, ptr @zz_hold, align 8, !tbaa !8
  %139 = load ptr, ptr %133, align 8, !tbaa !5
  store ptr %139, ptr %132, align 8, !tbaa !8
  br label %140

140:                                              ; preds = %135, %138
  %141 = phi ptr [ %137, %135 ], [ %133, %138 ]
  %142 = getelementptr inbounds %struct.word_type, ptr %141, i64 0, i32 1
  store i8 -117, ptr %142, align 8, !tbaa !5
  %143 = getelementptr inbounds [2 x %struct.LIST], ptr %141, i64 0, i64 1, i32 1
  store ptr %141, ptr %143, align 8, !tbaa !5
  %144 = getelementptr inbounds [2 x %struct.LIST], ptr %141, i64 0, i64 1
  store ptr %141, ptr %144, align 8, !tbaa !5
  %145 = getelementptr inbounds %struct.LIST, ptr %141, i64 0, i32 1
  store ptr %141, ptr %145, align 8, !tbaa !5
  store ptr %141, ptr %141, align 8, !tbaa !5
  store ptr %141, ptr %19, align 16, !tbaa !8
  %146 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 139), align 1, !tbaa !5
  %147 = zext i8 %146 to i32
  store i32 %147, ptr @zz_size, align 4, !tbaa !10
  %148 = zext i8 %146 to i64
  %149 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %148
  %150 = load ptr, ptr %149, align 8, !tbaa !8
  %151 = icmp eq ptr %150, null
  br i1 %151, label %152, label %155

152:                                              ; preds = %140
  %153 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %154 = tail call ptr @GetMemory(i32 noundef %147, ptr noundef %153) #4
  store ptr %154, ptr @zz_hold, align 8, !tbaa !8
  br label %157

155:                                              ; preds = %140
  store ptr %150, ptr @zz_hold, align 8, !tbaa !8
  %156 = load ptr, ptr %150, align 8, !tbaa !5
  store ptr %156, ptr %149, align 8, !tbaa !8
  br label %157

157:                                              ; preds = %152, %155
  %158 = phi ptr [ %154, %152 ], [ %150, %155 ]
  %159 = getelementptr inbounds %struct.word_type, ptr %158, i64 0, i32 1
  store i8 -117, ptr %159, align 8, !tbaa !5
  %160 = getelementptr inbounds [2 x %struct.LIST], ptr %158, i64 0, i64 1, i32 1
  store ptr %158, ptr %160, align 8, !tbaa !5
  %161 = getelementptr inbounds [2 x %struct.LIST], ptr %158, i64 0, i64 1
  store ptr %158, ptr %161, align 8, !tbaa !5
  %162 = getelementptr inbounds %struct.LIST, ptr %158, i64 0, i32 1
  store ptr %158, ptr %162, align 8, !tbaa !5
  store ptr %158, ptr %158, align 8, !tbaa !5
  store ptr %158, ptr %20, align 16, !tbaa !8
  %163 = load i16, ptr %34, align 2
  %164 = lshr i16 %163, 7
  %165 = and i16 %164, 1
  %166 = zext nneg i16 %165 to i32
  %167 = call ptr @Manifest(ptr noundef nonnull %47, ptr noundef %1, ptr noundef %6, ptr noundef nonnull %19, ptr noundef nonnull %20, ptr noundef nonnull %17, ptr noundef nonnull %14, i32 noundef 1, i32 noundef %166, ptr noundef nonnull %18, i32 noundef 0) #4
  %168 = load ptr, ptr %19, align 16, !tbaa !8
  %169 = getelementptr inbounds %struct.LIST, ptr %168, i64 0, i32 1
  %170 = load ptr, ptr %169, align 8, !tbaa !5
  %171 = icmp eq ptr %170, %168
  br i1 %171, label %177, label %172

172:                                              ; preds = %157
  %173 = load ptr, ptr %20, align 16, !tbaa !8
  %174 = getelementptr inbounds %struct.LIST, ptr %173, i64 0, i32 1
  %175 = load ptr, ptr %174, align 8, !tbaa !5
  %176 = icmp eq ptr %175, %173
  br i1 %176, label %177, label %183

177:                                              ; preds = %172, %157
  %178 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %179 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %178, ptr noundef nonnull @.str.4) #4
  %180 = load ptr, ptr %19, align 16, !tbaa !8
  %181 = getelementptr inbounds %struct.LIST, ptr %180, i64 0, i32 1
  %182 = load ptr, ptr %181, align 8, !tbaa !5
  br label %183

183:                                              ; preds = %177, %172
  %184 = phi ptr [ %182, %177 ], [ %170, %172 ]
  %185 = phi ptr [ %180, %177 ], [ %168, %172 ]
  br label %186

186:                                              ; preds = %186, %183
  %187 = phi ptr [ %184, %183 ], [ %189, %186 ]
  %188 = getelementptr inbounds [2 x %struct.LIST], ptr %187, i64 0, i64 1
  %189 = load ptr, ptr %188, align 8, !tbaa !5
  %190 = getelementptr inbounds %struct.word_type, ptr %189, i64 0, i32 1
  %191 = load i8, ptr %190, align 8, !tbaa !5
  %192 = icmp eq i8 %191, 0
  br i1 %192, label %186, label %193

193:                                              ; preds = %186
  store ptr %189, ptr %17, align 8, !tbaa !8
  %194 = load ptr, ptr %20, align 16, !tbaa !8
  %195 = getelementptr inbounds %struct.LIST, ptr %194, i64 0, i32 1
  %196 = load ptr, ptr %195, align 8, !tbaa !5
  br label %197

197:                                              ; preds = %197, %193
  %198 = phi ptr [ %196, %193 ], [ %200, %197 ]
  %199 = getelementptr inbounds [2 x %struct.LIST], ptr %198, i64 0, i64 1
  %200 = load ptr, ptr %199, align 8, !tbaa !5
  %201 = getelementptr inbounds %struct.word_type, ptr %200, i64 0, i32 1
  %202 = load i8, ptr %201, align 8, !tbaa !5
  %203 = icmp eq i8 %202, 0
  br i1 %203, label %197, label %204

204:                                              ; preds = %197
  store ptr %200, ptr %18, align 8, !tbaa !8
  %205 = load ptr, ptr %185, align 8, !tbaa !5
  %206 = icmp eq ptr %184, %205
  br i1 %206, label %207, label %212

207:                                              ; preds = %204
  %208 = load ptr, ptr %194, align 8, !tbaa !5
  %209 = icmp eq ptr %196, %208
  %210 = icmp eq ptr %189, %200
  %211 = and i1 %210, %209
  br i1 %211, label %219, label %212

212:                                              ; preds = %207, %204
  %213 = getelementptr inbounds %struct.word_type, ptr %167, i64 0, i32 1
  %214 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 5
  %215 = load ptr, ptr %214, align 8, !tbaa !5
  %216 = call ptr @SymName(ptr noundef %215) #4
  %217 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 21, i32 noundef 1, ptr noundef nonnull @.str.5, i32 noundef 1, ptr noundef nonnull %213, ptr noundef %216) #4
  %218 = load ptr, ptr %19, align 16, !tbaa !8
  br label %219

219:                                              ; preds = %207, %212
  %220 = phi ptr [ %185, %207 ], [ %218, %212 ]
  %221 = call i32 @DisposeObject(ptr noundef %220) #4
  %222 = load ptr, ptr %20, align 16, !tbaa !8
  %223 = call i32 @DisposeObject(ptr noundef %222) #4
  br label %230

224:                                              ; preds = %126
  %225 = load i16, ptr %34, align 2
  %226 = lshr i16 %225, 7
  %227 = and i16 %226, 1
  %228 = zext nneg i16 %227 to i32
  %229 = call ptr @Manifest(ptr noundef nonnull %47, ptr noundef %1, ptr noundef %6, ptr noundef nonnull %19, ptr noundef nonnull %20, ptr noundef nonnull %17, ptr noundef nonnull %14, i32 noundef 1, i32 noundef %228, ptr noundef nonnull %18, i32 noundef 0) #4
  br label %230

230:                                              ; preds = %224, %219
  %231 = phi ptr [ %167, %219 ], [ %229, %224 ]
  %232 = call i32 @DisposeObject(ptr noundef nonnull %67) #4
  %233 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 17), align 1, !tbaa !5
  %234 = zext i8 %233 to i32
  store i32 %234, ptr @zz_size, align 4, !tbaa !10
  %235 = zext i8 %233 to i64
  %236 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %235
  %237 = load ptr, ptr %236, align 8, !tbaa !8
  %238 = icmp eq ptr %237, null
  br i1 %238, label %239, label %242

239:                                              ; preds = %230
  %240 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %241 = call ptr @GetMemory(i32 noundef %234, ptr noundef %240) #4
  store ptr %241, ptr @zz_hold, align 8, !tbaa !8
  br label %244

242:                                              ; preds = %230
  store ptr %237, ptr @zz_hold, align 8, !tbaa !8
  %243 = load ptr, ptr %237, align 8, !tbaa !5
  store ptr %243, ptr %236, align 8, !tbaa !8
  br label %244

244:                                              ; preds = %239, %242
  %245 = phi ptr [ %241, %239 ], [ %237, %242 ]
  %246 = getelementptr inbounds %struct.word_type, ptr %245, i64 0, i32 1
  store i8 17, ptr %246, align 8, !tbaa !5
  %247 = getelementptr inbounds [2 x %struct.LIST], ptr %245, i64 0, i64 1, i32 1
  store ptr %245, ptr %247, align 8, !tbaa !5
  %248 = getelementptr inbounds [2 x %struct.LIST], ptr %245, i64 0, i64 1
  store ptr %245, ptr %248, align 8, !tbaa !5
  %249 = getelementptr inbounds %struct.LIST, ptr %245, i64 0, i32 1
  store ptr %245, ptr %249, align 8, !tbaa !5
  store ptr %245, ptr %245, align 8, !tbaa !5
  store ptr %245, ptr %16, align 8, !tbaa !8
  %250 = call ptr @MinSize(ptr noundef %231, i32 noundef 0, ptr noundef nonnull %16) #4
  %251 = load i16, ptr %34, align 2
  %252 = and i16 %251, 256
  %253 = icmp eq i16 %252, 0
  br i1 %253, label %303, label %254

254:                                              ; preds = %244
  %255 = load i32, ptr %7, align 4, !tbaa !12
  %256 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4
  store i32 %255, ptr %256, align 8, !tbaa !5
  %257 = getelementptr inbounds %struct.CONSTRAINT, ptr %7, i64 0, i32 1
  %258 = load i32, ptr %257, align 4, !tbaa !14
  %259 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 1
  store i32 %258, ptr %259, align 4, !tbaa !5
  %260 = getelementptr inbounds %struct.CONSTRAINT, ptr %7, i64 0, i32 2
  %261 = load i32, ptr %260, align 4, !tbaa !15
  %262 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 2
  store i32 %261, ptr %262, align 8, !tbaa !5
  %263 = call ptr @BreakObject(ptr noundef %250, ptr noundef nonnull %7) #4
  %264 = getelementptr inbounds %struct.word_type, ptr %263, i64 0, i32 3
  %265 = load i32, ptr %264, align 8, !tbaa !5
  %266 = load i32, ptr %7, align 4, !tbaa !12
  %267 = icmp sgt i32 %265, %266
  br i1 %267, label %277, label %268

268:                                              ; preds = %254
  %269 = getelementptr inbounds %struct.word_type, ptr %263, i64 0, i32 3, i32 1
  %270 = load i32, ptr %269, align 8, !tbaa !5
  %271 = add nsw i32 %270, %265
  %272 = load i32, ptr %257, align 4, !tbaa !14
  %273 = icmp sgt i32 %271, %272
  br i1 %273, label %277, label %274

274:                                              ; preds = %268
  %275 = load i32, ptr %260, align 4, !tbaa !15
  %276 = icmp sgt i32 %270, %275
  br i1 %276, label %277, label %285

277:                                              ; preds = %274, %268, %254
  %278 = getelementptr inbounds %struct.word_type, ptr %263, i64 0, i32 1
  %279 = call ptr @EchoLength(i32 noundef %265) #4
  %280 = getelementptr inbounds %struct.word_type, ptr %263, i64 0, i32 3, i32 1
  %281 = load i32, ptr %280, align 8, !tbaa !5
  %282 = call ptr @EchoLength(i32 noundef %281) #4
  %283 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 21, i32 noundef 13, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull %278, ptr noundef %279, ptr noundef %282) #4
  %284 = load i32, ptr %264, align 8, !tbaa !5
  br label %285

285:                                              ; preds = %277, %274
  %286 = phi i32 [ %284, %277 ], [ %265, %274 ]
  %287 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3
  store i32 %286, ptr %287, align 8, !tbaa !5
  %288 = getelementptr inbounds %struct.word_type, ptr %263, i64 0, i32 3, i32 1
  %289 = load i32, ptr %288, align 8, !tbaa !5
  %290 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1
  store i32 %289, ptr %290, align 8, !tbaa !5
  %291 = load i32, ptr %7, align 4, !tbaa !12
  %292 = icmp sgt i32 %286, %291
  br i1 %292, label %300, label %293

293:                                              ; preds = %285
  %294 = add nsw i32 %289, %286
  %295 = load i32, ptr %257, align 4, !tbaa !14
  %296 = icmp sgt i32 %294, %295
  br i1 %296, label %300, label %297

297:                                              ; preds = %293
  %298 = load i32, ptr %260, align 4, !tbaa !15
  %299 = icmp sgt i32 %289, %298
  br i1 %299, label %300, label %316

300:                                              ; preds = %297, %293, %285
  %301 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %302 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %301, ptr noundef nonnull @.str.7) #4
  br label %316

303:                                              ; preds = %244
  %304 = getelementptr inbounds %struct.head_type, ptr %0, i64 0, i32 8
  %305 = load ptr, ptr %304, align 8, !tbaa !5
  %306 = icmp eq ptr %305, null
  %307 = and i16 %251, 512
  %308 = icmp eq i16 %307, 0
  %309 = or i1 %308, %306
  br i1 %309, label %316, label %310

310:                                              ; preds = %303
  %311 = getelementptr inbounds %struct.word_type, ptr %250, i64 0, i32 1
  %312 = load i8, ptr %311, align 8, !tbaa !5
  %313 = icmp eq i8 %312, 17
  br i1 %313, label %314, label %316

314:                                              ; preds = %310
  %315 = call ptr @Hyphenate(ptr noundef nonnull %250) #4
  br label %316

316:                                              ; preds = %303, %310, %314, %297, %300
  %317 = load i16, ptr %34, align 2
  %318 = and i16 %317, -33
  store i16 %318, ptr %34, align 2
  %319 = icmp eq i32 %2, 0
  br i1 %319, label %928, label %320

320:                                              ; preds = %316
  %321 = load ptr, ptr %42, align 8, !tbaa !5
  %322 = icmp eq ptr %321, %0
  br i1 %322, label %928, label %323

323:                                              ; preds = %320, %921
  %324 = phi ptr [ %926, %921 ], [ %321, %320 ]
  %325 = phi ptr [ %925, %921 ], [ %42, %320 ]
  %326 = phi ptr [ %924, %921 ], [ %0, %320 ]
  br label %327

327:                                              ; preds = %323, %327
  %328 = phi ptr [ %330, %327 ], [ %324, %323 ]
  %329 = getelementptr inbounds [2 x %struct.LIST], ptr %328, i64 0, i64 1
  %330 = load ptr, ptr %329, align 8, !tbaa !5
  %331 = getelementptr inbounds %struct.word_type, ptr %330, i64 0, i32 1
  %332 = load i8, ptr %331, align 8, !tbaa !5
  switch i8 %332, label %921 [
    i8 0, label %327
    i8 1, label %333
    i8 19, label %341
    i8 17, label %429
    i8 9, label %517
    i8 2, label %911
    i8 8, label %911
  ]

333:                                              ; preds = %327
  %334 = getelementptr inbounds %struct.gapobj_type, ptr %330, i64 0, i32 3
  %335 = load i16, ptr %334, align 4
  %336 = and i16 %335, 512
  %337 = icmp eq i16 %336, 0
  br i1 %337, label %338, label %921

338:                                              ; preds = %333
  %339 = load i16, ptr %34, align 2
  %340 = or i16 %339, 32
  store i16 %340, ptr %34, align 2
  br label %921

341:                                              ; preds = %327
  %342 = load i16, ptr %34, align 2
  %343 = and i16 %342, 256
  %344 = icmp eq i16 %343, 0
  br i1 %344, label %921, label %345

345:                                              ; preds = %341
  %346 = getelementptr inbounds %struct.LIST, ptr %330, i64 0, i32 1
  %347 = load ptr, ptr %346, align 8, !tbaa !5
  %348 = getelementptr inbounds [2 x %struct.LIST], ptr %330, i64 0, i64 1, i32 1
  %349 = load ptr, ptr %348, align 8, !tbaa !5
  %350 = icmp eq ptr %347, %330
  br i1 %350, label %379, label %351

351:                                              ; preds = %345
  %352 = getelementptr inbounds %struct.word_type, ptr %347, i64 0, i32 1
  %353 = load i8, ptr %352, align 8, !tbaa !5
  %354 = icmp eq i8 %353, 0
  br i1 %354, label %358, label %355

355:                                              ; preds = %351
  %356 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %357 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %356, ptr noundef nonnull @.str.8) #4
  br label %358

358:                                              ; preds = %355, %351
  store ptr %347, ptr @zz_res, align 8, !tbaa !8
  store ptr %330, ptr @zz_hold, align 8, !tbaa !8
  %359 = load ptr, ptr %330, align 8, !tbaa !5
  store ptr %359, ptr @zz_tmp, align 8, !tbaa !8
  %360 = load ptr, ptr %347, align 8, !tbaa !5
  store ptr %360, ptr %330, align 8, !tbaa !5
  %361 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %362 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %363 = load ptr, ptr %362, align 8, !tbaa !5
  %364 = getelementptr inbounds %struct.LIST, ptr %363, i64 0, i32 1
  store ptr %361, ptr %364, align 8, !tbaa !5
  %365 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %365, ptr %362, align 8, !tbaa !5
  %366 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %367 = getelementptr inbounds %struct.LIST, ptr %365, i64 0, i32 1
  store ptr %366, ptr %367, align 8, !tbaa !5
  store ptr %347, ptr @zz_res, align 8, !tbaa !8
  store ptr %349, ptr @zz_hold, align 8, !tbaa !8
  %368 = icmp eq ptr %349, null
  br i1 %368, label %379, label %369

369:                                              ; preds = %358
  %370 = load ptr, ptr %349, align 8, !tbaa !5
  store ptr %370, ptr @zz_tmp, align 8, !tbaa !8
  %371 = load ptr, ptr %347, align 8, !tbaa !5
  store ptr %371, ptr %349, align 8, !tbaa !5
  %372 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %373 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %374 = load ptr, ptr %373, align 8, !tbaa !5
  %375 = getelementptr inbounds %struct.LIST, ptr %374, i64 0, i32 1
  store ptr %372, ptr %375, align 8, !tbaa !5
  %376 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %376, ptr %373, align 8, !tbaa !5
  %377 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %378 = getelementptr inbounds %struct.LIST, ptr %376, i64 0, i32 1
  store ptr %377, ptr %378, align 8, !tbaa !5
  br label %379

379:                                              ; preds = %358, %369, %345
  %380 = load ptr, ptr %348, align 8, !tbaa !5
  store ptr %380, ptr @xx_link, align 8, !tbaa !8
  %381 = getelementptr inbounds [2 x %struct.LIST], ptr %380, i64 0, i64 1, i32 1
  %382 = load ptr, ptr %381, align 8, !tbaa !5
  %383 = icmp eq ptr %382, %380
  br i1 %383, label %389, label %384

384:                                              ; preds = %379
  store ptr %382, ptr @zz_res, align 8, !tbaa !8
  %385 = getelementptr inbounds [2 x %struct.LIST], ptr %380, i64 0, i64 1
  %386 = load ptr, ptr %385, align 8, !tbaa !5
  %387 = getelementptr inbounds [2 x %struct.LIST], ptr %382, i64 0, i64 1
  store ptr %386, ptr %387, align 8, !tbaa !5
  %388 = getelementptr inbounds [2 x %struct.LIST], ptr %386, i64 0, i64 1, i32 1
  store ptr %382, ptr %388, align 8, !tbaa !5
  store ptr %380, ptr %381, align 8, !tbaa !5
  store ptr %380, ptr %385, align 8, !tbaa !5
  br label %389

389:                                              ; preds = %379, %384
  %390 = phi ptr [ %382, %384 ], [ null, %379 ]
  store ptr %390, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %380, ptr @zz_hold, align 8, !tbaa !8
  %391 = getelementptr inbounds %struct.LIST, ptr %380, i64 0, i32 1
  %392 = load ptr, ptr %391, align 8, !tbaa !5
  %393 = icmp eq ptr %392, %380
  br i1 %393, label %402, label %394

394:                                              ; preds = %389
  store ptr %392, ptr @zz_res, align 8, !tbaa !8
  %395 = load ptr, ptr %380, align 8, !tbaa !5
  store ptr %395, ptr %392, align 8, !tbaa !5
  %396 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %397 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %398 = load ptr, ptr %397, align 8, !tbaa !5
  %399 = getelementptr inbounds %struct.LIST, ptr %398, i64 0, i32 1
  store ptr %396, ptr %399, align 8, !tbaa !5
  %400 = getelementptr inbounds %struct.LIST, ptr %397, i64 0, i32 1
  store ptr %397, ptr %400, align 8, !tbaa !5
  store ptr %397, ptr %397, align 8, !tbaa !5
  %401 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %402

402:                                              ; preds = %389, %394
  %403 = phi ptr [ %380, %389 ], [ %401, %394 ]
  store ptr %403, ptr @zz_hold, align 8, !tbaa !8
  %404 = getelementptr inbounds %struct.word_type, ptr %403, i64 0, i32 1
  %405 = load i8, ptr %404, align 8, !tbaa !5
  %406 = add i8 %405, -11
  %407 = icmp ult i8 %406, 2
  %408 = getelementptr inbounds %struct.word_type, ptr %403, i64 0, i32 1, i32 0, i32 1
  %409 = zext i8 %405 to i64
  %410 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %409
  %411 = select i1 %407, ptr %408, ptr %410
  %412 = load i8, ptr %411, align 1, !tbaa !5
  %413 = zext i8 %412 to i32
  store i32 %413, ptr @zz_size, align 4, !tbaa !10
  %414 = zext i8 %412 to i64
  %415 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %414
  %416 = load ptr, ptr %415, align 8, !tbaa !8
  store ptr %416, ptr %403, align 8, !tbaa !5
  %417 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %418 = load i32, ptr @zz_size, align 4, !tbaa !10
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %419
  store ptr %417, ptr %420, align 8, !tbaa !8
  %421 = load ptr, ptr @xx_tmp, align 8, !tbaa !8
  %422 = getelementptr inbounds [2 x %struct.LIST], ptr %421, i64 0, i64 1, i32 1
  %423 = load ptr, ptr %422, align 8, !tbaa !5
  %424 = icmp eq ptr %423, %421
  br i1 %424, label %425, label %427

425:                                              ; preds = %402
  %426 = call i32 @DisposeObject(ptr noundef nonnull %421) #4
  br label %427

427:                                              ; preds = %425, %402
  %428 = load ptr, ptr %326, align 8, !tbaa !5
  br label %921

429:                                              ; preds = %327
  %430 = load i16, ptr %34, align 2
  %431 = and i16 %430, 256
  %432 = icmp eq i16 %431, 0
  br i1 %432, label %433, label %921

433:                                              ; preds = %429
  %434 = getelementptr inbounds %struct.LIST, ptr %330, i64 0, i32 1
  %435 = load ptr, ptr %434, align 8, !tbaa !5
  %436 = getelementptr inbounds [2 x %struct.LIST], ptr %330, i64 0, i64 1, i32 1
  %437 = load ptr, ptr %436, align 8, !tbaa !5
  %438 = icmp eq ptr %435, %330
  br i1 %438, label %467, label %439

439:                                              ; preds = %433
  %440 = getelementptr inbounds %struct.word_type, ptr %435, i64 0, i32 1
  %441 = load i8, ptr %440, align 8, !tbaa !5
  %442 = icmp eq i8 %441, 0
  br i1 %442, label %446, label %443

443:                                              ; preds = %439
  %444 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %445 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %444, ptr noundef nonnull @.str.8) #4
  br label %446

446:                                              ; preds = %443, %439
  store ptr %435, ptr @zz_res, align 8, !tbaa !8
  store ptr %330, ptr @zz_hold, align 8, !tbaa !8
  %447 = load ptr, ptr %330, align 8, !tbaa !5
  store ptr %447, ptr @zz_tmp, align 8, !tbaa !8
  %448 = load ptr, ptr %435, align 8, !tbaa !5
  store ptr %448, ptr %330, align 8, !tbaa !5
  %449 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %450 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %451 = load ptr, ptr %450, align 8, !tbaa !5
  %452 = getelementptr inbounds %struct.LIST, ptr %451, i64 0, i32 1
  store ptr %449, ptr %452, align 8, !tbaa !5
  %453 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %453, ptr %450, align 8, !tbaa !5
  %454 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %455 = getelementptr inbounds %struct.LIST, ptr %453, i64 0, i32 1
  store ptr %454, ptr %455, align 8, !tbaa !5
  store ptr %435, ptr @zz_res, align 8, !tbaa !8
  store ptr %437, ptr @zz_hold, align 8, !tbaa !8
  %456 = icmp eq ptr %437, null
  br i1 %456, label %467, label %457

457:                                              ; preds = %446
  %458 = load ptr, ptr %437, align 8, !tbaa !5
  store ptr %458, ptr @zz_tmp, align 8, !tbaa !8
  %459 = load ptr, ptr %435, align 8, !tbaa !5
  store ptr %459, ptr %437, align 8, !tbaa !5
  %460 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %461 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %462 = load ptr, ptr %461, align 8, !tbaa !5
  %463 = getelementptr inbounds %struct.LIST, ptr %462, i64 0, i32 1
  store ptr %460, ptr %463, align 8, !tbaa !5
  %464 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %464, ptr %461, align 8, !tbaa !5
  %465 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %466 = getelementptr inbounds %struct.LIST, ptr %464, i64 0, i32 1
  store ptr %465, ptr %466, align 8, !tbaa !5
  br label %467

467:                                              ; preds = %446, %457, %433
  %468 = load ptr, ptr %436, align 8, !tbaa !5
  store ptr %468, ptr @xx_link, align 8, !tbaa !8
  %469 = getelementptr inbounds [2 x %struct.LIST], ptr %468, i64 0, i64 1, i32 1
  %470 = load ptr, ptr %469, align 8, !tbaa !5
  %471 = icmp eq ptr %470, %468
  br i1 %471, label %477, label %472

472:                                              ; preds = %467
  store ptr %470, ptr @zz_res, align 8, !tbaa !8
  %473 = getelementptr inbounds [2 x %struct.LIST], ptr %468, i64 0, i64 1
  %474 = load ptr, ptr %473, align 8, !tbaa !5
  %475 = getelementptr inbounds [2 x %struct.LIST], ptr %470, i64 0, i64 1
  store ptr %474, ptr %475, align 8, !tbaa !5
  %476 = getelementptr inbounds [2 x %struct.LIST], ptr %474, i64 0, i64 1, i32 1
  store ptr %470, ptr %476, align 8, !tbaa !5
  store ptr %468, ptr %469, align 8, !tbaa !5
  store ptr %468, ptr %473, align 8, !tbaa !5
  br label %477

477:                                              ; preds = %467, %472
  %478 = phi ptr [ %470, %472 ], [ null, %467 ]
  store ptr %478, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %468, ptr @zz_hold, align 8, !tbaa !8
  %479 = getelementptr inbounds %struct.LIST, ptr %468, i64 0, i32 1
  %480 = load ptr, ptr %479, align 8, !tbaa !5
  %481 = icmp eq ptr %480, %468
  br i1 %481, label %490, label %482

482:                                              ; preds = %477
  store ptr %480, ptr @zz_res, align 8, !tbaa !8
  %483 = load ptr, ptr %468, align 8, !tbaa !5
  store ptr %483, ptr %480, align 8, !tbaa !5
  %484 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %485 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %486 = load ptr, ptr %485, align 8, !tbaa !5
  %487 = getelementptr inbounds %struct.LIST, ptr %486, i64 0, i32 1
  store ptr %484, ptr %487, align 8, !tbaa !5
  %488 = getelementptr inbounds %struct.LIST, ptr %485, i64 0, i32 1
  store ptr %485, ptr %488, align 8, !tbaa !5
  store ptr %485, ptr %485, align 8, !tbaa !5
  %489 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %490

490:                                              ; preds = %477, %482
  %491 = phi ptr [ %468, %477 ], [ %489, %482 ]
  store ptr %491, ptr @zz_hold, align 8, !tbaa !8
  %492 = getelementptr inbounds %struct.word_type, ptr %491, i64 0, i32 1
  %493 = load i8, ptr %492, align 8, !tbaa !5
  %494 = add i8 %493, -11
  %495 = icmp ult i8 %494, 2
  %496 = getelementptr inbounds %struct.word_type, ptr %491, i64 0, i32 1, i32 0, i32 1
  %497 = zext i8 %493 to i64
  %498 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %497
  %499 = select i1 %495, ptr %496, ptr %498
  %500 = load i8, ptr %499, align 1, !tbaa !5
  %501 = zext i8 %500 to i32
  store i32 %501, ptr @zz_size, align 4, !tbaa !10
  %502 = zext i8 %500 to i64
  %503 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %502
  %504 = load ptr, ptr %503, align 8, !tbaa !8
  store ptr %504, ptr %491, align 8, !tbaa !5
  %505 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %506 = load i32, ptr @zz_size, align 4, !tbaa !10
  %507 = sext i32 %506 to i64
  %508 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %507
  store ptr %505, ptr %508, align 8, !tbaa !8
  %509 = load ptr, ptr @xx_tmp, align 8, !tbaa !8
  %510 = getelementptr inbounds [2 x %struct.LIST], ptr %509, i64 0, i64 1, i32 1
  %511 = load ptr, ptr %510, align 8, !tbaa !5
  %512 = icmp eq ptr %511, %509
  br i1 %512, label %513, label %515

513:                                              ; preds = %490
  %514 = call i32 @DisposeObject(ptr noundef nonnull %509) #4
  br label %515

515:                                              ; preds = %513, %490
  %516 = load ptr, ptr %326, align 8, !tbaa !5
  br label %921

517:                                              ; preds = %327
  %518 = getelementptr inbounds [2 x %struct.LIST], ptr %330, i64 0, i64 1
  %519 = getelementptr inbounds [2 x %struct.LIST], ptr %330, i64 0, i64 1, i32 1
  %520 = load ptr, ptr %519, align 8, !tbaa !5
  %521 = load ptr, ptr %518, align 8, !tbaa !5
  %522 = icmp eq ptr %520, %521
  br i1 %522, label %526, label %523

523:                                              ; preds = %517
  %524 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %525 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %524, ptr noundef nonnull @.str.9) #4
  br label %526

526:                                              ; preds = %523, %517
  %527 = load ptr, ptr %330, align 8, !tbaa !5
  br label %528

528:                                              ; preds = %528, %526
  %529 = phi ptr [ %527, %526 ], [ %531, %528 ]
  %530 = getelementptr inbounds [2 x %struct.LIST], ptr %529, i64 0, i64 1
  %531 = load ptr, ptr %530, align 8, !tbaa !5
  %532 = getelementptr inbounds %struct.word_type, ptr %531, i64 0, i32 1
  %533 = load i8, ptr %532, align 8, !tbaa !5
  switch i8 %533, label %534 [
    i8 0, label %528
    i8 1, label %921
  ]

534:                                              ; preds = %528
  %535 = icmp ult i8 %533, 9
  br i1 %535, label %536, label %540

536:                                              ; preds = %534
  %537 = getelementptr inbounds i8, ptr %531, i64 42
  %538 = load i16, ptr %537, align 2
  %539 = or i16 %538, 16
  store i16 %539, ptr %537, align 2
  br label %921

540:                                              ; preds = %534
  %541 = icmp eq i8 %533, 19
  br i1 %541, label %542, label %921

542:                                              ; preds = %540
  %543 = getelementptr inbounds %struct.LIST, ptr %330, i64 0, i32 1
  %544 = load ptr, ptr %543, align 8, !tbaa !5
  br label %545

545:                                              ; preds = %545, %542
  %546 = phi ptr [ %544, %542 ], [ %548, %545 ]
  %547 = getelementptr inbounds [2 x %struct.LIST], ptr %546, i64 0, i64 1
  %548 = load ptr, ptr %547, align 8, !tbaa !5
  %549 = getelementptr inbounds %struct.word_type, ptr %548, i64 0, i32 1
  %550 = load i8, ptr %549, align 8, !tbaa !5
  switch i8 %550, label %551 [
    i8 0, label %545
    i8 16, label %554
  ]

551:                                              ; preds = %545
  %552 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %553 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %552, ptr noundef nonnull @.str.10) #4
  br label %554

554:                                              ; preds = %545, %551
  %555 = getelementptr inbounds [2 x %struct.LIST], ptr %531, i64 0, i64 1, i32 1
  %556 = load ptr, ptr %555, align 8, !tbaa !5
  br label %557

557:                                              ; preds = %557, %554
  %558 = phi ptr [ %556, %554 ], [ %559, %557 ]
  %559 = load ptr, ptr %558, align 8, !tbaa !5
  %560 = getelementptr inbounds %struct.word_type, ptr %559, i64 0, i32 1
  %561 = load i8, ptr %560, align 8, !tbaa !5
  %562 = icmp eq i8 %561, 0
  br i1 %562, label %557, label %563

563:                                              ; preds = %557
  %564 = icmp eq ptr %548, %559
  br i1 %564, label %569, label %565

565:                                              ; preds = %563
  %566 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %567 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %566, ptr noundef nonnull @.str.11) #4
  %568 = load ptr, ptr %555, align 8, !tbaa !5
  br label %569

569:                                              ; preds = %565, %563
  %570 = phi ptr [ %568, %565 ], [ %556, %563 ]
  %571 = load ptr, ptr %531, align 8, !tbaa !5
  %572 = icmp eq ptr %571, %531
  br i1 %572, label %814, label %573

573:                                              ; preds = %569
  %574 = load ptr, ptr %543, align 8, !tbaa !5
  %575 = getelementptr inbounds %struct.word_type, ptr %548, i64 0, i32 3
  %576 = getelementptr inbounds %struct.word_type, ptr %548, i64 0, i32 3, i32 1
  %577 = getelementptr inbounds [2 x %struct.LIST], ptr %574, i64 0, i64 1, i32 1
  %578 = getelementptr inbounds %struct.LIST, ptr %570, i64 0, i32 1
  br label %579

579:                                              ; preds = %573, %811
  %580 = phi ptr [ %571, %573 ], [ %812, %811 ]
  br label %581

581:                                              ; preds = %579, %581
  %582 = phi ptr [ %584, %581 ], [ %580, %579 ]
  %583 = getelementptr inbounds [2 x %struct.LIST], ptr %582, i64 0, i64 1
  %584 = load ptr, ptr %583, align 8, !tbaa !5
  %585 = getelementptr inbounds %struct.word_type, ptr %584, i64 0, i32 1
  %586 = load i8, ptr %585, align 8, !tbaa !5
  switch i8 %586, label %627 [
    i8 0, label %581
    i8 1, label %587
  ]

587:                                              ; preds = %581
  %588 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %589 = zext i8 %588 to i32
  store i32 %589, ptr @zz_size, align 4, !tbaa !10
  %590 = zext i8 %588 to i64
  %591 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %590
  %592 = load ptr, ptr %591, align 8, !tbaa !8
  %593 = icmp eq ptr %592, null
  br i1 %593, label %594, label %597

594:                                              ; preds = %587
  %595 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %596 = call ptr @GetMemory(i32 noundef %589, ptr noundef %595) #4
  br label %599

597:                                              ; preds = %587
  store ptr %592, ptr @zz_hold, align 8, !tbaa !8
  %598 = load ptr, ptr %592, align 8, !tbaa !5
  store ptr %598, ptr %591, align 8, !tbaa !8
  br label %599

599:                                              ; preds = %594, %597
  %600 = phi ptr [ %596, %594 ], [ %592, %597 ]
  %601 = getelementptr inbounds %struct.word_type, ptr %600, i64 0, i32 1
  store i8 0, ptr %601, align 8, !tbaa !5
  %602 = getelementptr inbounds [2 x %struct.LIST], ptr %600, i64 0, i64 1, i32 1
  store ptr %600, ptr %602, align 8, !tbaa !5
  %603 = getelementptr inbounds [2 x %struct.LIST], ptr %600, i64 0, i64 1
  store ptr %600, ptr %603, align 8, !tbaa !5
  %604 = getelementptr inbounds %struct.LIST, ptr %600, i64 0, i32 1
  store ptr %600, ptr %604, align 8, !tbaa !5
  store ptr %600, ptr %600, align 8, !tbaa !5
  store ptr %600, ptr @xx_link, align 8, !tbaa !8
  store ptr %600, ptr @zz_res, align 8, !tbaa !8
  %605 = load ptr, ptr %325, align 8, !tbaa !5
  store ptr %605, ptr @zz_hold, align 8, !tbaa !8
  %606 = icmp eq ptr %605, null
  br i1 %606, label %607, label %608

607:                                              ; preds = %599
  store ptr %584, ptr @zz_hold, align 8, !tbaa !8
  br label %620

608:                                              ; preds = %599
  %609 = load ptr, ptr %605, align 8, !tbaa !5
  store ptr %609, ptr @zz_tmp, align 8, !tbaa !8
  %610 = load ptr, ptr %600, align 8, !tbaa !5
  store ptr %610, ptr %605, align 8, !tbaa !5
  %611 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %612 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %613 = load ptr, ptr %612, align 8, !tbaa !5
  %614 = getelementptr inbounds %struct.LIST, ptr %613, i64 0, i32 1
  store ptr %611, ptr %614, align 8, !tbaa !5
  %615 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %615, ptr %612, align 8, !tbaa !5
  %616 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %617 = getelementptr inbounds %struct.LIST, ptr %615, i64 0, i32 1
  store ptr %616, ptr %617, align 8, !tbaa !5
  %618 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %618, ptr @zz_res, align 8, !tbaa !8
  store ptr %584, ptr @zz_hold, align 8, !tbaa !8
  %619 = icmp eq ptr %618, null
  br i1 %619, label %811, label %620

620:                                              ; preds = %607, %608
  %621 = phi ptr [ %600, %607 ], [ %618, %608 ]
  %622 = getelementptr inbounds [2 x %struct.LIST], ptr %584, i64 0, i64 1
  %623 = load ptr, ptr %622, align 8, !tbaa !5
  store ptr %623, ptr @zz_tmp, align 8, !tbaa !8
  %624 = getelementptr inbounds [2 x %struct.LIST], ptr %621, i64 0, i64 1
  %625 = load ptr, ptr %624, align 8, !tbaa !5
  store ptr %625, ptr %622, align 8, !tbaa !5
  %626 = getelementptr inbounds [2 x %struct.LIST], ptr %625, i64 0, i64 1, i32 1
  store ptr %584, ptr %626, align 8, !tbaa !5
  store ptr %623, ptr %624, align 8, !tbaa !5
  br label %807

627:                                              ; preds = %581
  %628 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 9), align 1, !tbaa !5
  %629 = zext i8 %628 to i32
  store i32 %629, ptr @zz_size, align 4, !tbaa !10
  %630 = zext i8 %628 to i64
  %631 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %630
  %632 = load ptr, ptr %631, align 8, !tbaa !8
  %633 = icmp eq ptr %632, null
  br i1 %633, label %634, label %637

634:                                              ; preds = %627
  %635 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %636 = call ptr @GetMemory(i32 noundef %629, ptr noundef %635) #4
  store ptr %636, ptr @zz_hold, align 8, !tbaa !8
  br label %639

637:                                              ; preds = %627
  store ptr %632, ptr @zz_hold, align 8, !tbaa !8
  %638 = load ptr, ptr %632, align 8, !tbaa !5
  store ptr %638, ptr %631, align 8, !tbaa !8
  br label %639

639:                                              ; preds = %634, %637
  %640 = phi ptr [ %636, %634 ], [ %632, %637 ]
  %641 = getelementptr inbounds %struct.word_type, ptr %640, i64 0, i32 1
  store i8 9, ptr %641, align 8, !tbaa !5
  %642 = getelementptr inbounds [2 x %struct.LIST], ptr %640, i64 0, i64 1
  %643 = getelementptr inbounds [2 x %struct.LIST], ptr %640, i64 0, i64 1, i32 1
  store ptr %640, ptr %643, align 8, !tbaa !5
  store ptr %640, ptr %642, align 8, !tbaa !5
  %644 = getelementptr inbounds %struct.LIST, ptr %640, i64 0, i32 1
  store ptr %640, ptr %644, align 8, !tbaa !5
  store ptr %640, ptr %640, align 8, !tbaa !5
  %645 = load i32, ptr %575, align 8, !tbaa !5
  %646 = getelementptr inbounds %struct.word_type, ptr %640, i64 0, i32 3
  store i32 %645, ptr %646, align 8, !tbaa !5
  %647 = load i32, ptr %576, align 8, !tbaa !5
  %648 = getelementptr inbounds %struct.word_type, ptr %640, i64 0, i32 3, i32 1
  store i32 %647, ptr %648, align 8, !tbaa !5
  %649 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %650 = zext i8 %649 to i32
  store i32 %650, ptr @zz_size, align 4, !tbaa !10
  %651 = zext i8 %649 to i64
  %652 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %651
  %653 = load ptr, ptr %652, align 8, !tbaa !8
  %654 = icmp eq ptr %653, null
  br i1 %654, label %655, label %658

655:                                              ; preds = %639
  %656 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %657 = call ptr @GetMemory(i32 noundef %650, ptr noundef %656) #4
  br label %660

658:                                              ; preds = %639
  store ptr %653, ptr @zz_hold, align 8, !tbaa !8
  %659 = load ptr, ptr %653, align 8, !tbaa !5
  store ptr %659, ptr %652, align 8, !tbaa !8
  br label %660

660:                                              ; preds = %655, %658
  %661 = phi ptr [ %657, %655 ], [ %653, %658 ]
  %662 = getelementptr inbounds %struct.word_type, ptr %661, i64 0, i32 1
  store i8 0, ptr %662, align 8, !tbaa !5
  %663 = getelementptr inbounds [2 x %struct.LIST], ptr %661, i64 0, i64 1, i32 1
  store ptr %661, ptr %663, align 8, !tbaa !5
  %664 = getelementptr inbounds [2 x %struct.LIST], ptr %661, i64 0, i64 1
  store ptr %661, ptr %664, align 8, !tbaa !5
  %665 = getelementptr inbounds %struct.LIST, ptr %661, i64 0, i32 1
  store ptr %661, ptr %665, align 8, !tbaa !5
  store ptr %661, ptr %661, align 8, !tbaa !5
  store ptr %661, ptr @xx_link, align 8, !tbaa !8
  store ptr %661, ptr @zz_res, align 8, !tbaa !8
  %666 = load ptr, ptr %325, align 8, !tbaa !5
  store ptr %666, ptr @zz_hold, align 8, !tbaa !8
  %667 = icmp eq ptr %666, null
  br i1 %667, label %668, label %669

668:                                              ; preds = %660
  store ptr %640, ptr @zz_hold, align 8, !tbaa !8
  br label %684

669:                                              ; preds = %660
  %670 = load ptr, ptr %666, align 8, !tbaa !5
  store ptr %670, ptr @zz_tmp, align 8, !tbaa !8
  %671 = load ptr, ptr %661, align 8, !tbaa !5
  store ptr %671, ptr %666, align 8, !tbaa !5
  %672 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %673 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %674 = load ptr, ptr %673, align 8, !tbaa !5
  %675 = getelementptr inbounds %struct.LIST, ptr %674, i64 0, i32 1
  store ptr %672, ptr %675, align 8, !tbaa !5
  %676 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %676, ptr %673, align 8, !tbaa !5
  %677 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %678 = getelementptr inbounds %struct.LIST, ptr %676, i64 0, i32 1
  store ptr %677, ptr %678, align 8, !tbaa !5
  %679 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %679, ptr @zz_res, align 8, !tbaa !8
  store ptr %640, ptr @zz_hold, align 8, !tbaa !8
  %680 = icmp eq ptr %679, null
  br i1 %680, label %692, label %681

681:                                              ; preds = %669
  %682 = getelementptr inbounds [2 x %struct.LIST], ptr %679, i64 0, i64 1
  %683 = load ptr, ptr %682, align 8, !tbaa !5
  br label %684

684:                                              ; preds = %681, %668
  %685 = phi ptr [ %661, %668 ], [ %683, %681 ]
  %686 = phi ptr [ %661, %668 ], [ %679, %681 ]
  %687 = load ptr, ptr %642, align 8, !tbaa !5
  store ptr %687, ptr @zz_tmp, align 8, !tbaa !8
  %688 = getelementptr inbounds [2 x %struct.LIST], ptr %686, i64 0, i64 1
  store ptr %685, ptr %642, align 8, !tbaa !5
  %689 = load ptr, ptr %688, align 8, !tbaa !5
  %690 = getelementptr inbounds [2 x %struct.LIST], ptr %689, i64 0, i64 1, i32 1
  store ptr %640, ptr %690, align 8, !tbaa !5
  store ptr %687, ptr %688, align 8, !tbaa !5
  %691 = getelementptr inbounds [2 x %struct.LIST], ptr %687, i64 0, i64 1, i32 1
  store ptr %686, ptr %691, align 8, !tbaa !5
  br label %692

692:                                              ; preds = %669, %684
  %693 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %694 = zext i8 %693 to i32
  store i32 %694, ptr @zz_size, align 4, !tbaa !10
  %695 = zext i8 %693 to i64
  %696 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %695
  %697 = load ptr, ptr %696, align 8, !tbaa !8
  %698 = icmp eq ptr %697, null
  br i1 %698, label %699, label %702

699:                                              ; preds = %692
  %700 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %701 = call ptr @GetMemory(i32 noundef %694, ptr noundef %700) #4
  br label %704

702:                                              ; preds = %692
  store ptr %697, ptr @zz_hold, align 8, !tbaa !8
  %703 = load ptr, ptr %697, align 8, !tbaa !5
  store ptr %703, ptr %696, align 8, !tbaa !8
  br label %704

704:                                              ; preds = %699, %702
  %705 = phi ptr [ %701, %699 ], [ %697, %702 ]
  %706 = getelementptr inbounds %struct.word_type, ptr %705, i64 0, i32 1
  store i8 0, ptr %706, align 8, !tbaa !5
  %707 = getelementptr inbounds [2 x %struct.LIST], ptr %705, i64 0, i64 1, i32 1
  store ptr %705, ptr %707, align 8, !tbaa !5
  %708 = getelementptr inbounds [2 x %struct.LIST], ptr %705, i64 0, i64 1
  store ptr %705, ptr %708, align 8, !tbaa !5
  %709 = getelementptr inbounds %struct.LIST, ptr %705, i64 0, i32 1
  store ptr %705, ptr %709, align 8, !tbaa !5
  store ptr %705, ptr %705, align 8, !tbaa !5
  store ptr %705, ptr @xx_link, align 8, !tbaa !8
  store ptr %705, ptr @zz_res, align 8, !tbaa !8
  store ptr %640, ptr @zz_hold, align 8, !tbaa !8
  %710 = load ptr, ptr %640, align 8, !tbaa !5
  store ptr %710, ptr @zz_tmp, align 8, !tbaa !8
  %711 = load ptr, ptr %705, align 8, !tbaa !5
  store ptr %711, ptr %640, align 8, !tbaa !5
  %712 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %713 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %714 = load ptr, ptr %713, align 8, !tbaa !5
  %715 = getelementptr inbounds %struct.LIST, ptr %714, i64 0, i32 1
  store ptr %712, ptr %715, align 8, !tbaa !5
  %716 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %716, ptr %713, align 8, !tbaa !5
  %717 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %718 = getelementptr inbounds %struct.LIST, ptr %716, i64 0, i32 1
  store ptr %717, ptr %718, align 8, !tbaa !5
  %719 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %719, ptr @zz_res, align 8, !tbaa !8
  %720 = load ptr, ptr %577, align 8, !tbaa !5
  store ptr %720, ptr @zz_hold, align 8, !tbaa !8
  %721 = icmp eq ptr %720, null
  %722 = icmp eq ptr %719, null
  %723 = select i1 %721, i1 true, i1 %722
  br i1 %723, label %731, label %724

724:                                              ; preds = %704
  %725 = getelementptr inbounds [2 x %struct.LIST], ptr %720, i64 0, i64 1
  %726 = load ptr, ptr %725, align 8, !tbaa !5
  store ptr %726, ptr @zz_tmp, align 8, !tbaa !8
  %727 = getelementptr inbounds [2 x %struct.LIST], ptr %719, i64 0, i64 1
  %728 = load ptr, ptr %727, align 8, !tbaa !5
  store ptr %728, ptr %725, align 8, !tbaa !5
  %729 = getelementptr inbounds [2 x %struct.LIST], ptr %728, i64 0, i64 1, i32 1
  store ptr %720, ptr %729, align 8, !tbaa !5
  store ptr %726, ptr %727, align 8, !tbaa !5
  %730 = getelementptr inbounds [2 x %struct.LIST], ptr %726, i64 0, i64 1, i32 1
  store ptr %719, ptr %730, align 8, !tbaa !5
  br label %731

731:                                              ; preds = %704, %724
  %732 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %733 = zext i8 %732 to i32
  store i32 %733, ptr @zz_size, align 4, !tbaa !10
  %734 = zext i8 %732 to i64
  %735 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %734
  %736 = load ptr, ptr %735, align 8, !tbaa !8
  %737 = icmp eq ptr %736, null
  br i1 %737, label %738, label %741

738:                                              ; preds = %731
  %739 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %740 = call ptr @GetMemory(i32 noundef %733, ptr noundef %739) #4
  br label %743

741:                                              ; preds = %731
  store ptr %736, ptr @zz_hold, align 8, !tbaa !8
  %742 = load ptr, ptr %736, align 8, !tbaa !5
  store ptr %742, ptr %735, align 8, !tbaa !8
  br label %743

743:                                              ; preds = %738, %741
  %744 = phi ptr [ %740, %738 ], [ %736, %741 ]
  %745 = getelementptr inbounds %struct.word_type, ptr %744, i64 0, i32 1
  store i8 0, ptr %745, align 8, !tbaa !5
  %746 = getelementptr inbounds [2 x %struct.LIST], ptr %744, i64 0, i64 1, i32 1
  store ptr %744, ptr %746, align 8, !tbaa !5
  %747 = getelementptr inbounds [2 x %struct.LIST], ptr %744, i64 0, i64 1
  store ptr %744, ptr %747, align 8, !tbaa !5
  %748 = getelementptr inbounds %struct.LIST, ptr %744, i64 0, i32 1
  store ptr %744, ptr %748, align 8, !tbaa !5
  store ptr %744, ptr %744, align 8, !tbaa !5
  store ptr %744, ptr @xx_link, align 8, !tbaa !8
  store ptr %744, ptr @zz_res, align 8, !tbaa !8
  %749 = load ptr, ptr %578, align 8, !tbaa !5
  store ptr %749, ptr @zz_hold, align 8, !tbaa !8
  %750 = icmp eq ptr %749, null
  br i1 %750, label %751, label %752

751:                                              ; preds = %743
  store ptr %584, ptr @zz_hold, align 8, !tbaa !8
  br label %764

752:                                              ; preds = %743
  %753 = load ptr, ptr %749, align 8, !tbaa !5
  store ptr %753, ptr @zz_tmp, align 8, !tbaa !8
  %754 = load ptr, ptr %744, align 8, !tbaa !5
  store ptr %754, ptr %749, align 8, !tbaa !5
  %755 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %756 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %757 = load ptr, ptr %756, align 8, !tbaa !5
  %758 = getelementptr inbounds %struct.LIST, ptr %757, i64 0, i32 1
  store ptr %755, ptr %758, align 8, !tbaa !5
  %759 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %759, ptr %756, align 8, !tbaa !5
  %760 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %761 = getelementptr inbounds %struct.LIST, ptr %759, i64 0, i32 1
  store ptr %760, ptr %761, align 8, !tbaa !5
  %762 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %762, ptr @zz_res, align 8, !tbaa !8
  store ptr %584, ptr @zz_hold, align 8, !tbaa !8
  %763 = icmp eq ptr %762, null
  br i1 %763, label %772, label %764

764:                                              ; preds = %751, %752
  %765 = phi ptr [ %744, %751 ], [ %762, %752 ]
  %766 = getelementptr inbounds [2 x %struct.LIST], ptr %584, i64 0, i64 1
  %767 = load ptr, ptr %766, align 8, !tbaa !5
  store ptr %767, ptr @zz_tmp, align 8, !tbaa !8
  %768 = getelementptr inbounds [2 x %struct.LIST], ptr %765, i64 0, i64 1
  %769 = load ptr, ptr %768, align 8, !tbaa !5
  store ptr %769, ptr %766, align 8, !tbaa !5
  %770 = getelementptr inbounds [2 x %struct.LIST], ptr %769, i64 0, i64 1, i32 1
  store ptr %584, ptr %770, align 8, !tbaa !5
  store ptr %767, ptr %768, align 8, !tbaa !5
  %771 = getelementptr inbounds [2 x %struct.LIST], ptr %767, i64 0, i64 1, i32 1
  store ptr %765, ptr %771, align 8, !tbaa !5
  br label %772

772:                                              ; preds = %752, %764
  %773 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %774 = zext i8 %773 to i32
  store i32 %774, ptr @zz_size, align 4, !tbaa !10
  %775 = zext i8 %773 to i64
  %776 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %775
  %777 = load ptr, ptr %776, align 8, !tbaa !8
  %778 = icmp eq ptr %777, null
  br i1 %778, label %779, label %782

779:                                              ; preds = %772
  %780 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %781 = call ptr @GetMemory(i32 noundef %774, ptr noundef %780) #4
  br label %784

782:                                              ; preds = %772
  store ptr %777, ptr @zz_hold, align 8, !tbaa !8
  %783 = load ptr, ptr %777, align 8, !tbaa !5
  store ptr %783, ptr %776, align 8, !tbaa !8
  br label %784

784:                                              ; preds = %779, %782
  %785 = phi ptr [ %781, %779 ], [ %777, %782 ]
  %786 = getelementptr inbounds %struct.word_type, ptr %785, i64 0, i32 1
  store i8 0, ptr %786, align 8, !tbaa !5
  %787 = getelementptr inbounds [2 x %struct.LIST], ptr %785, i64 0, i64 1, i32 1
  store ptr %785, ptr %787, align 8, !tbaa !5
  %788 = getelementptr inbounds [2 x %struct.LIST], ptr %785, i64 0, i64 1
  store ptr %785, ptr %788, align 8, !tbaa !5
  %789 = getelementptr inbounds %struct.LIST, ptr %785, i64 0, i32 1
  store ptr %785, ptr %789, align 8, !tbaa !5
  store ptr %785, ptr %785, align 8, !tbaa !5
  store ptr %785, ptr @xx_link, align 8, !tbaa !8
  store ptr %785, ptr @zz_res, align 8, !tbaa !8
  store ptr %640, ptr @zz_hold, align 8, !tbaa !8
  %790 = load ptr, ptr %640, align 8, !tbaa !5
  store ptr %790, ptr @zz_tmp, align 8, !tbaa !8
  %791 = load ptr, ptr %785, align 8, !tbaa !5
  store ptr %791, ptr %640, align 8, !tbaa !5
  %792 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %793 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %794 = load ptr, ptr %793, align 8, !tbaa !5
  %795 = getelementptr inbounds %struct.LIST, ptr %794, i64 0, i32 1
  store ptr %792, ptr %795, align 8, !tbaa !5
  %796 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %796, ptr %793, align 8, !tbaa !5
  %797 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %798 = getelementptr inbounds %struct.LIST, ptr %796, i64 0, i32 1
  store ptr %797, ptr %798, align 8, !tbaa !5
  %799 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %799, ptr @zz_res, align 8, !tbaa !8
  store ptr %584, ptr @zz_hold, align 8, !tbaa !8
  %800 = icmp eq ptr %799, null
  br i1 %800, label %811, label %801

801:                                              ; preds = %784
  %802 = getelementptr inbounds [2 x %struct.LIST], ptr %584, i64 0, i64 1
  %803 = load ptr, ptr %802, align 8, !tbaa !5
  store ptr %803, ptr @zz_tmp, align 8, !tbaa !8
  %804 = getelementptr inbounds [2 x %struct.LIST], ptr %799, i64 0, i64 1
  %805 = load ptr, ptr %804, align 8, !tbaa !5
  store ptr %805, ptr %802, align 8, !tbaa !5
  %806 = getelementptr inbounds [2 x %struct.LIST], ptr %805, i64 0, i64 1, i32 1
  store ptr %584, ptr %806, align 8, !tbaa !5
  store ptr %803, ptr %804, align 8, !tbaa !5
  br label %807

807:                                              ; preds = %801, %620
  %808 = phi ptr [ %623, %620 ], [ %803, %801 ]
  %809 = phi ptr [ %621, %620 ], [ %799, %801 ]
  %810 = getelementptr inbounds [2 x %struct.LIST], ptr %808, i64 0, i64 1, i32 1
  store ptr %809, ptr %810, align 8, !tbaa !5
  br label %811

811:                                              ; preds = %807, %784, %608
  %812 = load ptr, ptr %580, align 8, !tbaa !5
  %813 = icmp eq ptr %812, %531
  br i1 %813, label %814, label %579

814:                                              ; preds = %811, %569
  store ptr %570, ptr @xx_link, align 8, !tbaa !8
  %815 = getelementptr inbounds [2 x %struct.LIST], ptr %570, i64 0, i64 1, i32 1
  %816 = load ptr, ptr %815, align 8, !tbaa !5
  %817 = icmp eq ptr %816, %570
  br i1 %817, label %823, label %818

818:                                              ; preds = %814
  store ptr %816, ptr @zz_res, align 8, !tbaa !8
  %819 = getelementptr inbounds [2 x %struct.LIST], ptr %570, i64 0, i64 1
  %820 = load ptr, ptr %819, align 8, !tbaa !5
  %821 = getelementptr inbounds [2 x %struct.LIST], ptr %816, i64 0, i64 1
  store ptr %820, ptr %821, align 8, !tbaa !5
  %822 = getelementptr inbounds [2 x %struct.LIST], ptr %820, i64 0, i64 1, i32 1
  store ptr %816, ptr %822, align 8, !tbaa !5
  store ptr %570, ptr %815, align 8, !tbaa !5
  store ptr %570, ptr %819, align 8, !tbaa !5
  br label %823

823:                                              ; preds = %814, %818
  store ptr %570, ptr @zz_hold, align 8, !tbaa !8
  %824 = getelementptr inbounds %struct.LIST, ptr %570, i64 0, i32 1
  %825 = load ptr, ptr %824, align 8, !tbaa !5
  %826 = icmp eq ptr %825, %570
  br i1 %826, label %835, label %827

827:                                              ; preds = %823
  store ptr %825, ptr @zz_res, align 8, !tbaa !8
  %828 = load ptr, ptr %570, align 8, !tbaa !5
  store ptr %828, ptr %825, align 8, !tbaa !5
  %829 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %830 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %831 = load ptr, ptr %830, align 8, !tbaa !5
  %832 = getelementptr inbounds %struct.LIST, ptr %831, i64 0, i32 1
  store ptr %829, ptr %832, align 8, !tbaa !5
  %833 = getelementptr inbounds %struct.LIST, ptr %830, i64 0, i32 1
  store ptr %830, ptr %833, align 8, !tbaa !5
  store ptr %830, ptr %830, align 8, !tbaa !5
  %834 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %835

835:                                              ; preds = %823, %827
  %836 = phi ptr [ %570, %823 ], [ %834, %827 ]
  store ptr %836, ptr @zz_hold, align 8, !tbaa !8
  %837 = getelementptr inbounds %struct.word_type, ptr %836, i64 0, i32 1
  %838 = load i8, ptr %837, align 8, !tbaa !5
  %839 = add i8 %838, -11
  %840 = icmp ult i8 %839, 2
  %841 = getelementptr inbounds %struct.word_type, ptr %836, i64 0, i32 1, i32 0, i32 1
  %842 = zext i8 %838 to i64
  %843 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %842
  %844 = select i1 %840, ptr %841, ptr %843
  %845 = load i8, ptr %844, align 1, !tbaa !5
  %846 = zext i8 %845 to i32
  store i32 %846, ptr @zz_size, align 4, !tbaa !10
  %847 = zext i8 %845 to i64
  %848 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %847
  %849 = load ptr, ptr %848, align 8, !tbaa !8
  store ptr %849, ptr %836, align 8, !tbaa !5
  %850 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %851 = load i32, ptr @zz_size, align 4, !tbaa !10
  %852 = sext i32 %851 to i64
  %853 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %852
  store ptr %850, ptr %853, align 8, !tbaa !8
  %854 = load ptr, ptr %519, align 8, !tbaa !5
  %855 = load ptr, ptr %518, align 8, !tbaa !5
  %856 = icmp eq ptr %854, %855
  br i1 %856, label %861, label %857

857:                                              ; preds = %835
  %858 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %859 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %858, ptr noundef nonnull @.str.12) #4
  %860 = load ptr, ptr %519, align 8, !tbaa !5
  br label %861

861:                                              ; preds = %857, %835
  %862 = phi ptr [ %860, %857 ], [ %854, %835 ]
  store ptr %862, ptr @xx_link, align 8, !tbaa !8
  %863 = getelementptr inbounds [2 x %struct.LIST], ptr %862, i64 0, i64 1, i32 1
  %864 = load ptr, ptr %863, align 8, !tbaa !5
  %865 = icmp eq ptr %864, %862
  br i1 %865, label %871, label %866

866:                                              ; preds = %861
  store ptr %864, ptr @zz_res, align 8, !tbaa !8
  %867 = getelementptr inbounds [2 x %struct.LIST], ptr %862, i64 0, i64 1
  %868 = load ptr, ptr %867, align 8, !tbaa !5
  %869 = getelementptr inbounds [2 x %struct.LIST], ptr %864, i64 0, i64 1
  store ptr %868, ptr %869, align 8, !tbaa !5
  %870 = getelementptr inbounds [2 x %struct.LIST], ptr %868, i64 0, i64 1, i32 1
  store ptr %864, ptr %870, align 8, !tbaa !5
  store ptr %862, ptr %863, align 8, !tbaa !5
  store ptr %862, ptr %867, align 8, !tbaa !5
  br label %871

871:                                              ; preds = %861, %866
  %872 = phi ptr [ %864, %866 ], [ null, %861 ]
  store ptr %872, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %862, ptr @zz_hold, align 8, !tbaa !8
  %873 = getelementptr inbounds %struct.LIST, ptr %862, i64 0, i32 1
  %874 = load ptr, ptr %873, align 8, !tbaa !5
  %875 = icmp eq ptr %874, %862
  br i1 %875, label %884, label %876

876:                                              ; preds = %871
  store ptr %874, ptr @zz_res, align 8, !tbaa !8
  %877 = load ptr, ptr %862, align 8, !tbaa !5
  store ptr %877, ptr %874, align 8, !tbaa !5
  %878 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %879 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %880 = load ptr, ptr %879, align 8, !tbaa !5
  %881 = getelementptr inbounds %struct.LIST, ptr %880, i64 0, i32 1
  store ptr %878, ptr %881, align 8, !tbaa !5
  %882 = getelementptr inbounds %struct.LIST, ptr %879, i64 0, i32 1
  store ptr %879, ptr %882, align 8, !tbaa !5
  store ptr %879, ptr %879, align 8, !tbaa !5
  %883 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %884

884:                                              ; preds = %871, %876
  %885 = phi ptr [ %862, %871 ], [ %883, %876 ]
  store ptr %885, ptr @zz_hold, align 8, !tbaa !8
  %886 = getelementptr inbounds %struct.word_type, ptr %885, i64 0, i32 1
  %887 = load i8, ptr %886, align 8, !tbaa !5
  %888 = add i8 %887, -11
  %889 = icmp ult i8 %888, 2
  %890 = getelementptr inbounds %struct.word_type, ptr %885, i64 0, i32 1, i32 0, i32 1
  %891 = zext i8 %887 to i64
  %892 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %891
  %893 = select i1 %889, ptr %890, ptr %892
  %894 = load i8, ptr %893, align 1, !tbaa !5
  %895 = zext i8 %894 to i32
  store i32 %895, ptr @zz_size, align 4, !tbaa !10
  %896 = zext i8 %894 to i64
  %897 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %896
  %898 = load ptr, ptr %897, align 8, !tbaa !8
  store ptr %898, ptr %885, align 8, !tbaa !5
  %899 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %900 = load i32, ptr @zz_size, align 4, !tbaa !10
  %901 = sext i32 %900 to i64
  %902 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %901
  store ptr %899, ptr %902, align 8, !tbaa !8
  %903 = load ptr, ptr @xx_tmp, align 8, !tbaa !8
  %904 = getelementptr inbounds [2 x %struct.LIST], ptr %903, i64 0, i64 1, i32 1
  %905 = load ptr, ptr %904, align 8, !tbaa !5
  %906 = icmp eq ptr %905, %903
  br i1 %906, label %907, label %909

907:                                              ; preds = %884
  %908 = call i32 @DisposeObject(ptr noundef nonnull %903) #4
  br label %909

909:                                              ; preds = %907, %884
  %910 = load ptr, ptr %326, align 8, !tbaa !5
  br label %921

911:                                              ; preds = %327, %327
  %912 = load i16, ptr %34, align 2
  %913 = and i16 %912, 256
  %914 = icmp eq i16 %913, 0
  %915 = getelementptr inbounds i8, ptr %330, i64 42
  %916 = load i16, ptr %915, align 2
  br i1 %914, label %917, label %919

917:                                              ; preds = %911
  %918 = or i16 %916, 8
  store i16 %918, ptr %915, align 2
  br label %921

919:                                              ; preds = %911
  %920 = or i16 %916, 16
  store i16 %920, ptr %915, align 2
  br label %921

921:                                              ; preds = %327, %528, %338, %333, %427, %341, %515, %429, %540, %909, %536, %919, %917
  %922 = phi ptr [ %326, %917 ], [ %326, %919 ], [ %326, %536 ], [ %910, %909 ], [ %326, %540 ], [ %516, %515 ], [ %326, %429 ], [ %428, %427 ], [ %326, %341 ], [ %326, %333 ], [ %326, %338 ], [ %326, %528 ], [ %326, %327 ]
  %923 = getelementptr inbounds %struct.LIST, ptr %922, i64 0, i32 1
  %924 = load ptr, ptr %923, align 8, !tbaa !5
  %925 = getelementptr inbounds %struct.LIST, ptr %924, i64 0, i32 1
  %926 = load ptr, ptr %925, align 8, !tbaa !5
  %927 = icmp eq ptr %926, %0
  br i1 %927, label %928, label %323

928:                                              ; preds = %921, %320, %316
  %929 = load ptr, ptr %16, align 8, !tbaa !8
  %930 = getelementptr inbounds %struct.LIST, ptr %929, i64 0, i32 1
  %931 = load ptr, ptr %930, align 8, !tbaa !5
  %932 = icmp eq ptr %931, %929
  br i1 %932, label %1085, label %933

933:                                              ; preds = %928
  %934 = getelementptr inbounds %struct.CONSTRAINT, ptr %21, i64 0, i32 1
  %935 = getelementptr inbounds %struct.CONSTRAINT, ptr %21, i64 0, i32 2
  br label %936

936:                                              ; preds = %933, %1080
  %937 = phi ptr [ %929, %933 ], [ %1081, %1080 ]
  %938 = phi ptr [ %931, %933 ], [ %1083, %1080 ]
  br label %939

939:                                              ; preds = %936, %939
  %940 = phi ptr [ %942, %939 ], [ %938, %936 ]
  %941 = getelementptr inbounds [2 x %struct.LIST], ptr %940, i64 0, i64 1
  %942 = load ptr, ptr %941, align 8, !tbaa !5
  %943 = getelementptr inbounds %struct.word_type, ptr %942, i64 0, i32 1
  %944 = load i8, ptr %943, align 8, !tbaa !5
  switch i8 %944, label %1080 [
    i8 0, label %939
    i8 -120, label %945
  ]

945:                                              ; preds = %939
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %21) #4
  %946 = getelementptr inbounds %struct.closure_type, ptr %942, i64 0, i32 5
  %947 = load ptr, ptr %946, align 8, !tbaa !5
  %948 = getelementptr inbounds %struct.word_type, ptr %947, i64 0, i32 1
  %949 = load i8, ptr %948, align 8, !tbaa !5
  %950 = icmp eq i8 %949, 34
  br i1 %950, label %954, label %951

951:                                              ; preds = %945
  %952 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %953 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %952, ptr noundef nonnull @.str.13) #4
  br label %954

954:                                              ; preds = %951, %945
  %955 = getelementptr inbounds %struct.closure_type, ptr %947, i64 0, i32 4
  %956 = load i32, ptr %955, align 8, !tbaa !5
  %957 = icmp eq i32 %956, 0
  br i1 %957, label %961, label %958

958:                                              ; preds = %954
  %959 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %960 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %959, ptr noundef nonnull @.str.14) #4
  br label %961

961:                                              ; preds = %958, %954
  %962 = getelementptr inbounds %struct.LIST, ptr %947, i64 0, i32 1
  %963 = load ptr, ptr %962, align 8, !tbaa !5
  %964 = icmp eq ptr %963, %947
  br i1 %964, label %965, label %969

965:                                              ; preds = %961
  %966 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %967 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %966, ptr noundef nonnull @.str.15) #4
  %968 = load ptr, ptr %962, align 8, !tbaa !5
  br label %969

969:                                              ; preds = %965, %961
  %970 = phi ptr [ %963, %961 ], [ %968, %965 ]
  br label %971

971:                                              ; preds = %969, %971
  %972 = phi ptr [ %974, %971 ], [ %970, %969 ]
  %973 = getelementptr inbounds [2 x %struct.LIST], ptr %972, i64 0, i64 1
  %974 = load ptr, ptr %973, align 8, !tbaa !5
  %975 = getelementptr inbounds %struct.word_type, ptr %974, i64 0, i32 1
  %976 = load i8, ptr %975, align 8, !tbaa !5
  %977 = icmp eq i8 %976, 0
  br i1 %977, label %971, label %978

978:                                              ; preds = %971
  %979 = getelementptr inbounds %struct.word_type, ptr %974, i64 0, i32 1
  %980 = load i16, ptr %34, align 2
  %981 = and i16 %980, 256
  %982 = icmp eq i16 %981, 0
  br i1 %982, label %983, label %985

983:                                              ; preds = %978
  %984 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 21, i32 noundef 2, ptr noundef nonnull @.str.16, i32 noundef 1, ptr noundef nonnull %948, ptr noundef nonnull @.str.17) #4
  br label %985

985:                                              ; preds = %983, %978
  call void @Constrained(ptr noundef %947, ptr noundef nonnull %21, i32 noundef 0, ptr noundef nonnull %15) #4
  %986 = load i32, ptr %21, align 4, !tbaa !12
  %987 = icmp ne i32 %986, 8388607
  %988 = load i32, ptr %934, align 4
  %989 = icmp ne i32 %988, 8388607
  %990 = select i1 %987, i1 true, i1 %989
  %991 = load i32, ptr %935, align 4
  %992 = icmp ne i32 %991, 8388607
  %993 = select i1 %990, i1 true, i1 %992
  br i1 %993, label %997, label %994

994:                                              ; preds = %985
  %995 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 21, i32 noundef 3, ptr noundef nonnull @.str.18, i32 noundef 2, ptr noundef nonnull %948) #4
  %996 = getelementptr inbounds %struct.closure_type, ptr %947, i64 0, i32 4, i32 0, i32 2
  store i32 128, ptr %996, align 8, !tbaa !5
  store i32 128, ptr %955, align 8, !tbaa !5
  br label %1052

997:                                              ; preds = %985
  %998 = getelementptr inbounds %struct.word_type, ptr %974, i64 0, i32 3
  %999 = load i32, ptr %998, align 8, !tbaa !5
  %1000 = getelementptr inbounds %struct.word_type, ptr %974, i64 0, i32 3, i32 1
  %1001 = load i32, ptr %1000, align 8, !tbaa !5
  %1002 = add nsw i32 %1001, %999
  %1003 = icmp eq i32 %1002, 0
  br i1 %1003, label %1004, label %1007

1004:                                             ; preds = %997
  %1005 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 21, i32 noundef 4, ptr noundef nonnull @.str.19, i32 noundef 2, ptr noundef nonnull %948) #4
  %1006 = getelementptr inbounds %struct.closure_type, ptr %947, i64 0, i32 4, i32 0, i32 2
  store i32 128, ptr %1006, align 8, !tbaa !5
  store i32 128, ptr %955, align 8, !tbaa !5
  br label %1052

1007:                                             ; preds = %997
  %1008 = sitofp i32 %988 to float
  %1009 = sitofp i32 %1002 to float
  %1010 = fdiv float %1008, %1009
  %1011 = fcmp ogt float %1010, 1.000000e+02
  br i1 %1011, label %1012, label %1015

1012:                                             ; preds = %1007
  %1013 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 21, i32 noundef 5, ptr noundef nonnull @.str.20, i32 noundef 2, ptr noundef nonnull %948) #4
  %1014 = getelementptr inbounds %struct.closure_type, ptr %947, i64 0, i32 4, i32 0, i32 2
  store i32 128, ptr %1014, align 8, !tbaa !5
  store i32 128, ptr %955, align 8, !tbaa !5
  br label %1052

1015:                                             ; preds = %1007
  %1016 = fpext float %1010 to double
  %1017 = fcmp olt double %1016, 1.000000e-02
  br i1 %1017, label %1018, label %1048

1018:                                             ; preds = %1015
  %1019 = icmp eq i32 %988, 0
  br i1 %1019, label %1020, label %1022

1020:                                             ; preds = %1018
  %1021 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 21, i32 noundef 6, ptr noundef nonnull @.str.21, i32 noundef 2, ptr noundef nonnull %948) #4
  br label %1024

1022:                                             ; preds = %1018
  %1023 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 21, i32 noundef 7, ptr noundef nonnull @.str.22, i32 noundef 2, ptr noundef nonnull %948) #4
  br label %1024

1024:                                             ; preds = %1022, %1020
  %1025 = getelementptr inbounds %struct.closure_type, ptr %947, i64 0, i32 4, i32 0, i32 2
  store i32 128, ptr %1025, align 8, !tbaa !5
  store i32 128, ptr %955, align 8, !tbaa !5
  %1026 = call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.23, ptr noundef nonnull %979) #4
  %1027 = getelementptr inbounds %struct.word_type, ptr %1026, i64 0, i32 3
  %1028 = getelementptr inbounds %struct.word_type, ptr %1026, i64 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1027, i8 0, i64 16, i1 false)
  %1029 = load i32, ptr %1028, align 8
  %1030 = and i32 %1029, 1610612736
  store i32 %1030, ptr %1028, align 8
  %1031 = getelementptr inbounds [2 x %struct.LIST], ptr %974, i64 0, i64 1, i32 1
  %1032 = load ptr, ptr %1031, align 8, !tbaa !5
  %1033 = icmp eq ptr %1032, %974
  br i1 %1033, label %1044, label %1034

1034:                                             ; preds = %1024
  %1035 = getelementptr inbounds [2 x %struct.LIST], ptr %974, i64 0, i64 1
  %1036 = load ptr, ptr %1035, align 8, !tbaa !5
  %1037 = getelementptr inbounds [2 x %struct.LIST], ptr %1032, i64 0, i64 1
  store ptr %1036, ptr %1037, align 8, !tbaa !5
  %1038 = getelementptr inbounds [2 x %struct.LIST], ptr %1036, i64 0, i64 1, i32 1
  store ptr %1032, ptr %1038, align 8, !tbaa !5
  store ptr %974, ptr %1031, align 8, !tbaa !5
  store ptr %974, ptr %1035, align 8, !tbaa !5
  %1039 = load ptr, ptr %1037, align 8, !tbaa !5
  store ptr %1039, ptr @zz_tmp, align 8, !tbaa !8
  %1040 = getelementptr inbounds [2 x %struct.LIST], ptr %1026, i64 0, i64 1
  %1041 = load ptr, ptr %1040, align 8, !tbaa !5
  store ptr %1041, ptr %1037, align 8, !tbaa !5
  %1042 = getelementptr inbounds [2 x %struct.LIST], ptr %1041, i64 0, i64 1, i32 1
  store ptr %1032, ptr %1042, align 8, !tbaa !5
  store ptr %1039, ptr %1040, align 8, !tbaa !5
  %1043 = getelementptr inbounds [2 x %struct.LIST], ptr %1039, i64 0, i64 1, i32 1
  store ptr %1026, ptr %1043, align 8, !tbaa !5
  br label %1044

1044:                                             ; preds = %1024, %1034
  %1045 = phi ptr [ %1032, %1034 ], [ null, %1024 ]
  store ptr %1045, ptr @xx_tmp, align 8
  store ptr %1026, ptr @zz_res, align 8
  store ptr %1045, ptr @zz_hold, align 8
  %1046 = call i32 @DisposeObject(ptr noundef nonnull %974) #4
  %1047 = load i32, ptr %1025, align 8, !tbaa !5
  br label %1052

1048:                                             ; preds = %1015
  %1049 = shl nsw i32 %988, 7
  %1050 = sdiv i32 %1049, %1002
  %1051 = getelementptr inbounds %struct.closure_type, ptr %947, i64 0, i32 4, i32 0, i32 2
  store i32 %1050, ptr %1051, align 8, !tbaa !5
  store i32 %1050, ptr %955, align 8, !tbaa !5
  br label %1052

1052:                                             ; preds = %1004, %1044, %1048, %1012, %994
  %1053 = phi i32 [ 128, %1004 ], [ 128, %1012 ], [ %1047, %1044 ], [ %1050, %1048 ], [ 128, %994 ]
  %1054 = phi ptr [ %974, %1004 ], [ %974, %1012 ], [ %1026, %1044 ], [ %974, %1048 ], [ %974, %994 ]
  %1055 = getelementptr inbounds %struct.word_type, ptr %1054, i64 0, i32 3
  %1056 = load i32, ptr %1055, align 8, !tbaa !5
  %1057 = mul nsw i32 %1053, %1056
  %1058 = sdiv i32 %1057, 128
  %1059 = getelementptr inbounds %struct.word_type, ptr %1054, i64 0, i32 3, i32 1
  %1060 = load i32, ptr %1059, align 8, !tbaa !5
  %1061 = mul nsw i32 %1060, %1053
  %1062 = sdiv i32 %1061, 128
  call void @AdjustSize(ptr noundef nonnull %947, i32 noundef %1058, i32 noundef %1062, i32 noundef 0) #4
  %1063 = getelementptr inbounds i8, ptr %947, i64 42
  %1064 = load i16, ptr %1063, align 2
  %1065 = and i16 %1064, 1
  %1066 = icmp eq i16 %1065, 0
  br i1 %1066, label %1078, label %1067

1067:                                             ; preds = %1052
  %1068 = getelementptr inbounds %struct.closure_type, ptr %947, i64 0, i32 4, i32 0, i32 2
  %1069 = getelementptr inbounds i8, ptr %1054, i64 52
  %1070 = load i32, ptr %1069, align 4, !tbaa !5
  %1071 = load i32, ptr %1068, align 8, !tbaa !5
  %1072 = mul nsw i32 %1071, %1070
  %1073 = sdiv i32 %1072, 128
  %1074 = getelementptr inbounds %struct.word_type, ptr %1054, i64 0, i32 3, i32 1, i64 4
  %1075 = load i32, ptr %1074, align 4, !tbaa !5
  %1076 = mul nsw i32 %1075, %1071
  %1077 = sdiv i32 %1076, 128
  call void @AdjustSize(ptr noundef nonnull %947, i32 noundef %1073, i32 noundef %1077, i32 noundef 1) #4
  br label %1078

1078:                                             ; preds = %1067, %1052
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %21) #4
  %1079 = load ptr, ptr %16, align 8, !tbaa !8
  br label %1080

1080:                                             ; preds = %939, %1078
  %1081 = phi ptr [ %1079, %1078 ], [ %937, %939 ]
  %1082 = getelementptr inbounds %struct.LIST, ptr %938, i64 0, i32 1
  %1083 = load ptr, ptr %1082, align 8, !tbaa !5
  %1084 = icmp eq ptr %1083, %1081
  br i1 %1084, label %1085, label %936

1085:                                             ; preds = %1080, %928
  %1086 = phi ptr [ %929, %928 ], [ %1081, %1080 ]
  %1087 = call i32 @DisposeObject(ptr noundef %1086) #4
  store ptr null, ptr %9, align 8, !tbaa !8
  store ptr null, ptr %11, align 8, !tbaa !8
  store ptr null, ptr %10, align 8, !tbaa !8
  %1088 = load ptr, ptr %42, align 8, !tbaa !5
  %1089 = icmp eq ptr %1088, %0
  br i1 %1089, label %1544, label %1090

1090:                                             ; preds = %1085
  %1091 = getelementptr inbounds %struct.CONSTRAINT, ptr %22, i64 0, i32 1
  %1092 = getelementptr inbounds %struct.CONSTRAINT, ptr %22, i64 0, i32 2
  %1093 = icmp ne i32 %5, 0
  %1094 = trunc i32 %4 to i16
  %1095 = and i16 %1094, 1
  br label %1096

1096:                                             ; preds = %1090, %1539
  %1097 = phi ptr [ %1088, %1090 ], [ %1542, %1539 ]
  %1098 = phi i32 [ 0, %1090 ], [ %1540, %1539 ]
  br label %1099

1099:                                             ; preds = %1096, %1099
  %1100 = phi ptr [ %1102, %1099 ], [ %1097, %1096 ]
  %1101 = getelementptr inbounds [2 x %struct.LIST], ptr %1100, i64 0, i64 1
  %1102 = load ptr, ptr %1101, align 8, !tbaa !5
  %1103 = getelementptr inbounds %struct.word_type, ptr %1102, i64 0, i32 1
  %1104 = load i8, ptr %1103, align 8, !tbaa !5
  switch i8 %1104, label %1105 [
    i8 0, label %1099
    i8 1, label %1539
  ]

1105:                                             ; preds = %1099
  %1106 = add i8 %1104, -119
  %1107 = icmp ult i8 %1106, 20
  br i1 %1107, label %1539, label %1108

1108:                                             ; preds = %1105
  %1109 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 17), align 1, !tbaa !5
  %1110 = zext i8 %1109 to i32
  store i32 %1110, ptr @zz_size, align 4, !tbaa !10
  %1111 = zext i8 %1109 to i64
  %1112 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1111
  %1113 = load ptr, ptr %1112, align 8, !tbaa !8
  %1114 = icmp eq ptr %1113, null
  br i1 %1114, label %1115, label %1118

1115:                                             ; preds = %1108
  %1116 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1117 = call ptr @GetMemory(i32 noundef %1110, ptr noundef %1116) #4
  store ptr %1117, ptr @zz_hold, align 8, !tbaa !8
  br label %1120

1118:                                             ; preds = %1108
  store ptr %1113, ptr @zz_hold, align 8, !tbaa !8
  %1119 = load ptr, ptr %1113, align 8, !tbaa !5
  store ptr %1119, ptr %1112, align 8, !tbaa !8
  br label %1120

1120:                                             ; preds = %1115, %1118
  %1121 = phi ptr [ %1117, %1115 ], [ %1113, %1118 ]
  %1122 = getelementptr inbounds %struct.word_type, ptr %1121, i64 0, i32 1
  store i8 17, ptr %1122, align 8, !tbaa !5
  %1123 = getelementptr inbounds [2 x %struct.LIST], ptr %1121, i64 0, i64 1, i32 1
  store ptr %1121, ptr %1123, align 8, !tbaa !5
  %1124 = getelementptr inbounds [2 x %struct.LIST], ptr %1121, i64 0, i64 1
  store ptr %1121, ptr %1124, align 8, !tbaa !5
  %1125 = getelementptr inbounds %struct.LIST, ptr %1121, i64 0, i32 1
  store ptr %1121, ptr %1125, align 8, !tbaa !5
  store ptr %1121, ptr %1121, align 8, !tbaa !5
  store ptr %1121, ptr %16, align 8, !tbaa !8
  %1126 = call ptr @MinSize(ptr noundef nonnull %1102, i32 noundef 1, ptr noundef nonnull %16) #4
  %1127 = load ptr, ptr %16, align 8, !tbaa !8
  %1128 = getelementptr inbounds %struct.LIST, ptr %1127, i64 0, i32 1
  %1129 = load ptr, ptr %1128, align 8, !tbaa !5
  %1130 = icmp eq ptr %1129, %1127
  br i1 %1130, label %1506, label %1131

1131:                                             ; preds = %1120, %1468
  %1132 = phi ptr [ %1471, %1468 ], [ %1129, %1120 ]
  %1133 = phi i32 [ %1469, %1468 ], [ %1098, %1120 ]
  br label %1134

1134:                                             ; preds = %1131, %1134
  %1135 = phi ptr [ %1137, %1134 ], [ %1132, %1131 ]
  %1136 = getelementptr inbounds [2 x %struct.LIST], ptr %1135, i64 0, i64 1
  %1137 = load ptr, ptr %1136, align 8, !tbaa !5
  %1138 = getelementptr inbounds %struct.word_type, ptr %1137, i64 0, i32 1
  %1139 = load i8, ptr %1138, align 8, !tbaa !5
  %1140 = icmp eq i8 %1139, 0
  br i1 %1140, label %1134, label %1141

1141:                                             ; preds = %1134
  %1142 = getelementptr inbounds i8, ptr %1137, i64 42
  %1143 = load i16, ptr %1142, align 2
  %1144 = and i16 %1143, -33
  store i16 %1144, ptr %1142, align 2
  switch i8 %1139, label %1463 [
    i8 121, label %1145
    i8 123, label %1182
    i8 120, label %1244
    i8 -120, label %1468
    i8 -118, label %1468
    i8 -123, label %1468
    i8 -127, label %1468
    i8 -126, label %1468
    i8 -124, label %1468
    i8 -122, label %1468
    i8 127, label %1468
    i8 -128, label %1468
    i8 -125, label %1468
    i8 -121, label %1468
    i8 -119, label %1308
  ]

1145:                                             ; preds = %1141
  %1146 = getelementptr inbounds %struct.closure_type, ptr %1137, i64 0, i32 5
  %1147 = load ptr, ptr %1146, align 8, !tbaa !5
  %1148 = getelementptr inbounds %struct.closure_type, ptr %1147, i64 0, i32 5
  %1149 = load ptr, ptr %1148, align 8, !tbaa !5
  %1150 = getelementptr inbounds i8, ptr %1149, i64 41
  %1151 = load i24, ptr %1150, align 1
  %1152 = and i24 %1151, 2048
  %1153 = icmp ne i24 %1152, 0
  %1154 = and i1 %1093, %1153
  %1155 = select i1 %1154, i16 64, i16 0
  %1156 = and i16 %1143, -98
  %1157 = or disjoint i16 %1156, %1095
  %1158 = or disjoint i16 %1157, %1155
  store i16 %1158, ptr %1142, align 2
  %1159 = load ptr, ptr %1148, align 8, !tbaa !5
  %1160 = load ptr, ptr @GalleySym, align 8, !tbaa !8
  %1161 = icmp eq ptr %1159, %1160
  %1162 = load ptr, ptr @ForceGalleySym, align 8
  %1163 = icmp eq ptr %1159, %1162
  %1164 = select i1 %1161, i1 true, i1 %1163
  br i1 %1164, label %1165, label %1171

1165:                                             ; preds = %1145
  store ptr %1137, ptr %9, align 8, !tbaa !8
  %1166 = load ptr, ptr %1146, align 8, !tbaa !5
  %1167 = getelementptr inbounds %struct.closure_type, ptr %1166, i64 0, i32 5
  %1168 = load ptr, ptr %1167, align 8, !tbaa !5
  %1169 = load ptr, ptr @GalleySym, align 8, !tbaa !8
  %1170 = load ptr, ptr @ForceGalleySym, align 8
  br label %1171

1171:                                             ; preds = %1145, %1165
  %1172 = phi ptr [ %1162, %1145 ], [ %1170, %1165 ]
  %1173 = phi ptr [ %1160, %1145 ], [ %1169, %1165 ]
  %1174 = phi ptr [ %1159, %1145 ], [ %1168, %1165 ]
  %1175 = icmp eq ptr %1174, %1173
  %1176 = icmp eq ptr %1174, %1172
  %1177 = select i1 %1175, i1 true, i1 %1176
  %1178 = load ptr, ptr @InputSym, align 8
  %1179 = icmp eq ptr %1174, %1178
  %1180 = select i1 %1177, i1 true, i1 %1179
  %1181 = select i1 %1180, i32 1, i32 %1133
  br label %1468

1182:                                             ; preds = %1141
  %1183 = load ptr, ptr %10, align 8, !tbaa !8
  %1184 = icmp eq ptr %1183, null
  br i1 %1184, label %1185, label %1203

1185:                                             ; preds = %1182
  %1186 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 17), align 1, !tbaa !5
  %1187 = zext i8 %1186 to i32
  store i32 %1187, ptr @zz_size, align 4, !tbaa !10
  %1188 = zext i8 %1186 to i64
  %1189 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1188
  %1190 = load ptr, ptr %1189, align 8, !tbaa !8
  %1191 = icmp eq ptr %1190, null
  br i1 %1191, label %1192, label %1195

1192:                                             ; preds = %1185
  %1193 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1194 = call ptr @GetMemory(i32 noundef %1187, ptr noundef %1193) #4
  store ptr %1194, ptr @zz_hold, align 8, !tbaa !8
  br label %1197

1195:                                             ; preds = %1185
  store ptr %1190, ptr @zz_hold, align 8, !tbaa !8
  %1196 = load ptr, ptr %1190, align 8, !tbaa !5
  store ptr %1196, ptr %1189, align 8, !tbaa !8
  br label %1197

1197:                                             ; preds = %1192, %1195
  %1198 = phi ptr [ %1194, %1192 ], [ %1190, %1195 ]
  %1199 = getelementptr inbounds %struct.word_type, ptr %1198, i64 0, i32 1
  store i8 17, ptr %1199, align 8, !tbaa !5
  %1200 = getelementptr inbounds [2 x %struct.LIST], ptr %1198, i64 0, i64 1, i32 1
  store ptr %1198, ptr %1200, align 8, !tbaa !5
  %1201 = getelementptr inbounds [2 x %struct.LIST], ptr %1198, i64 0, i64 1
  store ptr %1198, ptr %1201, align 8, !tbaa !5
  %1202 = getelementptr inbounds %struct.LIST, ptr %1198, i64 0, i32 1
  store ptr %1198, ptr %1202, align 8, !tbaa !5
  store ptr %1198, ptr %1198, align 8, !tbaa !5
  store ptr %1198, ptr %10, align 8, !tbaa !8
  br label %1203

1203:                                             ; preds = %1197, %1182
  %1204 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %1205 = zext i8 %1204 to i32
  store i32 %1205, ptr @zz_size, align 4, !tbaa !10
  %1206 = zext i8 %1204 to i64
  %1207 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1206
  %1208 = load ptr, ptr %1207, align 8, !tbaa !8
  %1209 = icmp eq ptr %1208, null
  br i1 %1209, label %1210, label %1213

1210:                                             ; preds = %1203
  %1211 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1212 = call ptr @GetMemory(i32 noundef %1205, ptr noundef %1211) #4
  store ptr %1212, ptr @zz_hold, align 8, !tbaa !8
  br label %1215

1213:                                             ; preds = %1203
  store ptr %1208, ptr @zz_hold, align 8, !tbaa !8
  %1214 = load ptr, ptr %1208, align 8, !tbaa !5
  store ptr %1214, ptr %1207, align 8, !tbaa !8
  br label %1215

1215:                                             ; preds = %1210, %1213
  %1216 = phi ptr [ %1212, %1210 ], [ %1208, %1213 ]
  %1217 = getelementptr inbounds %struct.word_type, ptr %1216, i64 0, i32 1
  store i8 0, ptr %1217, align 8, !tbaa !5
  %1218 = getelementptr inbounds [2 x %struct.LIST], ptr %1216, i64 0, i64 1, i32 1
  store ptr %1216, ptr %1218, align 8, !tbaa !5
  %1219 = getelementptr inbounds [2 x %struct.LIST], ptr %1216, i64 0, i64 1
  store ptr %1216, ptr %1219, align 8, !tbaa !5
  %1220 = getelementptr inbounds %struct.LIST, ptr %1216, i64 0, i32 1
  store ptr %1216, ptr %1220, align 8, !tbaa !5
  store ptr %1216, ptr %1216, align 8, !tbaa !5
  store ptr %1216, ptr @xx_link, align 8, !tbaa !8
  store ptr %1216, ptr @zz_res, align 8, !tbaa !8
  %1221 = load ptr, ptr %10, align 8, !tbaa !8
  store ptr %1221, ptr @zz_hold, align 8, !tbaa !8
  %1222 = icmp eq ptr %1221, null
  br i1 %1222, label %1223, label %1224

1223:                                             ; preds = %1215
  store ptr %1216, ptr @zz_res, align 8, !tbaa !8
  store ptr %1137, ptr @zz_hold, align 8, !tbaa !8
  br label %1236

1224:                                             ; preds = %1215
  %1225 = load ptr, ptr %1221, align 8, !tbaa !5
  store ptr %1225, ptr @zz_tmp, align 8, !tbaa !8
  %1226 = load ptr, ptr %1216, align 8, !tbaa !5
  store ptr %1226, ptr %1221, align 8, !tbaa !5
  %1227 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %1228 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1229 = load ptr, ptr %1228, align 8, !tbaa !5
  %1230 = getelementptr inbounds %struct.LIST, ptr %1229, i64 0, i32 1
  store ptr %1227, ptr %1230, align 8, !tbaa !5
  %1231 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %1231, ptr %1228, align 8, !tbaa !5
  %1232 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1233 = getelementptr inbounds %struct.LIST, ptr %1231, i64 0, i32 1
  store ptr %1232, ptr %1233, align 8, !tbaa !5
  %1234 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %1234, ptr @zz_res, align 8, !tbaa !8
  store ptr %1137, ptr @zz_hold, align 8, !tbaa !8
  %1235 = icmp eq ptr %1234, null
  br i1 %1235, label %1468, label %1236

1236:                                             ; preds = %1223, %1224
  %1237 = phi ptr [ %1216, %1223 ], [ %1234, %1224 ]
  %1238 = getelementptr inbounds [2 x %struct.LIST], ptr %1137, i64 0, i64 1
  %1239 = load ptr, ptr %1238, align 8, !tbaa !5
  store ptr %1239, ptr @zz_tmp, align 8, !tbaa !8
  %1240 = getelementptr inbounds [2 x %struct.LIST], ptr %1237, i64 0, i64 1
  %1241 = load ptr, ptr %1240, align 8, !tbaa !5
  store ptr %1241, ptr %1238, align 8, !tbaa !5
  %1242 = getelementptr inbounds [2 x %struct.LIST], ptr %1241, i64 0, i64 1, i32 1
  store ptr %1137, ptr %1242, align 8, !tbaa !5
  store ptr %1239, ptr %1240, align 8, !tbaa !5
  %1243 = getelementptr inbounds [2 x %struct.LIST], ptr %1239, i64 0, i64 1, i32 1
  store ptr %1237, ptr %1243, align 8, !tbaa !5
  br label %1468

1244:                                             ; preds = %1141
  %1245 = icmp eq i32 %1133, 0
  br i1 %1245, label %1246, label %1468

1246:                                             ; preds = %1244
  %1247 = load ptr, ptr %11, align 8, !tbaa !8
  %1248 = icmp eq ptr %1247, null
  br i1 %1248, label %1249, label %1267

1249:                                             ; preds = %1246
  %1250 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 17), align 1, !tbaa !5
  %1251 = zext i8 %1250 to i32
  store i32 %1251, ptr @zz_size, align 4, !tbaa !10
  %1252 = zext i8 %1250 to i64
  %1253 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1252
  %1254 = load ptr, ptr %1253, align 8, !tbaa !8
  %1255 = icmp eq ptr %1254, null
  br i1 %1255, label %1256, label %1259

1256:                                             ; preds = %1249
  %1257 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1258 = call ptr @GetMemory(i32 noundef %1251, ptr noundef %1257) #4
  store ptr %1258, ptr @zz_hold, align 8, !tbaa !8
  br label %1261

1259:                                             ; preds = %1249
  store ptr %1254, ptr @zz_hold, align 8, !tbaa !8
  %1260 = load ptr, ptr %1254, align 8, !tbaa !5
  store ptr %1260, ptr %1253, align 8, !tbaa !8
  br label %1261

1261:                                             ; preds = %1256, %1259
  %1262 = phi ptr [ %1258, %1256 ], [ %1254, %1259 ]
  %1263 = getelementptr inbounds %struct.word_type, ptr %1262, i64 0, i32 1
  store i8 17, ptr %1263, align 8, !tbaa !5
  %1264 = getelementptr inbounds [2 x %struct.LIST], ptr %1262, i64 0, i64 1, i32 1
  store ptr %1262, ptr %1264, align 8, !tbaa !5
  %1265 = getelementptr inbounds [2 x %struct.LIST], ptr %1262, i64 0, i64 1
  store ptr %1262, ptr %1265, align 8, !tbaa !5
  %1266 = getelementptr inbounds %struct.LIST, ptr %1262, i64 0, i32 1
  store ptr %1262, ptr %1266, align 8, !tbaa !5
  store ptr %1262, ptr %1262, align 8, !tbaa !5
  store ptr %1262, ptr %11, align 8, !tbaa !8
  br label %1267

1267:                                             ; preds = %1261, %1246
  %1268 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %1269 = zext i8 %1268 to i32
  store i32 %1269, ptr @zz_size, align 4, !tbaa !10
  %1270 = zext i8 %1268 to i64
  %1271 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1270
  %1272 = load ptr, ptr %1271, align 8, !tbaa !8
  %1273 = icmp eq ptr %1272, null
  br i1 %1273, label %1274, label %1277

1274:                                             ; preds = %1267
  %1275 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1276 = call ptr @GetMemory(i32 noundef %1269, ptr noundef %1275) #4
  store ptr %1276, ptr @zz_hold, align 8, !tbaa !8
  br label %1279

1277:                                             ; preds = %1267
  store ptr %1272, ptr @zz_hold, align 8, !tbaa !8
  %1278 = load ptr, ptr %1272, align 8, !tbaa !5
  store ptr %1278, ptr %1271, align 8, !tbaa !8
  br label %1279

1279:                                             ; preds = %1274, %1277
  %1280 = phi ptr [ %1276, %1274 ], [ %1272, %1277 ]
  %1281 = getelementptr inbounds %struct.word_type, ptr %1280, i64 0, i32 1
  store i8 0, ptr %1281, align 8, !tbaa !5
  %1282 = getelementptr inbounds [2 x %struct.LIST], ptr %1280, i64 0, i64 1, i32 1
  store ptr %1280, ptr %1282, align 8, !tbaa !5
  %1283 = getelementptr inbounds [2 x %struct.LIST], ptr %1280, i64 0, i64 1
  store ptr %1280, ptr %1283, align 8, !tbaa !5
  %1284 = getelementptr inbounds %struct.LIST, ptr %1280, i64 0, i32 1
  store ptr %1280, ptr %1284, align 8, !tbaa !5
  store ptr %1280, ptr %1280, align 8, !tbaa !5
  store ptr %1280, ptr @xx_link, align 8, !tbaa !8
  store ptr %1280, ptr @zz_res, align 8, !tbaa !8
  %1285 = load ptr, ptr %11, align 8, !tbaa !8
  store ptr %1285, ptr @zz_hold, align 8, !tbaa !8
  %1286 = icmp eq ptr %1285, null
  br i1 %1286, label %1287, label %1288

1287:                                             ; preds = %1279
  store ptr %1280, ptr @zz_res, align 8, !tbaa !8
  store ptr %1137, ptr @zz_hold, align 8, !tbaa !8
  br label %1300

1288:                                             ; preds = %1279
  %1289 = load ptr, ptr %1285, align 8, !tbaa !5
  store ptr %1289, ptr @zz_tmp, align 8, !tbaa !8
  %1290 = load ptr, ptr %1280, align 8, !tbaa !5
  store ptr %1290, ptr %1285, align 8, !tbaa !5
  %1291 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %1292 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1293 = load ptr, ptr %1292, align 8, !tbaa !5
  %1294 = getelementptr inbounds %struct.LIST, ptr %1293, i64 0, i32 1
  store ptr %1291, ptr %1294, align 8, !tbaa !5
  %1295 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %1295, ptr %1292, align 8, !tbaa !5
  %1296 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1297 = getelementptr inbounds %struct.LIST, ptr %1295, i64 0, i32 1
  store ptr %1296, ptr %1297, align 8, !tbaa !5
  %1298 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %1298, ptr @zz_res, align 8, !tbaa !8
  store ptr %1137, ptr @zz_hold, align 8, !tbaa !8
  %1299 = icmp eq ptr %1298, null
  br i1 %1299, label %1468, label %1300

1300:                                             ; preds = %1287, %1288
  %1301 = phi ptr [ %1280, %1287 ], [ %1298, %1288 ]
  %1302 = getelementptr inbounds [2 x %struct.LIST], ptr %1137, i64 0, i64 1
  %1303 = load ptr, ptr %1302, align 8, !tbaa !5
  store ptr %1303, ptr @zz_tmp, align 8, !tbaa !8
  %1304 = getelementptr inbounds [2 x %struct.LIST], ptr %1301, i64 0, i64 1
  %1305 = load ptr, ptr %1304, align 8, !tbaa !5
  store ptr %1305, ptr %1302, align 8, !tbaa !5
  %1306 = getelementptr inbounds [2 x %struct.LIST], ptr %1305, i64 0, i64 1, i32 1
  store ptr %1137, ptr %1306, align 8, !tbaa !5
  store ptr %1303, ptr %1304, align 8, !tbaa !5
  %1307 = getelementptr inbounds [2 x %struct.LIST], ptr %1303, i64 0, i64 1, i32 1
  store ptr %1301, ptr %1307, align 8, !tbaa !5
  br label %1468

1308:                                             ; preds = %1141
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %22) #4
  %1309 = getelementptr inbounds %struct.closure_type, ptr %1137, i64 0, i32 5
  %1310 = load ptr, ptr %1309, align 8, !tbaa !5
  %1311 = getelementptr inbounds %struct.word_type, ptr %1310, i64 0, i32 1
  %1312 = load i8, ptr %1311, align 8, !tbaa !5
  %1313 = freeze i8 %1312
  %1314 = icmp ne i8 %1313, 32
  %1315 = zext i1 %1314 to i32
  %1316 = select i1 %1314, i32 17, i32 19
  %1317 = select i1 %1314, i32 31, i32 30
  %1318 = getelementptr inbounds [2 x %struct.LIST], ptr %1310, i64 0, i64 1, i32 1
  %1319 = getelementptr inbounds [2 x %struct.LIST], ptr %1310, i64 0, i64 1
  %1320 = select i1 %1314, ptr %1319, ptr %1318
  %1321 = load ptr, ptr %1320, align 8, !tbaa !5
  br label %1322

1322:                                             ; preds = %1322, %1308
  %1323 = phi ptr [ %1321, %1308 ], [ %1324, %1322 ]
  %1324 = load ptr, ptr %1323, align 8, !tbaa !5
  %1325 = getelementptr inbounds %struct.word_type, ptr %1324, i64 0, i32 1
  %1326 = load i8, ptr %1325, align 8, !tbaa !5
  %1327 = icmp eq i8 %1326, 0
  br i1 %1327, label %1322, label %1328

1328:                                             ; preds = %1322
  %1329 = select i1 %1314, i32 15, i32 16
  %1330 = select i1 %1314, i32 18, i32 19
  %1331 = select i1 %1314, i8 25, i8 24
  %1332 = icmp eq i8 %1326, 9
  %1333 = zext i8 %1326 to i32
  %1334 = icmp eq i32 %1329, %1333
  %1335 = or i1 %1332, %1334
  br i1 %1335, label %1336, label %1367

1336:                                             ; preds = %1328
  br i1 %1314, label %1337, label %1357

1337:                                             ; preds = %1336, %1347
  %1338 = phi ptr [ %1343, %1347 ], [ %1324, %1336 ]
  %1339 = getelementptr inbounds [2 x %struct.LIST], ptr %1338, i64 0, i64 1
  %1340 = load ptr, ptr %1339, align 8, !tbaa !5
  br label %1341

1341:                                             ; preds = %1337, %1341
  %1342 = phi ptr [ %1340, %1337 ], [ %1343, %1341 ]
  %1343 = load ptr, ptr %1342, align 8, !tbaa !5
  %1344 = getelementptr inbounds %struct.word_type, ptr %1343, i64 0, i32 1
  %1345 = load i8, ptr %1344, align 8, !tbaa !5
  %1346 = icmp eq i8 %1345, 0
  br i1 %1346, label %1341, label %1347

1347:                                             ; preds = %1341
  %1348 = icmp eq i8 %1345, 9
  %1349 = zext i8 %1345 to i32
  %1350 = icmp eq i32 %1329, %1349
  %1351 = or i1 %1348, %1350
  br i1 %1351, label %1337, label %1367

1352:                                             ; preds = %1361
  %1353 = icmp eq i8 %1365, 9
  %1354 = zext i8 %1365 to i32
  %1355 = icmp eq i32 %1329, %1354
  %1356 = or i1 %1353, %1355
  br i1 %1356, label %1357, label %1367

1357:                                             ; preds = %1336, %1352
  %1358 = phi ptr [ %1363, %1352 ], [ %1324, %1336 ]
  %1359 = getelementptr inbounds [2 x %struct.LIST], ptr %1358, i64 0, i64 1, i32 1
  %1360 = load ptr, ptr %1359, align 8, !tbaa !5
  br label %1361

1361:                                             ; preds = %1361, %1357
  %1362 = phi ptr [ %1360, %1357 ], [ %1363, %1361 ]
  %1363 = load ptr, ptr %1362, align 8, !tbaa !5
  %1364 = getelementptr inbounds %struct.word_type, ptr %1363, i64 0, i32 1
  %1365 = load i8, ptr %1364, align 8, !tbaa !5
  %1366 = icmp eq i8 %1365, 0
  br i1 %1366, label %1361, label %1352

1367:                                             ; preds = %1352, %1347, %1328
  %1368 = phi ptr [ %1324, %1328 ], [ %1343, %1347 ], [ %1363, %1352 ]
  %1369 = phi i32 [ %1333, %1328 ], [ %1349, %1347 ], [ %1354, %1352 ]
  %1370 = getelementptr inbounds %struct.LIST, ptr %1310, i64 0, i32 1
  %1371 = load ptr, ptr %1370, align 8, !tbaa !5
  br label %1372

1372:                                             ; preds = %1372, %1367
  %1373 = phi ptr [ %1371, %1367 ], [ %1375, %1372 ]
  %1374 = getelementptr inbounds [2 x %struct.LIST], ptr %1373, i64 0, i64 1
  %1375 = load ptr, ptr %1374, align 8, !tbaa !5
  %1376 = getelementptr inbounds %struct.word_type, ptr %1375, i64 0, i32 1
  %1377 = load i8, ptr %1376, align 8, !tbaa !5
  %1378 = icmp eq i8 %1377, 0
  br i1 %1378, label %1372, label %1379

1379:                                             ; preds = %1372
  %1380 = icmp eq i32 %1316, %1369
  %1381 = icmp eq i32 %1330, %1369
  %1382 = or i1 %1380, %1381
  br i1 %1382, label %1389, label %1383

1383:                                             ; preds = %1379
  %1384 = zext i8 %1313 to i32
  %1385 = call ptr @Image(i32 noundef %1384) #4
  %1386 = call ptr @Image(i32 noundef %1317) #4
  %1387 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 21, i32 noundef 8, ptr noundef nonnull @.str.24, i32 noundef 2, ptr noundef nonnull %1311, ptr noundef %1385, ptr noundef %1386) #4
  %1388 = trunc i32 %1317 to i8
  store i8 %1388, ptr %1311, align 8, !tbaa !5
  br label %1462

1389:                                             ; preds = %1379
  %1390 = getelementptr inbounds %struct.word_type, ptr %1375, i64 0, i32 3
  %1391 = zext i1 %1314 to i64
  %1392 = getelementptr inbounds [2 x i32], ptr %1390, i64 0, i64 %1391
  %1393 = load i32, ptr %1392, align 4, !tbaa !5
  %1394 = icmp eq i32 %1393, 0
  %1395 = getelementptr inbounds %struct.word_type, ptr %1375, i64 0, i32 3, i32 1
  %1396 = getelementptr inbounds [2 x i32], ptr %1395, i64 0, i64 %1391
  %1397 = load i32, ptr %1396, align 4, !tbaa !5
  %1398 = icmp eq i32 %1397, 0
  br i1 %1394, label %1399, label %1401

1399:                                             ; preds = %1389
  br i1 %1398, label %1400, label %1402

1400:                                             ; preds = %1399
  store i8 %1331, ptr %1311, align 8, !tbaa !5
  br label %1462

1401:                                             ; preds = %1389
  br i1 %1398, label %1402, label %1408

1402:                                             ; preds = %1399, %1401
  %1403 = zext i8 %1313 to i32
  %1404 = call ptr @Image(i32 noundef %1403) #4
  %1405 = call ptr @Image(i32 noundef %1317) #4
  %1406 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 21, i32 noundef 9, ptr noundef nonnull @.str.25, i32 noundef 2, ptr noundef nonnull %1311, ptr noundef %1404, ptr noundef %1405) #4
  %1407 = trunc i32 %1317 to i8
  store i8 %1407, ptr %1311, align 8, !tbaa !5
  br label %1462

1408:                                             ; preds = %1401
  %1409 = getelementptr inbounds %struct.word_type, ptr %1368, i64 0, i32 3
  %1410 = getelementptr inbounds [2 x i32], ptr %1409, i64 0, i64 %1391
  %1411 = load i32, ptr %1410, align 4, !tbaa !5
  %1412 = getelementptr inbounds %struct.word_type, ptr %1368, i64 0, i32 3, i32 1
  %1413 = getelementptr inbounds [2 x i32], ptr %1412, i64 0, i64 %1391
  %1414 = load i32, ptr %1413, align 4, !tbaa !5
  %1415 = sub i32 0, %1414
  %1416 = icmp eq i32 %1411, %1415
  br i1 %1416, label %1417, label %1423

1417:                                             ; preds = %1408
  %1418 = zext i8 %1313 to i32
  %1419 = call ptr @Image(i32 noundef %1418) #4
  %1420 = call ptr @Image(i32 noundef %1317) #4
  %1421 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 21, i32 noundef 10, ptr noundef nonnull @.str.26, i32 noundef 2, ptr noundef nonnull %1311, ptr noundef %1419, ptr noundef %1420) #4
  %1422 = trunc i32 %1317 to i8
  store i8 %1422, ptr %1311, align 8, !tbaa !5
  br label %1462

1423:                                             ; preds = %1408
  %1424 = insertelement <2 x i32> poison, i32 %1411, i64 0
  %1425 = insertelement <2 x i32> %1424, i32 %1414, i64 1
  %1426 = sitofp <2 x i32> %1425 to <2 x float>
  %1427 = insertelement <2 x i32> poison, i32 %1393, i64 0
  %1428 = insertelement <2 x i32> %1427, i32 %1397, i64 1
  %1429 = sitofp <2 x i32> %1428 to <2 x float>
  %1430 = fdiv <2 x float> %1426, %1429
  %1431 = extractelement <2 x float> %1430, i64 0
  %1432 = extractelement <2 x float> %1430, i64 1
  %1433 = fcmp olt float %1431, %1432
  %1434 = select i1 %1433, float %1432, float %1431
  %1435 = fmul float %1434, 1.280000e+02
  %1436 = fptosi float %1435 to i32
  %1437 = mul nsw i32 %1393, %1436
  %1438 = sdiv i32 %1437, 128
  %1439 = mul nsw i32 %1397, %1436
  %1440 = sdiv i32 %1439, 128
  call void @Constrained(ptr noundef %1310, ptr noundef nonnull %22, i32 noundef %1315, ptr noundef nonnull %15) #4
  %1441 = load i32, ptr %22, align 4, !tbaa !12
  %1442 = icmp sgt i32 %1438, %1441
  br i1 %1442, label %1455, label %1443

1443:                                             ; preds = %1423
  %1444 = add nsw i32 %1438, %1440
  %1445 = load i32, ptr %1091, align 4, !tbaa !14
  %1446 = icmp sgt i32 %1444, %1445
  %1447 = load i32, ptr %1092, align 4
  %1448 = icmp sgt i32 %1440, %1447
  %1449 = select i1 %1446, i1 true, i1 %1448
  br i1 %1449, label %1455, label %1450

1450:                                             ; preds = %1443
  store i8 34, ptr %1311, align 8, !tbaa !5
  %1451 = select i1 %1314, i32 128, i32 %1436
  %1452 = select i1 %1314, i32 %1436, i32 128
  %1453 = getelementptr inbounds %struct.closure_type, ptr %1310, i64 0, i32 4
  store i32 %1451, ptr %1453, align 8
  %1454 = getelementptr inbounds %struct.closure_type, ptr %1310, i64 0, i32 4, i32 0, i32 2
  store i32 %1452, ptr %1454, align 8
  call void @AdjustSize(ptr noundef nonnull %1310, i32 noundef %1438, i32 noundef %1440, i32 noundef %1315) #4
  br label %1462

1455:                                             ; preds = %1443, %1423
  %1456 = load i8, ptr %1311, align 8, !tbaa !5
  %1457 = zext i8 %1456 to i32
  %1458 = call ptr @Image(i32 noundef %1457) #4
  %1459 = call ptr @Image(i32 noundef %1317) #4
  %1460 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 21, i32 noundef 11, ptr noundef nonnull @.str.27, i32 noundef 2, ptr noundef nonnull %1311, ptr noundef %1458, ptr noundef %1459) #4
  %1461 = trunc i32 %1317 to i8
  store i8 %1461, ptr %1311, align 8, !tbaa !5
  br label %1462

1462:                                             ; preds = %1400, %1417, %1455, %1450, %1402, %1383
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %22) #4
  br label %1468

1463:                                             ; preds = %1141
  %1464 = zext i8 %1139 to i32
  %1465 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1466 = call ptr @Image(i32 noundef %1464) #4
  %1467 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 3, ptr noundef nonnull @.str.28, i32 noundef 0, ptr noundef %1465, ptr noundef nonnull @.str.29, ptr noundef %1466) #4
  br label %1468

1468:                                             ; preds = %1171, %1288, %1224, %1462, %1463, %1236, %1300, %1244, %1141, %1141, %1141, %1141, %1141, %1141, %1141, %1141, %1141, %1141, %1141
  %1469 = phi i32 [ %1133, %1463 ], [ %1133, %1462 ], [ %1133, %1141 ], [ %1133, %1141 ], [ %1133, %1141 ], [ %1133, %1141 ], [ %1133, %1141 ], [ %1133, %1141 ], [ %1133, %1141 ], [ %1133, %1141 ], [ %1133, %1141 ], [ %1133, %1141 ], [ %1133, %1141 ], [ 1, %1244 ], [ 0, %1300 ], [ %1133, %1236 ], [ %1133, %1224 ], [ 0, %1288 ], [ %1181, %1171 ]
  %1470 = getelementptr inbounds %struct.LIST, ptr %1132, i64 0, i32 1
  %1471 = load ptr, ptr %1470, align 8, !tbaa !5
  %1472 = load ptr, ptr %16, align 8, !tbaa !8
  %1473 = icmp eq ptr %1471, %1472
  br i1 %1473, label %1474, label %1131

1474:                                             ; preds = %1468
  %1475 = getelementptr inbounds %struct.LIST, ptr %1471, i64 0, i32 1
  %1476 = load ptr, ptr %1475, align 8, !tbaa !5
  %1477 = icmp eq ptr %1476, %1471
  br i1 %1477, label %1506, label %1478

1478:                                             ; preds = %1474
  %1479 = getelementptr inbounds %struct.word_type, ptr %1476, i64 0, i32 1
  %1480 = load i8, ptr %1479, align 8, !tbaa !5
  %1481 = icmp eq i8 %1480, 0
  br i1 %1481, label %1485, label %1482

1482:                                             ; preds = %1478
  %1483 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1484 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %1483, ptr noundef nonnull @.str.8) #4
  br label %1485

1485:                                             ; preds = %1482, %1478
  store ptr %1476, ptr @zz_res, align 8, !tbaa !8
  store ptr %1471, ptr @zz_hold, align 8, !tbaa !8
  %1486 = load ptr, ptr %1471, align 8, !tbaa !5
  store ptr %1486, ptr @zz_tmp, align 8, !tbaa !8
  %1487 = load ptr, ptr %1476, align 8, !tbaa !5
  store ptr %1487, ptr %1471, align 8, !tbaa !5
  %1488 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %1489 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1490 = load ptr, ptr %1489, align 8, !tbaa !5
  %1491 = getelementptr inbounds %struct.LIST, ptr %1490, i64 0, i32 1
  store ptr %1488, ptr %1491, align 8, !tbaa !5
  %1492 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %1492, ptr %1489, align 8, !tbaa !5
  %1493 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1494 = getelementptr inbounds %struct.LIST, ptr %1492, i64 0, i32 1
  store ptr %1493, ptr %1494, align 8, !tbaa !5
  store ptr %1476, ptr @zz_res, align 8, !tbaa !8
  store ptr %1097, ptr @zz_hold, align 8, !tbaa !8
  %1495 = icmp eq ptr %1097, null
  br i1 %1495, label %1506, label %1496

1496:                                             ; preds = %1485
  %1497 = load ptr, ptr %1097, align 8, !tbaa !5
  store ptr %1497, ptr @zz_tmp, align 8, !tbaa !8
  %1498 = load ptr, ptr %1476, align 8, !tbaa !5
  store ptr %1498, ptr %1097, align 8, !tbaa !5
  %1499 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %1500 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1501 = load ptr, ptr %1500, align 8, !tbaa !5
  %1502 = getelementptr inbounds %struct.LIST, ptr %1501, i64 0, i32 1
  store ptr %1499, ptr %1502, align 8, !tbaa !5
  %1503 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %1503, ptr %1500, align 8, !tbaa !5
  %1504 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1505 = getelementptr inbounds %struct.LIST, ptr %1503, i64 0, i32 1
  store ptr %1504, ptr %1505, align 8, !tbaa !5
  br label %1506

1506:                                             ; preds = %1120, %1485, %1496, %1474
  %1507 = phi i32 [ %1469, %1485 ], [ %1469, %1496 ], [ %1469, %1474 ], [ %1098, %1120 ]
  %1508 = load ptr, ptr %16, align 8, !tbaa !8
  %1509 = getelementptr inbounds %struct.LIST, ptr %1508, i64 0, i32 1
  %1510 = load ptr, ptr %1509, align 8, !tbaa !5
  %1511 = icmp eq ptr %1510, %1508
  br i1 %1511, label %1512, label %1516

1512:                                             ; preds = %1506
  %1513 = getelementptr inbounds [2 x %struct.LIST], ptr %1508, i64 0, i64 1, i32 1
  %1514 = load ptr, ptr %1513, align 8, !tbaa !5
  %1515 = icmp eq ptr %1514, %1508
  br i1 %1515, label %1520, label %1516

1516:                                             ; preds = %1512, %1506
  %1517 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1518 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %1517, ptr noundef nonnull @.str.30) #4
  %1519 = load ptr, ptr %16, align 8, !tbaa !8
  br label %1520

1520:                                             ; preds = %1516, %1512
  %1521 = phi ptr [ %1519, %1516 ], [ %1508, %1512 ]
  store ptr %1521, ptr @zz_hold, align 8, !tbaa !8
  %1522 = getelementptr inbounds %struct.word_type, ptr %1521, i64 0, i32 1
  %1523 = load i8, ptr %1522, align 8, !tbaa !5
  %1524 = add i8 %1523, -11
  %1525 = icmp ult i8 %1524, 2
  %1526 = getelementptr inbounds %struct.word_type, ptr %1521, i64 0, i32 1, i32 0, i32 1
  %1527 = zext i8 %1523 to i64
  %1528 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %1527
  %1529 = select i1 %1525, ptr %1526, ptr %1528
  %1530 = load i8, ptr %1529, align 1, !tbaa !5
  %1531 = zext i8 %1530 to i32
  store i32 %1531, ptr @zz_size, align 4, !tbaa !10
  %1532 = zext i8 %1530 to i64
  %1533 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1532
  %1534 = load ptr, ptr %1533, align 8, !tbaa !8
  store ptr %1534, ptr %1521, align 8, !tbaa !5
  %1535 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %1536 = load i32, ptr @zz_size, align 4, !tbaa !10
  %1537 = sext i32 %1536 to i64
  %1538 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1537
  store ptr %1535, ptr %1538, align 8, !tbaa !8
  br label %1539

1539:                                             ; preds = %1099, %1105, %1520
  %1540 = phi i32 [ %1507, %1520 ], [ %1098, %1105 ], [ %1098, %1099 ]
  %1541 = getelementptr inbounds %struct.LIST, ptr %1097, i64 0, i32 1
  %1542 = load ptr, ptr %1541, align 8, !tbaa !5
  %1543 = icmp eq ptr %1542, %0
  br i1 %1543, label %1544, label %1096

1544:                                             ; preds = %1539, %1085
  %1545 = load ptr, ptr %14, align 8, !tbaa !8
  %1546 = icmp eq ptr %1545, null
  br i1 %1546, label %1583, label %1547

1547:                                             ; preds = %1544
  %1548 = getelementptr inbounds %struct.LIST, ptr %1545, i64 0, i32 1
  %1549 = load ptr, ptr %1548, align 8, !tbaa !5
  %1550 = load ptr, ptr %42, align 8, !tbaa !5
  %1551 = icmp eq ptr %1549, %1545
  br i1 %1551, label %1580, label %1552

1552:                                             ; preds = %1547
  %1553 = getelementptr inbounds %struct.word_type, ptr %1549, i64 0, i32 1
  %1554 = load i8, ptr %1553, align 8, !tbaa !5
  %1555 = icmp eq i8 %1554, 0
  br i1 %1555, label %1559, label %1556

1556:                                             ; preds = %1552
  %1557 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1558 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %1557, ptr noundef nonnull @.str.8) #4
  br label %1559

1559:                                             ; preds = %1556, %1552
  store ptr %1549, ptr @zz_res, align 8, !tbaa !8
  store ptr %1545, ptr @zz_hold, align 8, !tbaa !8
  %1560 = load ptr, ptr %1545, align 8, !tbaa !5
  store ptr %1560, ptr @zz_tmp, align 8, !tbaa !8
  %1561 = load ptr, ptr %1549, align 8, !tbaa !5
  store ptr %1561, ptr %1545, align 8, !tbaa !5
  %1562 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %1563 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1564 = load ptr, ptr %1563, align 8, !tbaa !5
  %1565 = getelementptr inbounds %struct.LIST, ptr %1564, i64 0, i32 1
  store ptr %1562, ptr %1565, align 8, !tbaa !5
  %1566 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %1566, ptr %1563, align 8, !tbaa !5
  %1567 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1568 = getelementptr inbounds %struct.LIST, ptr %1566, i64 0, i32 1
  store ptr %1567, ptr %1568, align 8, !tbaa !5
  store ptr %1549, ptr @zz_res, align 8, !tbaa !8
  store ptr %1550, ptr @zz_hold, align 8, !tbaa !8
  %1569 = icmp eq ptr %1550, null
  br i1 %1569, label %1580, label %1570

1570:                                             ; preds = %1559
  %1571 = load ptr, ptr %1550, align 8, !tbaa !5
  store ptr %1571, ptr @zz_tmp, align 8, !tbaa !8
  %1572 = load ptr, ptr %1549, align 8, !tbaa !5
  store ptr %1572, ptr %1550, align 8, !tbaa !5
  %1573 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %1574 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1575 = load ptr, ptr %1574, align 8, !tbaa !5
  %1576 = getelementptr inbounds %struct.LIST, ptr %1575, i64 0, i32 1
  store ptr %1573, ptr %1576, align 8, !tbaa !5
  %1577 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %1577, ptr %1574, align 8, !tbaa !5
  %1578 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1579 = getelementptr inbounds %struct.LIST, ptr %1577, i64 0, i32 1
  store ptr %1578, ptr %1579, align 8, !tbaa !5
  br label %1580

1580:                                             ; preds = %1559, %1570, %1547
  %1581 = load ptr, ptr %14, align 8, !tbaa !8
  %1582 = call i32 @DisposeObject(ptr noundef %1581) #4
  br label %1583

1583:                                             ; preds = %1580, %1544
  %1584 = icmp eq ptr %8, null
  br i1 %1584, label %1594, label %1585

1585:                                             ; preds = %1583
  %1586 = load ptr, ptr %9, align 8, !tbaa !8
  %1587 = icmp eq ptr %1586, null
  br i1 %1587, label %1588, label %1594

1588:                                             ; preds = %1585
  %1589 = call ptr @SymName(ptr noundef nonnull %8) #4
  %1590 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 5
  %1591 = load ptr, ptr %1590, align 8, !tbaa !5
  %1592 = call ptr @SymName(ptr noundef %1591) #4
  %1593 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 21, i32 noundef 12, ptr noundef nonnull @.str.31, i32 noundef 1, ptr noundef nonnull %23, ptr noundef %1589, ptr noundef %1592) #4
  br label %1594

1594:                                             ; preds = %1588, %1585, %1583
  %1595 = load i16, ptr %34, align 2
  %1596 = or i16 %1595, 2
  store i16 %1596, ptr %34, align 2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %20) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %19) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @Error(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @GetMemory(i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @FindOptimize(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @SetOptimize(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Manifest(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @SymName(ptr noundef) local_unnamed_addr #2

declare i32 @DisposeObject(ptr noundef) local_unnamed_addr #2

declare ptr @MinSize(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BreakObject(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @EchoLength(i32 noundef) local_unnamed_addr #2

declare ptr @Hyphenate(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @Constrained(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @MakeWord(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @AdjustSize(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Image(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !6, i64 0}
!12 = !{!13, !11, i64 0}
!13 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12}
!14 = !{!13, !11, i64 4}
!15 = !{!13, !11, i64 8}
