; ModuleID = 'src/z35.c'
source_filename = "src/z35.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }

@MomentSym = dso_local local_unnamed_addr global ptr null, align 8
@time_string = internal global [30 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [8 x i8] c"@Moment\00", align 1
@no_fpos = external local_unnamed_addr global ptr, align 8
@StartSym = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"@Tag\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"@Second\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"@Minute\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"@Hour\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"@Day\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"@Month\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"@Year\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"@Century\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"@WeekDay\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"@YearDay\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"@DaylightSaving\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"unable to obtain the current time\00", align 1
@zz_lengths = external local_unnamed_addr global [0 x i8], align 1
@zz_size = external local_unnamed_addr global i32, align 4
@zz_free = external local_unnamed_addr global [0 x ptr], align 8
@zz_hold = external local_unnamed_addr global ptr, align 8
@current_moment = internal unnamed_addr global ptr null, align 8
@xx_link = external local_unnamed_addr global ptr, align 8
@zz_res = external local_unnamed_addr global ptr, align 8
@zz_tmp = external local_unnamed_addr global ptr, align 8
@.str.17 = private unnamed_addr constant [5 x i8] c"%.2d\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@.str.20 = private unnamed_addr constant [39 x i8] c"StartMoment: current_moment == nilobj!\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @TimeString() local_unnamed_addr #0 {
  ret ptr @time_string
}

; Function Attrs: nounwind uwtable
define dso_local void @InitTime() local_unnamed_addr #1 {
  %1 = alloca i64, align 8
  %2 = alloca [20 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #7
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #7
  %3 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %4 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %5 = tail call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.1, ptr noundef %3) #7
  %6 = tail call ptr @InsertSym(ptr noundef nonnull @.str, i8 noundef zeroext -113, ptr noundef %3, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %4, ptr noundef %5) #7
  store ptr %6, ptr @MomentSym, align 8, !tbaa !5
  %7 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %8 = tail call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.1, ptr noundef %7) #7
  %9 = tail call ptr @InsertSym(ptr noundef nonnull @.str.2, i8 noundef zeroext -111, ptr noundef %7, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %6, ptr noundef %8) #7
  %10 = getelementptr inbounds i8, ptr %9, i64 41
  %11 = load i24, ptr %10, align 1
  %12 = or i24 %11, 65536
  store i24 %12, ptr %10, align 1
  %13 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %14 = load ptr, ptr @MomentSym, align 8, !tbaa !5
  %15 = tail call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.1, ptr noundef %13) #7
  %16 = tail call ptr @InsertSym(ptr noundef nonnull @.str.3, i8 noundef zeroext -111, ptr noundef %13, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %14, ptr noundef %15) #7
  %17 = getelementptr inbounds i8, ptr %16, i64 41
  %18 = load i24, ptr %17, align 1
  %19 = or i24 %18, 65536
  store i24 %19, ptr %17, align 1
  %20 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %21 = load ptr, ptr @MomentSym, align 8, !tbaa !5
  %22 = tail call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.1, ptr noundef %20) #7
  %23 = tail call ptr @InsertSym(ptr noundef nonnull @.str.4, i8 noundef zeroext -111, ptr noundef %20, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %21, ptr noundef %22) #7
  %24 = getelementptr inbounds i8, ptr %23, i64 41
  %25 = load i24, ptr %24, align 1
  %26 = or i24 %25, 65536
  store i24 %26, ptr %24, align 1
  %27 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %28 = load ptr, ptr @MomentSym, align 8, !tbaa !5
  %29 = tail call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.1, ptr noundef %27) #7
  %30 = tail call ptr @InsertSym(ptr noundef nonnull @.str.5, i8 noundef zeroext -111, ptr noundef %27, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %28, ptr noundef %29) #7
  %31 = getelementptr inbounds i8, ptr %30, i64 41
  %32 = load i24, ptr %31, align 1
  %33 = or i24 %32, 65536
  store i24 %33, ptr %31, align 1
  %34 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %35 = load ptr, ptr @MomentSym, align 8, !tbaa !5
  %36 = tail call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.1, ptr noundef %34) #7
  %37 = tail call ptr @InsertSym(ptr noundef nonnull @.str.6, i8 noundef zeroext -111, ptr noundef %34, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %35, ptr noundef %36) #7
  %38 = getelementptr inbounds i8, ptr %37, i64 41
  %39 = load i24, ptr %38, align 1
  %40 = or i24 %39, 65536
  store i24 %40, ptr %38, align 1
  %41 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %42 = load ptr, ptr @MomentSym, align 8, !tbaa !5
  %43 = tail call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.1, ptr noundef %41) #7
  %44 = tail call ptr @InsertSym(ptr noundef nonnull @.str.7, i8 noundef zeroext -111, ptr noundef %41, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %42, ptr noundef %43) #7
  %45 = getelementptr inbounds i8, ptr %44, i64 41
  %46 = load i24, ptr %45, align 1
  %47 = or i24 %46, 65536
  store i24 %47, ptr %45, align 1
  %48 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %49 = load ptr, ptr @MomentSym, align 8, !tbaa !5
  %50 = tail call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.1, ptr noundef %48) #7
  %51 = tail call ptr @InsertSym(ptr noundef nonnull @.str.8, i8 noundef zeroext -111, ptr noundef %48, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %49, ptr noundef %50) #7
  %52 = getelementptr inbounds i8, ptr %51, i64 41
  %53 = load i24, ptr %52, align 1
  %54 = or i24 %53, 65536
  store i24 %54, ptr %52, align 1
  %55 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %56 = load ptr, ptr @MomentSym, align 8, !tbaa !5
  %57 = tail call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.1, ptr noundef %55) #7
  %58 = tail call ptr @InsertSym(ptr noundef nonnull @.str.9, i8 noundef zeroext -111, ptr noundef %55, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %56, ptr noundef %57) #7
  %59 = getelementptr inbounds i8, ptr %58, i64 41
  %60 = load i24, ptr %59, align 1
  %61 = or i24 %60, 65536
  store i24 %61, ptr %59, align 1
  %62 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %63 = load ptr, ptr @MomentSym, align 8, !tbaa !5
  %64 = tail call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.1, ptr noundef %62) #7
  %65 = tail call ptr @InsertSym(ptr noundef nonnull @.str.10, i8 noundef zeroext -111, ptr noundef %62, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %63, ptr noundef %64) #7
  %66 = getelementptr inbounds i8, ptr %65, i64 41
  %67 = load i24, ptr %66, align 1
  %68 = or i24 %67, 65536
  store i24 %68, ptr %66, align 1
  %69 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %70 = load ptr, ptr @MomentSym, align 8, !tbaa !5
  %71 = tail call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.1, ptr noundef %69) #7
  %72 = tail call ptr @InsertSym(ptr noundef nonnull @.str.11, i8 noundef zeroext -111, ptr noundef %69, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %70, ptr noundef %71) #7
  %73 = getelementptr inbounds i8, ptr %72, i64 41
  %74 = load i24, ptr %73, align 1
  %75 = or i24 %74, 65536
  store i24 %75, ptr %73, align 1
  %76 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %77 = load ptr, ptr @MomentSym, align 8, !tbaa !5
  %78 = tail call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.1, ptr noundef %76) #7
  %79 = tail call ptr @InsertSym(ptr noundef nonnull @.str.12, i8 noundef zeroext -111, ptr noundef %76, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %77, ptr noundef %78) #7
  %80 = getelementptr inbounds i8, ptr %79, i64 41
  %81 = load i24, ptr %80, align 1
  %82 = or i24 %81, 65536
  store i24 %82, ptr %80, align 1
  %83 = call i64 @time(ptr noundef nonnull %1) #7
  %84 = icmp eq i64 %83, -1
  br i1 %84, label %85, label %88

85:                                               ; preds = %0
  %86 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %87 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 35, i32 noundef 1, ptr noundef nonnull @.str.13, i32 noundef 2, ptr noundef %86) #7
  br label %88

88:                                               ; preds = %85, %0
  %89 = call ptr @localtime(ptr noundef nonnull %1) #7
  %90 = call ptr @asctime(ptr noundef %89) #7
  %91 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @time_string, ptr noundef nonnull dereferenceable(1) %90) #7
  %92 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 2), align 1, !tbaa !9
  %93 = zext i8 %92 to i32
  store i32 %93, ptr @zz_size, align 4, !tbaa !10
  %94 = zext i8 %92 to i64
  %95 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %94
  %96 = load ptr, ptr %95, align 8, !tbaa !5
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %101

98:                                               ; preds = %88
  %99 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %100 = call ptr @GetMemory(i32 noundef %93, ptr noundef %99) #7
  store ptr %100, ptr @zz_hold, align 8, !tbaa !5
  br label %105

101:                                              ; preds = %88
  store ptr %96, ptr @zz_hold, align 8, !tbaa !5
  %102 = load ptr, ptr %96, align 8, !tbaa !9
  %103 = zext i8 %92 to i64
  %104 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %103
  store ptr %102, ptr %104, align 8, !tbaa !5
  br label %105

105:                                              ; preds = %98, %101
  %106 = phi ptr [ %100, %98 ], [ %96, %101 ]
  %107 = getelementptr inbounds %struct.word_type, ptr %106, i64 0, i32 1
  store i8 2, ptr %107, align 8, !tbaa !9
  %108 = getelementptr inbounds [2 x %struct.LIST], ptr %106, i64 0, i64 1, i32 1
  store ptr %106, ptr %108, align 8, !tbaa !9
  %109 = getelementptr inbounds [2 x %struct.LIST], ptr %106, i64 0, i64 1
  store ptr %106, ptr %109, align 8, !tbaa !9
  %110 = getelementptr inbounds %struct.LIST, ptr %106, i64 0, i32 1
  store ptr %106, ptr %110, align 8, !tbaa !9
  store ptr %106, ptr %106, align 8, !tbaa !9
  store ptr %106, ptr @current_moment, align 8, !tbaa !5
  %111 = load ptr, ptr @MomentSym, align 8, !tbaa !5
  %112 = getelementptr inbounds %struct.closure_type, ptr %106, i64 0, i32 5
  store ptr %111, ptr %112, align 8, !tbaa !9
  store i32 7827310, ptr %2, align 16
  %113 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 10), align 1, !tbaa !9
  %114 = zext i8 %113 to i32
  store i32 %114, ptr @zz_size, align 4, !tbaa !10
  %115 = zext i8 %113 to i64
  %116 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %115
  %117 = load ptr, ptr %116, align 8, !tbaa !5
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %122

119:                                              ; preds = %105
  %120 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %121 = call ptr @GetMemory(i32 noundef %114, ptr noundef %120) #7
  store ptr %121, ptr @zz_hold, align 8, !tbaa !5
  br label %126

122:                                              ; preds = %105
  store ptr %117, ptr @zz_hold, align 8, !tbaa !5
  %123 = load ptr, ptr %117, align 8, !tbaa !9
  %124 = zext i8 %113 to i64
  %125 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %124
  store ptr %123, ptr %125, align 8, !tbaa !5
  br label %126

126:                                              ; preds = %119, %122
  %127 = phi ptr [ %121, %119 ], [ %117, %122 ]
  %128 = getelementptr inbounds %struct.word_type, ptr %127, i64 0, i32 1
  store i8 10, ptr %128, align 8, !tbaa !9
  %129 = getelementptr inbounds [2 x %struct.LIST], ptr %127, i64 0, i64 1
  %130 = getelementptr inbounds [2 x %struct.LIST], ptr %127, i64 0, i64 1, i32 1
  store ptr %127, ptr %130, align 8, !tbaa !9
  store ptr %127, ptr %129, align 8, !tbaa !9
  %131 = getelementptr inbounds %struct.LIST, ptr %127, i64 0, i32 1
  store ptr %127, ptr %131, align 8, !tbaa !9
  store ptr %127, ptr %127, align 8, !tbaa !9
  %132 = getelementptr inbounds %struct.closure_type, ptr %127, i64 0, i32 5
  store ptr %9, ptr %132, align 8, !tbaa !9
  %133 = load i8, ptr @zz_lengths, align 1, !tbaa !9
  %134 = zext i8 %133 to i32
  store i32 %134, ptr @zz_size, align 4, !tbaa !10
  %135 = zext i8 %133 to i64
  %136 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %135
  %137 = load ptr, ptr %136, align 8, !tbaa !5
  %138 = icmp eq ptr %137, null
  br i1 %138, label %139, label %142

139:                                              ; preds = %126
  %140 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %141 = call ptr @GetMemory(i32 noundef %134, ptr noundef %140) #7
  br label %146

142:                                              ; preds = %126
  store ptr %137, ptr @zz_hold, align 8, !tbaa !5
  %143 = load ptr, ptr %137, align 8, !tbaa !9
  %144 = zext i8 %133 to i64
  %145 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %144
  store ptr %143, ptr %145, align 8, !tbaa !5
  br label %146

146:                                              ; preds = %139, %142
  %147 = phi ptr [ %141, %139 ], [ %137, %142 ]
  %148 = getelementptr inbounds %struct.word_type, ptr %147, i64 0, i32 1
  store i8 0, ptr %148, align 8, !tbaa !9
  %149 = getelementptr inbounds [2 x %struct.LIST], ptr %147, i64 0, i64 1, i32 1
  store ptr %147, ptr %149, align 8, !tbaa !9
  %150 = getelementptr inbounds [2 x %struct.LIST], ptr %147, i64 0, i64 1
  store ptr %147, ptr %150, align 8, !tbaa !9
  %151 = getelementptr inbounds %struct.LIST, ptr %147, i64 0, i32 1
  store ptr %147, ptr %151, align 8, !tbaa !9
  store ptr %147, ptr %147, align 8, !tbaa !9
  store ptr %147, ptr @xx_link, align 8, !tbaa !5
  store ptr %147, ptr @zz_res, align 8, !tbaa !5
  %152 = load ptr, ptr @current_moment, align 8, !tbaa !5
  store ptr %152, ptr @zz_hold, align 8, !tbaa !5
  %153 = icmp eq ptr %152, null
  br i1 %153, label %154, label %155

154:                                              ; preds = %146
  store ptr %127, ptr @zz_hold, align 8, !tbaa !5
  br label %170

155:                                              ; preds = %146
  %156 = load ptr, ptr %152, align 8, !tbaa !9
  store ptr %156, ptr @zz_tmp, align 8, !tbaa !5
  %157 = load ptr, ptr %147, align 8, !tbaa !9
  store ptr %157, ptr %152, align 8, !tbaa !9
  %158 = load ptr, ptr @zz_hold, align 8, !tbaa !5
  %159 = load ptr, ptr @zz_res, align 8, !tbaa !5
  %160 = load ptr, ptr %159, align 8, !tbaa !9
  %161 = getelementptr inbounds %struct.LIST, ptr %160, i64 0, i32 1
  store ptr %158, ptr %161, align 8, !tbaa !9
  %162 = load ptr, ptr @zz_tmp, align 8, !tbaa !5
  store ptr %162, ptr %159, align 8, !tbaa !9
  %163 = load ptr, ptr @zz_res, align 8, !tbaa !5
  %164 = getelementptr inbounds %struct.LIST, ptr %162, i64 0, i32 1
  store ptr %163, ptr %164, align 8, !tbaa !9
  %165 = load ptr, ptr @xx_link, align 8, !tbaa !5
  store ptr %165, ptr @zz_res, align 8, !tbaa !5
  store ptr %127, ptr @zz_hold, align 8, !tbaa !5
  %166 = icmp eq ptr %165, null
  br i1 %166, label %178, label %167

167:                                              ; preds = %155
  %168 = getelementptr inbounds [2 x %struct.LIST], ptr %165, i64 0, i64 1
  %169 = load ptr, ptr %168, align 8, !tbaa !9
  br label %170

170:                                              ; preds = %167, %154
  %171 = phi ptr [ %147, %154 ], [ %169, %167 ]
  %172 = phi ptr [ %147, %154 ], [ %165, %167 ]
  %173 = load ptr, ptr %129, align 8, !tbaa !9
  store ptr %173, ptr @zz_tmp, align 8, !tbaa !5
  %174 = getelementptr inbounds [2 x %struct.LIST], ptr %172, i64 0, i64 1
  store ptr %171, ptr %129, align 8, !tbaa !9
  %175 = load ptr, ptr %174, align 8, !tbaa !9
  %176 = getelementptr inbounds [2 x %struct.LIST], ptr %175, i64 0, i64 1, i32 1
  store ptr %127, ptr %176, align 8, !tbaa !9
  store ptr %173, ptr %174, align 8, !tbaa !9
  %177 = getelementptr inbounds [2 x %struct.LIST], ptr %173, i64 0, i64 1, i32 1
  store ptr %172, ptr %177, align 8, !tbaa !9
  br label %178

178:                                              ; preds = %155, %170
  %179 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %180 = call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull %2, ptr noundef %179) #7
  %181 = load i8, ptr @zz_lengths, align 1, !tbaa !9
  %182 = zext i8 %181 to i32
  store i32 %182, ptr @zz_size, align 4, !tbaa !10
  %183 = zext i8 %181 to i64
  %184 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %183
  %185 = load ptr, ptr %184, align 8, !tbaa !5
  %186 = icmp eq ptr %185, null
  br i1 %186, label %187, label %190

187:                                              ; preds = %178
  %188 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %189 = call ptr @GetMemory(i32 noundef %182, ptr noundef %188) #7
  br label %194

190:                                              ; preds = %178
  store ptr %185, ptr @zz_hold, align 8, !tbaa !5
  %191 = load ptr, ptr %185, align 8, !tbaa !9
  %192 = zext i8 %181 to i64
  %193 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %192
  store ptr %191, ptr %193, align 8, !tbaa !5
  br label %194

194:                                              ; preds = %187, %190
  %195 = phi ptr [ %189, %187 ], [ %185, %190 ]
  %196 = getelementptr inbounds %struct.word_type, ptr %195, i64 0, i32 1
  store i8 0, ptr %196, align 8, !tbaa !9
  %197 = getelementptr inbounds [2 x %struct.LIST], ptr %195, i64 0, i64 1, i32 1
  store ptr %195, ptr %197, align 8, !tbaa !9
  %198 = getelementptr inbounds [2 x %struct.LIST], ptr %195, i64 0, i64 1
  store ptr %195, ptr %198, align 8, !tbaa !9
  %199 = getelementptr inbounds %struct.LIST, ptr %195, i64 0, i32 1
  store ptr %195, ptr %199, align 8, !tbaa !9
  store ptr %195, ptr %195, align 8, !tbaa !9
  store ptr %195, ptr @xx_link, align 8, !tbaa !5
  store ptr %195, ptr @zz_res, align 8, !tbaa !5
  store ptr %127, ptr @zz_hold, align 8, !tbaa !5
  %200 = load ptr, ptr %127, align 8, !tbaa !9
  store ptr %200, ptr @zz_tmp, align 8, !tbaa !5
  %201 = load ptr, ptr %195, align 8, !tbaa !9
  store ptr %201, ptr %127, align 8, !tbaa !9
  %202 = load ptr, ptr @zz_hold, align 8, !tbaa !5
  %203 = load ptr, ptr @zz_res, align 8, !tbaa !5
  %204 = load ptr, ptr %203, align 8, !tbaa !9
  %205 = getelementptr inbounds %struct.LIST, ptr %204, i64 0, i32 1
  store ptr %202, ptr %205, align 8, !tbaa !9
  %206 = load ptr, ptr @zz_tmp, align 8, !tbaa !5
  store ptr %206, ptr %203, align 8, !tbaa !9
  %207 = load ptr, ptr @zz_res, align 8, !tbaa !5
  %208 = getelementptr inbounds %struct.LIST, ptr %206, i64 0, i32 1
  store ptr %207, ptr %208, align 8, !tbaa !9
  %209 = load ptr, ptr @xx_link, align 8, !tbaa !5
  store ptr %209, ptr @zz_res, align 8, !tbaa !5
  store ptr %180, ptr @zz_hold, align 8, !tbaa !5
  %210 = icmp eq ptr %180, null
  %211 = icmp eq ptr %209, null
  %212 = select i1 %210, i1 true, i1 %211
  br i1 %212, label %220, label %213

213:                                              ; preds = %194
  %214 = getelementptr inbounds [2 x %struct.LIST], ptr %180, i64 0, i64 1
  %215 = load ptr, ptr %214, align 8, !tbaa !9
  store ptr %215, ptr @zz_tmp, align 8, !tbaa !5
  %216 = getelementptr inbounds [2 x %struct.LIST], ptr %209, i64 0, i64 1
  %217 = load ptr, ptr %216, align 8, !tbaa !9
  store ptr %217, ptr %214, align 8, !tbaa !9
  %218 = getelementptr inbounds [2 x %struct.LIST], ptr %217, i64 0, i64 1, i32 1
  store ptr %180, ptr %218, align 8, !tbaa !9
  store ptr %215, ptr %216, align 8, !tbaa !9
  %219 = getelementptr inbounds [2 x %struct.LIST], ptr %215, i64 0, i64 1, i32 1
  store ptr %209, ptr %219, align 8, !tbaa !9
  br label %220

220:                                              ; preds = %194, %213
  %221 = load i32, ptr %89, align 8, !tbaa !12
  %222 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %221) #7
  %223 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 10), align 1, !tbaa !9
  %224 = zext i8 %223 to i32
  store i32 %224, ptr @zz_size, align 4, !tbaa !10
  %225 = zext i8 %223 to i64
  %226 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %225
  %227 = load ptr, ptr %226, align 8, !tbaa !5
  %228 = icmp eq ptr %227, null
  br i1 %228, label %229, label %232

229:                                              ; preds = %220
  %230 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %231 = call ptr @GetMemory(i32 noundef %224, ptr noundef %230) #7
  store ptr %231, ptr @zz_hold, align 8, !tbaa !5
  br label %236

232:                                              ; preds = %220
  store ptr %227, ptr @zz_hold, align 8, !tbaa !5
  %233 = load ptr, ptr %227, align 8, !tbaa !9
  %234 = zext i8 %223 to i64
  %235 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %234
  store ptr %233, ptr %235, align 8, !tbaa !5
  br label %236

236:                                              ; preds = %229, %232
  %237 = phi ptr [ %231, %229 ], [ %227, %232 ]
  %238 = getelementptr inbounds %struct.word_type, ptr %237, i64 0, i32 1
  store i8 10, ptr %238, align 8, !tbaa !9
  %239 = getelementptr inbounds [2 x %struct.LIST], ptr %237, i64 0, i64 1
  %240 = getelementptr inbounds [2 x %struct.LIST], ptr %237, i64 0, i64 1, i32 1
  store ptr %237, ptr %240, align 8, !tbaa !9
  store ptr %237, ptr %239, align 8, !tbaa !9
  %241 = getelementptr inbounds %struct.LIST, ptr %237, i64 0, i32 1
  store ptr %237, ptr %241, align 8, !tbaa !9
  store ptr %237, ptr %237, align 8, !tbaa !9
  %242 = getelementptr inbounds %struct.closure_type, ptr %237, i64 0, i32 5
  store ptr %16, ptr %242, align 8, !tbaa !9
  %243 = load i8, ptr @zz_lengths, align 1, !tbaa !9
  %244 = zext i8 %243 to i32
  store i32 %244, ptr @zz_size, align 4, !tbaa !10
  %245 = zext i8 %243 to i64
  %246 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %245
  %247 = load ptr, ptr %246, align 8, !tbaa !5
  %248 = icmp eq ptr %247, null
  br i1 %248, label %249, label %252

249:                                              ; preds = %236
  %250 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %251 = call ptr @GetMemory(i32 noundef %244, ptr noundef %250) #7
  br label %256

252:                                              ; preds = %236
  store ptr %247, ptr @zz_hold, align 8, !tbaa !5
  %253 = load ptr, ptr %247, align 8, !tbaa !9
  %254 = zext i8 %243 to i64
  %255 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %254
  store ptr %253, ptr %255, align 8, !tbaa !5
  br label %256

256:                                              ; preds = %249, %252
  %257 = phi ptr [ %251, %249 ], [ %247, %252 ]
  %258 = getelementptr inbounds %struct.word_type, ptr %257, i64 0, i32 1
  store i8 0, ptr %258, align 8, !tbaa !9
  %259 = getelementptr inbounds [2 x %struct.LIST], ptr %257, i64 0, i64 1, i32 1
  store ptr %257, ptr %259, align 8, !tbaa !9
  %260 = getelementptr inbounds [2 x %struct.LIST], ptr %257, i64 0, i64 1
  store ptr %257, ptr %260, align 8, !tbaa !9
  %261 = getelementptr inbounds %struct.LIST, ptr %257, i64 0, i32 1
  store ptr %257, ptr %261, align 8, !tbaa !9
  store ptr %257, ptr %257, align 8, !tbaa !9
  store ptr %257, ptr @xx_link, align 8, !tbaa !5
  store ptr %257, ptr @zz_res, align 8, !tbaa !5
  %262 = load ptr, ptr @current_moment, align 8, !tbaa !5
  store ptr %262, ptr @zz_hold, align 8, !tbaa !5
  %263 = icmp eq ptr %262, null
  br i1 %263, label %264, label %265

264:                                              ; preds = %256
  store ptr %237, ptr @zz_hold, align 8, !tbaa !5
  br label %280

265:                                              ; preds = %256
  %266 = load ptr, ptr %262, align 8, !tbaa !9
  store ptr %266, ptr @zz_tmp, align 8, !tbaa !5
  %267 = load ptr, ptr %257, align 8, !tbaa !9
  store ptr %267, ptr %262, align 8, !tbaa !9
  %268 = load ptr, ptr @zz_hold, align 8, !tbaa !5
  %269 = load ptr, ptr @zz_res, align 8, !tbaa !5
  %270 = load ptr, ptr %269, align 8, !tbaa !9
  %271 = getelementptr inbounds %struct.LIST, ptr %270, i64 0, i32 1
  store ptr %268, ptr %271, align 8, !tbaa !9
  %272 = load ptr, ptr @zz_tmp, align 8, !tbaa !5
  store ptr %272, ptr %269, align 8, !tbaa !9
  %273 = load ptr, ptr @zz_res, align 8, !tbaa !5
  %274 = getelementptr inbounds %struct.LIST, ptr %272, i64 0, i32 1
  store ptr %273, ptr %274, align 8, !tbaa !9
  %275 = load ptr, ptr @xx_link, align 8, !tbaa !5
  store ptr %275, ptr @zz_res, align 8, !tbaa !5
  store ptr %237, ptr @zz_hold, align 8, !tbaa !5
  %276 = icmp eq ptr %275, null
  br i1 %276, label %288, label %277

277:                                              ; preds = %265
  %278 = getelementptr inbounds [2 x %struct.LIST], ptr %275, i64 0, i64 1
  %279 = load ptr, ptr %278, align 8, !tbaa !9
  br label %280

280:                                              ; preds = %277, %264
  %281 = phi ptr [ %257, %264 ], [ %279, %277 ]
  %282 = phi ptr [ %257, %264 ], [ %275, %277 ]
  %283 = load ptr, ptr %239, align 8, !tbaa !9
  store ptr %283, ptr @zz_tmp, align 8, !tbaa !5
  %284 = getelementptr inbounds [2 x %struct.LIST], ptr %282, i64 0, i64 1
  store ptr %281, ptr %239, align 8, !tbaa !9
  %285 = load ptr, ptr %284, align 8, !tbaa !9
  %286 = getelementptr inbounds [2 x %struct.LIST], ptr %285, i64 0, i64 1, i32 1
  store ptr %237, ptr %286, align 8, !tbaa !9
  store ptr %283, ptr %284, align 8, !tbaa !9
  %287 = getelementptr inbounds [2 x %struct.LIST], ptr %283, i64 0, i64 1, i32 1
  store ptr %282, ptr %287, align 8, !tbaa !9
  br label %288

288:                                              ; preds = %265, %280
  %289 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %290 = call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull %2, ptr noundef %289) #7
  %291 = load i8, ptr @zz_lengths, align 1, !tbaa !9
  %292 = zext i8 %291 to i32
  store i32 %292, ptr @zz_size, align 4, !tbaa !10
  %293 = zext i8 %291 to i64
  %294 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %293
  %295 = load ptr, ptr %294, align 8, !tbaa !5
  %296 = icmp eq ptr %295, null
  br i1 %296, label %297, label %300

297:                                              ; preds = %288
  %298 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %299 = call ptr @GetMemory(i32 noundef %292, ptr noundef %298) #7
  br label %304

300:                                              ; preds = %288
  store ptr %295, ptr @zz_hold, align 8, !tbaa !5
  %301 = load ptr, ptr %295, align 8, !tbaa !9
  %302 = zext i8 %291 to i64
  %303 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %302
  store ptr %301, ptr %303, align 8, !tbaa !5
  br label %304

304:                                              ; preds = %297, %300
  %305 = phi ptr [ %299, %297 ], [ %295, %300 ]
  %306 = getelementptr inbounds %struct.word_type, ptr %305, i64 0, i32 1
  store i8 0, ptr %306, align 8, !tbaa !9
  %307 = getelementptr inbounds [2 x %struct.LIST], ptr %305, i64 0, i64 1, i32 1
  store ptr %305, ptr %307, align 8, !tbaa !9
  %308 = getelementptr inbounds [2 x %struct.LIST], ptr %305, i64 0, i64 1
  store ptr %305, ptr %308, align 8, !tbaa !9
  %309 = getelementptr inbounds %struct.LIST, ptr %305, i64 0, i32 1
  store ptr %305, ptr %309, align 8, !tbaa !9
  store ptr %305, ptr %305, align 8, !tbaa !9
  store ptr %305, ptr @xx_link, align 8, !tbaa !5
  store ptr %305, ptr @zz_res, align 8, !tbaa !5
  store ptr %237, ptr @zz_hold, align 8, !tbaa !5
  %310 = load ptr, ptr %237, align 8, !tbaa !9
  store ptr %310, ptr @zz_tmp, align 8, !tbaa !5
  %311 = load ptr, ptr %305, align 8, !tbaa !9
  store ptr %311, ptr %237, align 8, !tbaa !9
  %312 = load ptr, ptr @zz_hold, align 8, !tbaa !5
  %313 = load ptr, ptr @zz_res, align 8, !tbaa !5
  %314 = load ptr, ptr %313, align 8, !tbaa !9
  %315 = getelementptr inbounds %struct.LIST, ptr %314, i64 0, i32 1
  store ptr %312, ptr %315, align 8, !tbaa !9
  %316 = load ptr, ptr @zz_tmp, align 8, !tbaa !5
  store ptr %316, ptr %313, align 8, !tbaa !9
  %317 = load ptr, ptr @zz_res, align 8, !tbaa !5
  %318 = getelementptr inbounds %struct.LIST, ptr %316, i64 0, i32 1
  store ptr %317, ptr %318, align 8, !tbaa !9
  %319 = load ptr, ptr @xx_link, align 8, !tbaa !5
  store ptr %319, ptr @zz_res, align 8, !tbaa !5
  store ptr %290, ptr @zz_hold, align 8, !tbaa !5
  %320 = icmp eq ptr %290, null
  %321 = icmp eq ptr %319, null
  %322 = select i1 %320, i1 true, i1 %321
  br i1 %322, label %330, label %323

323:                                              ; preds = %304
  %324 = getelementptr inbounds [2 x %struct.LIST], ptr %290, i64 0, i64 1
  %325 = load ptr, ptr %324, align 8, !tbaa !9
  store ptr %325, ptr @zz_tmp, align 8, !tbaa !5
  %326 = getelementptr inbounds [2 x %struct.LIST], ptr %319, i64 0, i64 1
  %327 = load ptr, ptr %326, align 8, !tbaa !9
  store ptr %327, ptr %324, align 8, !tbaa !9
  %328 = getelementptr inbounds [2 x %struct.LIST], ptr %327, i64 0, i64 1, i32 1
  store ptr %290, ptr %328, align 8, !tbaa !9
  store ptr %325, ptr %326, align 8, !tbaa !9
  %329 = getelementptr inbounds [2 x %struct.LIST], ptr %325, i64 0, i64 1, i32 1
  store ptr %319, ptr %329, align 8, !tbaa !9
  br label %330

330:                                              ; preds = %304, %323
  %331 = getelementptr inbounds %struct.tm, ptr %89, i64 0, i32 1
  %332 = load i32, ptr %331, align 4, !tbaa !15
  %333 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %332) #7
  %334 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 10), align 1, !tbaa !9
  %335 = zext i8 %334 to i32
  store i32 %335, ptr @zz_size, align 4, !tbaa !10
  %336 = zext i8 %334 to i64
  %337 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %336
  %338 = load ptr, ptr %337, align 8, !tbaa !5
  %339 = icmp eq ptr %338, null
  br i1 %339, label %340, label %343

340:                                              ; preds = %330
  %341 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %342 = call ptr @GetMemory(i32 noundef %335, ptr noundef %341) #7
  store ptr %342, ptr @zz_hold, align 8, !tbaa !5
  br label %347

343:                                              ; preds = %330
  store ptr %338, ptr @zz_hold, align 8, !tbaa !5
  %344 = load ptr, ptr %338, align 8, !tbaa !9
  %345 = zext i8 %334 to i64
  %346 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %345
  store ptr %344, ptr %346, align 8, !tbaa !5
  br label %347

347:                                              ; preds = %340, %343
  %348 = phi ptr [ %342, %340 ], [ %338, %343 ]
  %349 = getelementptr inbounds %struct.word_type, ptr %348, i64 0, i32 1
  store i8 10, ptr %349, align 8, !tbaa !9
  %350 = getelementptr inbounds [2 x %struct.LIST], ptr %348, i64 0, i64 1
  %351 = getelementptr inbounds [2 x %struct.LIST], ptr %348, i64 0, i64 1, i32 1
  store ptr %348, ptr %351, align 8, !tbaa !9
  store ptr %348, ptr %350, align 8, !tbaa !9
  %352 = getelementptr inbounds %struct.LIST, ptr %348, i64 0, i32 1
  store ptr %348, ptr %352, align 8, !tbaa !9
  store ptr %348, ptr %348, align 8, !tbaa !9
  %353 = getelementptr inbounds %struct.closure_type, ptr %348, i64 0, i32 5
  store ptr %23, ptr %353, align 8, !tbaa !9
  %354 = load i8, ptr @zz_lengths, align 1, !tbaa !9
  %355 = zext i8 %354 to i32
  store i32 %355, ptr @zz_size, align 4, !tbaa !10
  %356 = zext i8 %354 to i64
  %357 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %356
  %358 = load ptr, ptr %357, align 8, !tbaa !5
  %359 = icmp eq ptr %358, null
  br i1 %359, label %360, label %363

360:                                              ; preds = %347
  %361 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %362 = call ptr @GetMemory(i32 noundef %355, ptr noundef %361) #7
  br label %367

363:                                              ; preds = %347
  store ptr %358, ptr @zz_hold, align 8, !tbaa !5
  %364 = load ptr, ptr %358, align 8, !tbaa !9
  %365 = zext i8 %354 to i64
  %366 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %365
  store ptr %364, ptr %366, align 8, !tbaa !5
  br label %367

367:                                              ; preds = %360, %363
  %368 = phi ptr [ %362, %360 ], [ %358, %363 ]
  %369 = getelementptr inbounds %struct.word_type, ptr %368, i64 0, i32 1
  store i8 0, ptr %369, align 8, !tbaa !9
  %370 = getelementptr inbounds [2 x %struct.LIST], ptr %368, i64 0, i64 1, i32 1
  store ptr %368, ptr %370, align 8, !tbaa !9
  %371 = getelementptr inbounds [2 x %struct.LIST], ptr %368, i64 0, i64 1
  store ptr %368, ptr %371, align 8, !tbaa !9
  %372 = getelementptr inbounds %struct.LIST, ptr %368, i64 0, i32 1
  store ptr %368, ptr %372, align 8, !tbaa !9
  store ptr %368, ptr %368, align 8, !tbaa !9
  store ptr %368, ptr @xx_link, align 8, !tbaa !5
  store ptr %368, ptr @zz_res, align 8, !tbaa !5
  %373 = load ptr, ptr @current_moment, align 8, !tbaa !5
  store ptr %373, ptr @zz_hold, align 8, !tbaa !5
  %374 = icmp eq ptr %373, null
  br i1 %374, label %375, label %376

375:                                              ; preds = %367
  store ptr %348, ptr @zz_hold, align 8, !tbaa !5
  br label %391

376:                                              ; preds = %367
  %377 = load ptr, ptr %373, align 8, !tbaa !9
  store ptr %377, ptr @zz_tmp, align 8, !tbaa !5
  %378 = load ptr, ptr %368, align 8, !tbaa !9
  store ptr %378, ptr %373, align 8, !tbaa !9
  %379 = load ptr, ptr @zz_hold, align 8, !tbaa !5
  %380 = load ptr, ptr @zz_res, align 8, !tbaa !5
  %381 = load ptr, ptr %380, align 8, !tbaa !9
  %382 = getelementptr inbounds %struct.LIST, ptr %381, i64 0, i32 1
  store ptr %379, ptr %382, align 8, !tbaa !9
  %383 = load ptr, ptr @zz_tmp, align 8, !tbaa !5
  store ptr %383, ptr %380, align 8, !tbaa !9
  %384 = load ptr, ptr @zz_res, align 8, !tbaa !5
  %385 = getelementptr inbounds %struct.LIST, ptr %383, i64 0, i32 1
  store ptr %384, ptr %385, align 8, !tbaa !9
  %386 = load ptr, ptr @xx_link, align 8, !tbaa !5
  store ptr %386, ptr @zz_res, align 8, !tbaa !5
  store ptr %348, ptr @zz_hold, align 8, !tbaa !5
  %387 = icmp eq ptr %386, null
  br i1 %387, label %399, label %388

388:                                              ; preds = %376
  %389 = getelementptr inbounds [2 x %struct.LIST], ptr %386, i64 0, i64 1
  %390 = load ptr, ptr %389, align 8, !tbaa !9
  br label %391

391:                                              ; preds = %388, %375
  %392 = phi ptr [ %368, %375 ], [ %390, %388 ]
  %393 = phi ptr [ %368, %375 ], [ %386, %388 ]
  %394 = load ptr, ptr %350, align 8, !tbaa !9
  store ptr %394, ptr @zz_tmp, align 8, !tbaa !5
  %395 = getelementptr inbounds [2 x %struct.LIST], ptr %393, i64 0, i64 1
  store ptr %392, ptr %350, align 8, !tbaa !9
  %396 = load ptr, ptr %395, align 8, !tbaa !9
  %397 = getelementptr inbounds [2 x %struct.LIST], ptr %396, i64 0, i64 1, i32 1
  store ptr %348, ptr %397, align 8, !tbaa !9
  store ptr %394, ptr %395, align 8, !tbaa !9
  %398 = getelementptr inbounds [2 x %struct.LIST], ptr %394, i64 0, i64 1, i32 1
  store ptr %393, ptr %398, align 8, !tbaa !9
  br label %399

399:                                              ; preds = %376, %391
  %400 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %401 = call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull %2, ptr noundef %400) #7
  %402 = load i8, ptr @zz_lengths, align 1, !tbaa !9
  %403 = zext i8 %402 to i32
  store i32 %403, ptr @zz_size, align 4, !tbaa !10
  %404 = zext i8 %402 to i64
  %405 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %404
  %406 = load ptr, ptr %405, align 8, !tbaa !5
  %407 = icmp eq ptr %406, null
  br i1 %407, label %408, label %411

408:                                              ; preds = %399
  %409 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %410 = call ptr @GetMemory(i32 noundef %403, ptr noundef %409) #7
  br label %415

411:                                              ; preds = %399
  store ptr %406, ptr @zz_hold, align 8, !tbaa !5
  %412 = load ptr, ptr %406, align 8, !tbaa !9
  %413 = zext i8 %402 to i64
  %414 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %413
  store ptr %412, ptr %414, align 8, !tbaa !5
  br label %415

415:                                              ; preds = %408, %411
  %416 = phi ptr [ %410, %408 ], [ %406, %411 ]
  %417 = getelementptr inbounds %struct.word_type, ptr %416, i64 0, i32 1
  store i8 0, ptr %417, align 8, !tbaa !9
  %418 = getelementptr inbounds [2 x %struct.LIST], ptr %416, i64 0, i64 1, i32 1
  store ptr %416, ptr %418, align 8, !tbaa !9
  %419 = getelementptr inbounds [2 x %struct.LIST], ptr %416, i64 0, i64 1
  store ptr %416, ptr %419, align 8, !tbaa !9
  %420 = getelementptr inbounds %struct.LIST, ptr %416, i64 0, i32 1
  store ptr %416, ptr %420, align 8, !tbaa !9
  store ptr %416, ptr %416, align 8, !tbaa !9
  store ptr %416, ptr @xx_link, align 8, !tbaa !5
  store ptr %416, ptr @zz_res, align 8, !tbaa !5
  store ptr %348, ptr @zz_hold, align 8, !tbaa !5
  %421 = load ptr, ptr %348, align 8, !tbaa !9
  store ptr %421, ptr @zz_tmp, align 8, !tbaa !5
  %422 = load ptr, ptr %416, align 8, !tbaa !9
  store ptr %422, ptr %348, align 8, !tbaa !9
  %423 = load ptr, ptr @zz_hold, align 8, !tbaa !5
  %424 = load ptr, ptr @zz_res, align 8, !tbaa !5
  %425 = load ptr, ptr %424, align 8, !tbaa !9
  %426 = getelementptr inbounds %struct.LIST, ptr %425, i64 0, i32 1
  store ptr %423, ptr %426, align 8, !tbaa !9
  %427 = load ptr, ptr @zz_tmp, align 8, !tbaa !5
  store ptr %427, ptr %424, align 8, !tbaa !9
  %428 = load ptr, ptr @zz_res, align 8, !tbaa !5
  %429 = getelementptr inbounds %struct.LIST, ptr %427, i64 0, i32 1
  store ptr %428, ptr %429, align 8, !tbaa !9
  %430 = load ptr, ptr @xx_link, align 8, !tbaa !5
  store ptr %430, ptr @zz_res, align 8, !tbaa !5
  store ptr %401, ptr @zz_hold, align 8, !tbaa !5
  %431 = icmp eq ptr %401, null
  %432 = icmp eq ptr %430, null
  %433 = select i1 %431, i1 true, i1 %432
  br i1 %433, label %441, label %434

434:                                              ; preds = %415
  %435 = getelementptr inbounds [2 x %struct.LIST], ptr %401, i64 0, i64 1
  %436 = load ptr, ptr %435, align 8, !tbaa !9
  store ptr %436, ptr @zz_tmp, align 8, !tbaa !5
  %437 = getelementptr inbounds [2 x %struct.LIST], ptr %430, i64 0, i64 1
  %438 = load ptr, ptr %437, align 8, !tbaa !9
  store ptr %438, ptr %435, align 8, !tbaa !9
  %439 = getelementptr inbounds [2 x %struct.LIST], ptr %438, i64 0, i64 1, i32 1
  store ptr %401, ptr %439, align 8, !tbaa !9
  store ptr %436, ptr %437, align 8, !tbaa !9
  %440 = getelementptr inbounds [2 x %struct.LIST], ptr %436, i64 0, i64 1, i32 1
  store ptr %430, ptr %440, align 8, !tbaa !9
  br label %441

441:                                              ; preds = %415, %434
  %442 = getelementptr inbounds %struct.tm, ptr %89, i64 0, i32 2
  %443 = load i32, ptr %442, align 8, !tbaa !16
  %444 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %443) #7
  %445 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 10), align 1, !tbaa !9
  %446 = zext i8 %445 to i32
  store i32 %446, ptr @zz_size, align 4, !tbaa !10
  %447 = zext i8 %445 to i64
  %448 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %447
  %449 = load ptr, ptr %448, align 8, !tbaa !5
  %450 = icmp eq ptr %449, null
  br i1 %450, label %451, label %454

451:                                              ; preds = %441
  %452 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %453 = call ptr @GetMemory(i32 noundef %446, ptr noundef %452) #7
  store ptr %453, ptr @zz_hold, align 8, !tbaa !5
  br label %456

454:                                              ; preds = %441
  store ptr %449, ptr @zz_hold, align 8, !tbaa !5
  %455 = load ptr, ptr %449, align 8, !tbaa !9
  store ptr %455, ptr %448, align 8, !tbaa !5
  br label %456

456:                                              ; preds = %451, %454
  %457 = phi ptr [ %453, %451 ], [ %449, %454 ]
  %458 = getelementptr inbounds %struct.word_type, ptr %457, i64 0, i32 1
  store i8 10, ptr %458, align 8, !tbaa !9
  %459 = getelementptr inbounds [2 x %struct.LIST], ptr %457, i64 0, i64 1
  %460 = getelementptr inbounds [2 x %struct.LIST], ptr %457, i64 0, i64 1, i32 1
  store ptr %457, ptr %460, align 8, !tbaa !9
  store ptr %457, ptr %459, align 8, !tbaa !9
  %461 = getelementptr inbounds %struct.LIST, ptr %457, i64 0, i32 1
  store ptr %457, ptr %461, align 8, !tbaa !9
  store ptr %457, ptr %457, align 8, !tbaa !9
  %462 = getelementptr inbounds %struct.closure_type, ptr %457, i64 0, i32 5
  store ptr %30, ptr %462, align 8, !tbaa !9
  %463 = load i8, ptr @zz_lengths, align 1, !tbaa !9
  %464 = zext i8 %463 to i32
  store i32 %464, ptr @zz_size, align 4, !tbaa !10
  %465 = zext i8 %463 to i64
  %466 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %465
  %467 = load ptr, ptr %466, align 8, !tbaa !5
  %468 = icmp eq ptr %467, null
  br i1 %468, label %469, label %472

469:                                              ; preds = %456
  %470 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %471 = call ptr @GetMemory(i32 noundef %464, ptr noundef %470) #7
  br label %474

472:                                              ; preds = %456
  store ptr %467, ptr @zz_hold, align 8, !tbaa !5
  %473 = load ptr, ptr %467, align 8, !tbaa !9
  store ptr %473, ptr %466, align 8, !tbaa !5
  br label %474

474:                                              ; preds = %469, %472
  %475 = phi ptr [ %471, %469 ], [ %467, %472 ]
  %476 = getelementptr inbounds %struct.word_type, ptr %475, i64 0, i32 1
  store i8 0, ptr %476, align 8, !tbaa !9
  %477 = getelementptr inbounds [2 x %struct.LIST], ptr %475, i64 0, i64 1, i32 1
  store ptr %475, ptr %477, align 8, !tbaa !9
  %478 = getelementptr inbounds [2 x %struct.LIST], ptr %475, i64 0, i64 1
  store ptr %475, ptr %478, align 8, !tbaa !9
  %479 = getelementptr inbounds %struct.LIST, ptr %475, i64 0, i32 1
  store ptr %475, ptr %479, align 8, !tbaa !9
  store ptr %475, ptr %475, align 8, !tbaa !9
  store ptr %475, ptr @xx_link, align 8, !tbaa !5
  store ptr %475, ptr @zz_res, align 8, !tbaa !5
  %480 = load ptr, ptr @current_moment, align 8, !tbaa !5
  store ptr %480, ptr @zz_hold, align 8, !tbaa !5
  %481 = icmp eq ptr %480, null
  br i1 %481, label %482, label %483

482:                                              ; preds = %474
  store ptr %457, ptr @zz_hold, align 8, !tbaa !5
  br label %498

483:                                              ; preds = %474
  %484 = load ptr, ptr %480, align 8, !tbaa !9
  store ptr %484, ptr @zz_tmp, align 8, !tbaa !5
  %485 = load ptr, ptr %475, align 8, !tbaa !9
  store ptr %485, ptr %480, align 8, !tbaa !9
  %486 = load ptr, ptr @zz_hold, align 8, !tbaa !5
  %487 = load ptr, ptr @zz_res, align 8, !tbaa !5
  %488 = load ptr, ptr %487, align 8, !tbaa !9
  %489 = getelementptr inbounds %struct.LIST, ptr %488, i64 0, i32 1
  store ptr %486, ptr %489, align 8, !tbaa !9
  %490 = load ptr, ptr @zz_tmp, align 8, !tbaa !5
  store ptr %490, ptr %487, align 8, !tbaa !9
  %491 = load ptr, ptr @zz_res, align 8, !tbaa !5
  %492 = getelementptr inbounds %struct.LIST, ptr %490, i64 0, i32 1
  store ptr %491, ptr %492, align 8, !tbaa !9
  %493 = load ptr, ptr @xx_link, align 8, !tbaa !5
  store ptr %493, ptr @zz_res, align 8, !tbaa !5
  store ptr %457, ptr @zz_hold, align 8, !tbaa !5
  %494 = icmp eq ptr %493, null
  br i1 %494, label %506, label %495

495:                                              ; preds = %483
  %496 = getelementptr inbounds [2 x %struct.LIST], ptr %493, i64 0, i64 1
  %497 = load ptr, ptr %496, align 8, !tbaa !9
  br label %498

498:                                              ; preds = %495, %482
  %499 = phi ptr [ %475, %482 ], [ %497, %495 ]
  %500 = phi ptr [ %475, %482 ], [ %493, %495 ]
  %501 = load ptr, ptr %459, align 8, !tbaa !9
  store ptr %501, ptr @zz_tmp, align 8, !tbaa !5
  %502 = getelementptr inbounds [2 x %struct.LIST], ptr %500, i64 0, i64 1
  store ptr %499, ptr %459, align 8, !tbaa !9
  %503 = load ptr, ptr %502, align 8, !tbaa !9
  %504 = getelementptr inbounds [2 x %struct.LIST], ptr %503, i64 0, i64 1, i32 1
  store ptr %457, ptr %504, align 8, !tbaa !9
  store ptr %501, ptr %502, align 8, !tbaa !9
  %505 = getelementptr inbounds [2 x %struct.LIST], ptr %501, i64 0, i64 1, i32 1
  store ptr %500, ptr %505, align 8, !tbaa !9
  br label %506

506:                                              ; preds = %483, %498
  %507 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %508 = call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull %2, ptr noundef %507) #7
  %509 = load i8, ptr @zz_lengths, align 1, !tbaa !9
  %510 = zext i8 %509 to i32
  store i32 %510, ptr @zz_size, align 4, !tbaa !10
  %511 = zext i8 %509 to i64
  %512 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %511
  %513 = load ptr, ptr %512, align 8, !tbaa !5
  %514 = icmp eq ptr %513, null
  br i1 %514, label %515, label %518

515:                                              ; preds = %506
  %516 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %517 = call ptr @GetMemory(i32 noundef %510, ptr noundef %516) #7
  br label %520

518:                                              ; preds = %506
  store ptr %513, ptr @zz_hold, align 8, !tbaa !5
  %519 = load ptr, ptr %513, align 8, !tbaa !9
  store ptr %519, ptr %512, align 8, !tbaa !5
  br label %520

520:                                              ; preds = %515, %518
  %521 = phi ptr [ %517, %515 ], [ %513, %518 ]
  %522 = getelementptr inbounds %struct.word_type, ptr %521, i64 0, i32 1
  store i8 0, ptr %522, align 8, !tbaa !9
  %523 = getelementptr inbounds [2 x %struct.LIST], ptr %521, i64 0, i64 1, i32 1
  store ptr %521, ptr %523, align 8, !tbaa !9
  %524 = getelementptr inbounds [2 x %struct.LIST], ptr %521, i64 0, i64 1
  store ptr %521, ptr %524, align 8, !tbaa !9
  %525 = getelementptr inbounds %struct.LIST, ptr %521, i64 0, i32 1
  store ptr %521, ptr %525, align 8, !tbaa !9
  store ptr %521, ptr %521, align 8, !tbaa !9
  store ptr %521, ptr @xx_link, align 8, !tbaa !5
  store ptr %521, ptr @zz_res, align 8, !tbaa !5
  store ptr %457, ptr @zz_hold, align 8, !tbaa !5
  %526 = load ptr, ptr %457, align 8, !tbaa !9
  store ptr %526, ptr @zz_tmp, align 8, !tbaa !5
  %527 = load ptr, ptr %521, align 8, !tbaa !9
  store ptr %527, ptr %457, align 8, !tbaa !9
  %528 = load ptr, ptr @zz_hold, align 8, !tbaa !5
  %529 = load ptr, ptr @zz_res, align 8, !tbaa !5
  %530 = load ptr, ptr %529, align 8, !tbaa !9
  %531 = getelementptr inbounds %struct.LIST, ptr %530, i64 0, i32 1
  store ptr %528, ptr %531, align 8, !tbaa !9
  %532 = load ptr, ptr @zz_tmp, align 8, !tbaa !5
  store ptr %532, ptr %529, align 8, !tbaa !9
  %533 = load ptr, ptr @zz_res, align 8, !tbaa !5
  %534 = getelementptr inbounds %struct.LIST, ptr %532, i64 0, i32 1
  store ptr %533, ptr %534, align 8, !tbaa !9
  %535 = load ptr, ptr @xx_link, align 8, !tbaa !5
  store ptr %535, ptr @zz_res, align 8, !tbaa !5
  store ptr %508, ptr @zz_hold, align 8, !tbaa !5
  %536 = icmp eq ptr %508, null
  %537 = icmp eq ptr %535, null
  %538 = select i1 %536, i1 true, i1 %537
  br i1 %538, label %546, label %539

539:                                              ; preds = %520
  %540 = getelementptr inbounds [2 x %struct.LIST], ptr %508, i64 0, i64 1
  %541 = load ptr, ptr %540, align 8, !tbaa !9
  store ptr %541, ptr @zz_tmp, align 8, !tbaa !5
  %542 = getelementptr inbounds [2 x %struct.LIST], ptr %535, i64 0, i64 1
  %543 = load ptr, ptr %542, align 8, !tbaa !9
  store ptr %543, ptr %540, align 8, !tbaa !9
  %544 = getelementptr inbounds [2 x %struct.LIST], ptr %543, i64 0, i64 1, i32 1
  store ptr %508, ptr %544, align 8, !tbaa !9
  store ptr %541, ptr %542, align 8, !tbaa !9
  %545 = getelementptr inbounds [2 x %struct.LIST], ptr %541, i64 0, i64 1, i32 1
  store ptr %535, ptr %545, align 8, !tbaa !9
  br label %546

546:                                              ; preds = %520, %539
  %547 = getelementptr inbounds %struct.tm, ptr %89, i64 0, i32 3
  %548 = load i32, ptr %547, align 4, !tbaa !17
  %549 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.18, i32 noundef %548) #7
  %550 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 10), align 1, !tbaa !9
  %551 = zext i8 %550 to i32
  store i32 %551, ptr @zz_size, align 4, !tbaa !10
  %552 = zext i8 %550 to i64
  %553 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %552
  %554 = load ptr, ptr %553, align 8, !tbaa !5
  %555 = icmp eq ptr %554, null
  br i1 %555, label %556, label %559

556:                                              ; preds = %546
  %557 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %558 = call ptr @GetMemory(i32 noundef %551, ptr noundef %557) #7
  store ptr %558, ptr @zz_hold, align 8, !tbaa !5
  br label %561

559:                                              ; preds = %546
  store ptr %554, ptr @zz_hold, align 8, !tbaa !5
  %560 = load ptr, ptr %554, align 8, !tbaa !9
  store ptr %560, ptr %553, align 8, !tbaa !5
  br label %561

561:                                              ; preds = %556, %559
  %562 = phi ptr [ %558, %556 ], [ %554, %559 ]
  %563 = getelementptr inbounds %struct.word_type, ptr %562, i64 0, i32 1
  store i8 10, ptr %563, align 8, !tbaa !9
  %564 = getelementptr inbounds [2 x %struct.LIST], ptr %562, i64 0, i64 1
  %565 = getelementptr inbounds [2 x %struct.LIST], ptr %562, i64 0, i64 1, i32 1
  store ptr %562, ptr %565, align 8, !tbaa !9
  store ptr %562, ptr %564, align 8, !tbaa !9
  %566 = getelementptr inbounds %struct.LIST, ptr %562, i64 0, i32 1
  store ptr %562, ptr %566, align 8, !tbaa !9
  store ptr %562, ptr %562, align 8, !tbaa !9
  %567 = getelementptr inbounds %struct.closure_type, ptr %562, i64 0, i32 5
  store ptr %37, ptr %567, align 8, !tbaa !9
  %568 = load i8, ptr @zz_lengths, align 1, !tbaa !9
  %569 = zext i8 %568 to i32
  store i32 %569, ptr @zz_size, align 4, !tbaa !10
  %570 = zext i8 %568 to i64
  %571 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %570
  %572 = load ptr, ptr %571, align 8, !tbaa !5
  %573 = icmp eq ptr %572, null
  br i1 %573, label %574, label %577

574:                                              ; preds = %561
  %575 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %576 = call ptr @GetMemory(i32 noundef %569, ptr noundef %575) #7
  br label %579

577:                                              ; preds = %561
  store ptr %572, ptr @zz_hold, align 8, !tbaa !5
  %578 = load ptr, ptr %572, align 8, !tbaa !9
  store ptr %578, ptr %571, align 8, !tbaa !5
  br label %579

579:                                              ; preds = %574, %577
  %580 = phi ptr [ %576, %574 ], [ %572, %577 ]
  %581 = getelementptr inbounds %struct.word_type, ptr %580, i64 0, i32 1
  store i8 0, ptr %581, align 8, !tbaa !9
  %582 = getelementptr inbounds [2 x %struct.LIST], ptr %580, i64 0, i64 1, i32 1
  store ptr %580, ptr %582, align 8, !tbaa !9
  %583 = getelementptr inbounds [2 x %struct.LIST], ptr %580, i64 0, i64 1
  store ptr %580, ptr %583, align 8, !tbaa !9
  %584 = getelementptr inbounds %struct.LIST, ptr %580, i64 0, i32 1
  store ptr %580, ptr %584, align 8, !tbaa !9
  store ptr %580, ptr %580, align 8, !tbaa !9
  store ptr %580, ptr @xx_link, align 8, !tbaa !5
  store ptr %580, ptr @zz_res, align 8, !tbaa !5
  %585 = load ptr, ptr @current_moment, align 8, !tbaa !5
  store ptr %585, ptr @zz_hold, align 8, !tbaa !5
  %586 = icmp eq ptr %585, null
  br i1 %586, label %587, label %588

587:                                              ; preds = %579
  store ptr %562, ptr @zz_hold, align 8, !tbaa !5
  br label %603

588:                                              ; preds = %579
  %589 = load ptr, ptr %585, align 8, !tbaa !9
  store ptr %589, ptr @zz_tmp, align 8, !tbaa !5
  %590 = load ptr, ptr %580, align 8, !tbaa !9
  store ptr %590, ptr %585, align 8, !tbaa !9
  %591 = load ptr, ptr @zz_hold, align 8, !tbaa !5
  %592 = load ptr, ptr @zz_res, align 8, !tbaa !5
  %593 = load ptr, ptr %592, align 8, !tbaa !9
  %594 = getelementptr inbounds %struct.LIST, ptr %593, i64 0, i32 1
  store ptr %591, ptr %594, align 8, !tbaa !9
  %595 = load ptr, ptr @zz_tmp, align 8, !tbaa !5
  store ptr %595, ptr %592, align 8, !tbaa !9
  %596 = load ptr, ptr @zz_res, align 8, !tbaa !5
  %597 = getelementptr inbounds %struct.LIST, ptr %595, i64 0, i32 1
  store ptr %596, ptr %597, align 8, !tbaa !9
  %598 = load ptr, ptr @xx_link, align 8, !tbaa !5
  store ptr %598, ptr @zz_res, align 8, !tbaa !5
  store ptr %562, ptr @zz_hold, align 8, !tbaa !5
  %599 = icmp eq ptr %598, null
  br i1 %599, label %611, label %600

600:                                              ; preds = %588
  %601 = getelementptr inbounds [2 x %struct.LIST], ptr %598, i64 0, i64 1
  %602 = load ptr, ptr %601, align 8, !tbaa !9
  br label %603

603:                                              ; preds = %600, %587
  %604 = phi ptr [ %580, %587 ], [ %602, %600 ]
  %605 = phi ptr [ %580, %587 ], [ %598, %600 ]
  %606 = load ptr, ptr %564, align 8, !tbaa !9
  store ptr %606, ptr @zz_tmp, align 8, !tbaa !5
  %607 = getelementptr inbounds [2 x %struct.LIST], ptr %605, i64 0, i64 1
  store ptr %604, ptr %564, align 8, !tbaa !9
  %608 = load ptr, ptr %607, align 8, !tbaa !9
  %609 = getelementptr inbounds [2 x %struct.LIST], ptr %608, i64 0, i64 1, i32 1
  store ptr %562, ptr %609, align 8, !tbaa !9
  store ptr %606, ptr %607, align 8, !tbaa !9
  %610 = getelementptr inbounds [2 x %struct.LIST], ptr %606, i64 0, i64 1, i32 1
  store ptr %605, ptr %610, align 8, !tbaa !9
  br label %611

611:                                              ; preds = %588, %603
  %612 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %613 = call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull %2, ptr noundef %612) #7
  %614 = load i8, ptr @zz_lengths, align 1, !tbaa !9
  %615 = zext i8 %614 to i32
  store i32 %615, ptr @zz_size, align 4, !tbaa !10
  %616 = zext i8 %614 to i64
  %617 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %616
  %618 = load ptr, ptr %617, align 8, !tbaa !5
  %619 = icmp eq ptr %618, null
  br i1 %619, label %620, label %623

620:                                              ; preds = %611
  %621 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %622 = call ptr @GetMemory(i32 noundef %615, ptr noundef %621) #7
  br label %625

623:                                              ; preds = %611
  store ptr %618, ptr @zz_hold, align 8, !tbaa !5
  %624 = load ptr, ptr %618, align 8, !tbaa !9
  store ptr %624, ptr %617, align 8, !tbaa !5
  br label %625

625:                                              ; preds = %620, %623
  %626 = phi ptr [ %622, %620 ], [ %618, %623 ]
  %627 = getelementptr inbounds %struct.word_type, ptr %626, i64 0, i32 1
  store i8 0, ptr %627, align 8, !tbaa !9
  %628 = getelementptr inbounds [2 x %struct.LIST], ptr %626, i64 0, i64 1, i32 1
  store ptr %626, ptr %628, align 8, !tbaa !9
  %629 = getelementptr inbounds [2 x %struct.LIST], ptr %626, i64 0, i64 1
  store ptr %626, ptr %629, align 8, !tbaa !9
  %630 = getelementptr inbounds %struct.LIST, ptr %626, i64 0, i32 1
  store ptr %626, ptr %630, align 8, !tbaa !9
  store ptr %626, ptr %626, align 8, !tbaa !9
  store ptr %626, ptr @xx_link, align 8, !tbaa !5
  store ptr %626, ptr @zz_res, align 8, !tbaa !5
  store ptr %562, ptr @zz_hold, align 8, !tbaa !5
  %631 = load ptr, ptr %562, align 8, !tbaa !9
  store ptr %631, ptr @zz_tmp, align 8, !tbaa !5
  %632 = load ptr, ptr %626, align 8, !tbaa !9
  store ptr %632, ptr %562, align 8, !tbaa !9
  %633 = load ptr, ptr @zz_hold, align 8, !tbaa !5
  %634 = load ptr, ptr @zz_res, align 8, !tbaa !5
  %635 = load ptr, ptr %634, align 8, !tbaa !9
  %636 = getelementptr inbounds %struct.LIST, ptr %635, i64 0, i32 1
  store ptr %633, ptr %636, align 8, !tbaa !9
  %637 = load ptr, ptr @zz_tmp, align 8, !tbaa !5
  store ptr %637, ptr %634, align 8, !tbaa !9
  %638 = load ptr, ptr @zz_res, align 8, !tbaa !5
  %639 = getelementptr inbounds %struct.LIST, ptr %637, i64 0, i32 1
  store ptr %638, ptr %639, align 8, !tbaa !9
  %640 = load ptr, ptr @xx_link, align 8, !tbaa !5
  store ptr %640, ptr @zz_res, align 8, !tbaa !5
  store ptr %613, ptr @zz_hold, align 8, !tbaa !5
  %641 = icmp eq ptr %613, null
  %642 = icmp eq ptr %640, null
  %643 = select i1 %641, i1 true, i1 %642
  br i1 %643, label %651, label %644

644:                                              ; preds = %625
  %645 = getelementptr inbounds [2 x %struct.LIST], ptr %613, i64 0, i64 1
  %646 = load ptr, ptr %645, align 8, !tbaa !9
  store ptr %646, ptr @zz_tmp, align 8, !tbaa !5
  %647 = getelementptr inbounds [2 x %struct.LIST], ptr %640, i64 0, i64 1
  %648 = load ptr, ptr %647, align 8, !tbaa !9
  store ptr %648, ptr %645, align 8, !tbaa !9
  %649 = getelementptr inbounds [2 x %struct.LIST], ptr %648, i64 0, i64 1, i32 1
  store ptr %613, ptr %649, align 8, !tbaa !9
  store ptr %646, ptr %647, align 8, !tbaa !9
  %650 = getelementptr inbounds [2 x %struct.LIST], ptr %646, i64 0, i64 1, i32 1
  store ptr %640, ptr %650, align 8, !tbaa !9
  br label %651

651:                                              ; preds = %625, %644
  %652 = getelementptr inbounds %struct.tm, ptr %89, i64 0, i32 4
  %653 = load i32, ptr %652, align 8, !tbaa !18
  %654 = add nsw i32 %653, 1
  %655 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.18, i32 noundef %654) #7
  %656 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 10), align 1, !tbaa !9
  %657 = zext i8 %656 to i32
  store i32 %657, ptr @zz_size, align 4, !tbaa !10
  %658 = zext i8 %656 to i64
  %659 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %658
  %660 = load ptr, ptr %659, align 8, !tbaa !5
  %661 = icmp eq ptr %660, null
  br i1 %661, label %662, label %665

662:                                              ; preds = %651
  %663 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %664 = call ptr @GetMemory(i32 noundef %657, ptr noundef %663) #7
  store ptr %664, ptr @zz_hold, align 8, !tbaa !5
  br label %667

665:                                              ; preds = %651
  store ptr %660, ptr @zz_hold, align 8, !tbaa !5
  %666 = load ptr, ptr %660, align 8, !tbaa !9
  store ptr %666, ptr %659, align 8, !tbaa !5
  br label %667

667:                                              ; preds = %662, %665
  %668 = phi ptr [ %664, %662 ], [ %660, %665 ]
  %669 = getelementptr inbounds %struct.word_type, ptr %668, i64 0, i32 1
  store i8 10, ptr %669, align 8, !tbaa !9
  %670 = getelementptr inbounds [2 x %struct.LIST], ptr %668, i64 0, i64 1
  %671 = getelementptr inbounds [2 x %struct.LIST], ptr %668, i64 0, i64 1, i32 1
  store ptr %668, ptr %671, align 8, !tbaa !9
  store ptr %668, ptr %670, align 8, !tbaa !9
  %672 = getelementptr inbounds %struct.LIST, ptr %668, i64 0, i32 1
  store ptr %668, ptr %672, align 8, !tbaa !9
  store ptr %668, ptr %668, align 8, !tbaa !9
  %673 = getelementptr inbounds %struct.closure_type, ptr %668, i64 0, i32 5
  store ptr %44, ptr %673, align 8, !tbaa !9
  %674 = load i8, ptr @zz_lengths, align 1, !tbaa !9
  %675 = zext i8 %674 to i32
  store i32 %675, ptr @zz_size, align 4, !tbaa !10
  %676 = zext i8 %674 to i64
  %677 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %676
  %678 = load ptr, ptr %677, align 8, !tbaa !5
  %679 = icmp eq ptr %678, null
  br i1 %679, label %680, label %683

680:                                              ; preds = %667
  %681 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %682 = call ptr @GetMemory(i32 noundef %675, ptr noundef %681) #7
  br label %685

683:                                              ; preds = %667
  store ptr %678, ptr @zz_hold, align 8, !tbaa !5
  %684 = load ptr, ptr %678, align 8, !tbaa !9
  store ptr %684, ptr %677, align 8, !tbaa !5
  br label %685

685:                                              ; preds = %680, %683
  %686 = phi ptr [ %682, %680 ], [ %678, %683 ]
  %687 = getelementptr inbounds %struct.word_type, ptr %686, i64 0, i32 1
  store i8 0, ptr %687, align 8, !tbaa !9
  %688 = getelementptr inbounds [2 x %struct.LIST], ptr %686, i64 0, i64 1, i32 1
  store ptr %686, ptr %688, align 8, !tbaa !9
  %689 = getelementptr inbounds [2 x %struct.LIST], ptr %686, i64 0, i64 1
  store ptr %686, ptr %689, align 8, !tbaa !9
  %690 = getelementptr inbounds %struct.LIST, ptr %686, i64 0, i32 1
  store ptr %686, ptr %690, align 8, !tbaa !9
  store ptr %686, ptr %686, align 8, !tbaa !9
  store ptr %686, ptr @xx_link, align 8, !tbaa !5
  store ptr %686, ptr @zz_res, align 8, !tbaa !5
  %691 = load ptr, ptr @current_moment, align 8, !tbaa !5
  store ptr %691, ptr @zz_hold, align 8, !tbaa !5
  %692 = icmp eq ptr %691, null
  br i1 %692, label %693, label %694

693:                                              ; preds = %685
  store ptr %668, ptr @zz_hold, align 8, !tbaa !5
  br label %709

694:                                              ; preds = %685
  %695 = load ptr, ptr %691, align 8, !tbaa !9
  store ptr %695, ptr @zz_tmp, align 8, !tbaa !5
  %696 = load ptr, ptr %686, align 8, !tbaa !9
  store ptr %696, ptr %691, align 8, !tbaa !9
  %697 = load ptr, ptr @zz_hold, align 8, !tbaa !5
  %698 = load ptr, ptr @zz_res, align 8, !tbaa !5
  %699 = load ptr, ptr %698, align 8, !tbaa !9
  %700 = getelementptr inbounds %struct.LIST, ptr %699, i64 0, i32 1
  store ptr %697, ptr %700, align 8, !tbaa !9
  %701 = load ptr, ptr @zz_tmp, align 8, !tbaa !5
  store ptr %701, ptr %698, align 8, !tbaa !9
  %702 = load ptr, ptr @zz_res, align 8, !tbaa !5
  %703 = getelementptr inbounds %struct.LIST, ptr %701, i64 0, i32 1
  store ptr %702, ptr %703, align 8, !tbaa !9
  %704 = load ptr, ptr @xx_link, align 8, !tbaa !5
  store ptr %704, ptr @zz_res, align 8, !tbaa !5
  store ptr %668, ptr @zz_hold, align 8, !tbaa !5
  %705 = icmp eq ptr %704, null
  br i1 %705, label %717, label %706

706:                                              ; preds = %694
  %707 = getelementptr inbounds [2 x %struct.LIST], ptr %704, i64 0, i64 1
  %708 = load ptr, ptr %707, align 8, !tbaa !9
  br label %709

709:                                              ; preds = %706, %693
  %710 = phi ptr [ %686, %693 ], [ %708, %706 ]
  %711 = phi ptr [ %686, %693 ], [ %704, %706 ]
  %712 = load ptr, ptr %670, align 8, !tbaa !9
  store ptr %712, ptr @zz_tmp, align 8, !tbaa !5
  %713 = getelementptr inbounds [2 x %struct.LIST], ptr %711, i64 0, i64 1
  store ptr %710, ptr %670, align 8, !tbaa !9
  %714 = load ptr, ptr %713, align 8, !tbaa !9
  %715 = getelementptr inbounds [2 x %struct.LIST], ptr %714, i64 0, i64 1, i32 1
  store ptr %668, ptr %715, align 8, !tbaa !9
  store ptr %712, ptr %713, align 8, !tbaa !9
  %716 = getelementptr inbounds [2 x %struct.LIST], ptr %712, i64 0, i64 1, i32 1
  store ptr %711, ptr %716, align 8, !tbaa !9
  br label %717

717:                                              ; preds = %694, %709
  %718 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %719 = call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull %2, ptr noundef %718) #7
  %720 = load i8, ptr @zz_lengths, align 1, !tbaa !9
  %721 = zext i8 %720 to i32
  store i32 %721, ptr @zz_size, align 4, !tbaa !10
  %722 = zext i8 %720 to i64
  %723 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %722
  %724 = load ptr, ptr %723, align 8, !tbaa !5
  %725 = icmp eq ptr %724, null
  br i1 %725, label %726, label %729

726:                                              ; preds = %717
  %727 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %728 = call ptr @GetMemory(i32 noundef %721, ptr noundef %727) #7
  br label %731

729:                                              ; preds = %717
  store ptr %724, ptr @zz_hold, align 8, !tbaa !5
  %730 = load ptr, ptr %724, align 8, !tbaa !9
  store ptr %730, ptr %723, align 8, !tbaa !5
  br label %731

731:                                              ; preds = %726, %729
  %732 = phi ptr [ %728, %726 ], [ %724, %729 ]
  %733 = getelementptr inbounds %struct.word_type, ptr %732, i64 0, i32 1
  store i8 0, ptr %733, align 8, !tbaa !9
  %734 = getelementptr inbounds [2 x %struct.LIST], ptr %732, i64 0, i64 1, i32 1
  store ptr %732, ptr %734, align 8, !tbaa !9
  %735 = getelementptr inbounds [2 x %struct.LIST], ptr %732, i64 0, i64 1
  store ptr %732, ptr %735, align 8, !tbaa !9
  %736 = getelementptr inbounds %struct.LIST, ptr %732, i64 0, i32 1
  store ptr %732, ptr %736, align 8, !tbaa !9
  store ptr %732, ptr %732, align 8, !tbaa !9
  store ptr %732, ptr @xx_link, align 8, !tbaa !5
  store ptr %732, ptr @zz_res, align 8, !tbaa !5
  store ptr %668, ptr @zz_hold, align 8, !tbaa !5
  %737 = load ptr, ptr %668, align 8, !tbaa !9
  store ptr %737, ptr @zz_tmp, align 8, !tbaa !5
  %738 = load ptr, ptr %732, align 8, !tbaa !9
  store ptr %738, ptr %668, align 8, !tbaa !9
  %739 = load ptr, ptr @zz_hold, align 8, !tbaa !5
  %740 = load ptr, ptr @zz_res, align 8, !tbaa !5
  %741 = load ptr, ptr %740, align 8, !tbaa !9
  %742 = getelementptr inbounds %struct.LIST, ptr %741, i64 0, i32 1
  store ptr %739, ptr %742, align 8, !tbaa !9
  %743 = load ptr, ptr @zz_tmp, align 8, !tbaa !5
  store ptr %743, ptr %740, align 8, !tbaa !9
  %744 = load ptr, ptr @zz_res, align 8, !tbaa !5
  %745 = getelementptr inbounds %struct.LIST, ptr %743, i64 0, i32 1
  store ptr %744, ptr %745, align 8, !tbaa !9
  %746 = load ptr, ptr @xx_link, align 8, !tbaa !5
  store ptr %746, ptr @zz_res, align 8, !tbaa !5
  store ptr %719, ptr @zz_hold, align 8, !tbaa !5
  %747 = icmp eq ptr %719, null
  %748 = icmp eq ptr %746, null
  %749 = select i1 %747, i1 true, i1 %748
  br i1 %749, label %757, label %750

750:                                              ; preds = %731
  %751 = getelementptr inbounds [2 x %struct.LIST], ptr %719, i64 0, i64 1
  %752 = load ptr, ptr %751, align 8, !tbaa !9
  store ptr %752, ptr @zz_tmp, align 8, !tbaa !5
  %753 = getelementptr inbounds [2 x %struct.LIST], ptr %746, i64 0, i64 1
  %754 = load ptr, ptr %753, align 8, !tbaa !9
  store ptr %754, ptr %751, align 8, !tbaa !9
  %755 = getelementptr inbounds [2 x %struct.LIST], ptr %754, i64 0, i64 1, i32 1
  store ptr %719, ptr %755, align 8, !tbaa !9
  store ptr %752, ptr %753, align 8, !tbaa !9
  %756 = getelementptr inbounds [2 x %struct.LIST], ptr %752, i64 0, i64 1, i32 1
  store ptr %746, ptr %756, align 8, !tbaa !9
  br label %757

757:                                              ; preds = %731, %750
  %758 = getelementptr inbounds %struct.tm, ptr %89, i64 0, i32 5
  %759 = load i32, ptr %758, align 4, !tbaa !19
  %760 = srem i32 %759, 100
  %761 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %760) #7
  %762 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 10), align 1, !tbaa !9
  %763 = zext i8 %762 to i32
  store i32 %763, ptr @zz_size, align 4, !tbaa !10
  %764 = zext i8 %762 to i64
  %765 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %764
  %766 = load ptr, ptr %765, align 8, !tbaa !5
  %767 = icmp eq ptr %766, null
  br i1 %767, label %768, label %771

768:                                              ; preds = %757
  %769 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %770 = call ptr @GetMemory(i32 noundef %763, ptr noundef %769) #7
  store ptr %770, ptr @zz_hold, align 8, !tbaa !5
  br label %773

771:                                              ; preds = %757
  store ptr %766, ptr @zz_hold, align 8, !tbaa !5
  %772 = load ptr, ptr %766, align 8, !tbaa !9
  store ptr %772, ptr %765, align 8, !tbaa !5
  br label %773

773:                                              ; preds = %768, %771
  %774 = phi ptr [ %770, %768 ], [ %766, %771 ]
  %775 = getelementptr inbounds %struct.word_type, ptr %774, i64 0, i32 1
  store i8 10, ptr %775, align 8, !tbaa !9
  %776 = getelementptr inbounds [2 x %struct.LIST], ptr %774, i64 0, i64 1
  %777 = getelementptr inbounds [2 x %struct.LIST], ptr %774, i64 0, i64 1, i32 1
  store ptr %774, ptr %777, align 8, !tbaa !9
  store ptr %774, ptr %776, align 8, !tbaa !9
  %778 = getelementptr inbounds %struct.LIST, ptr %774, i64 0, i32 1
  store ptr %774, ptr %778, align 8, !tbaa !9
  store ptr %774, ptr %774, align 8, !tbaa !9
  %779 = getelementptr inbounds %struct.closure_type, ptr %774, i64 0, i32 5
  store ptr %51, ptr %779, align 8, !tbaa !9
  %780 = load i8, ptr @zz_lengths, align 1, !tbaa !9
  %781 = zext i8 %780 to i32
  store i32 %781, ptr @zz_size, align 4, !tbaa !10
  %782 = zext i8 %780 to i64
  %783 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %782
  %784 = load ptr, ptr %783, align 8, !tbaa !5
  %785 = icmp eq ptr %784, null
  br i1 %785, label %786, label %789

786:                                              ; preds = %773
  %787 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %788 = call ptr @GetMemory(i32 noundef %781, ptr noundef %787) #7
  br label %791

789:                                              ; preds = %773
  store ptr %784, ptr @zz_hold, align 8, !tbaa !5
  %790 = load ptr, ptr %784, align 8, !tbaa !9
  store ptr %790, ptr %783, align 8, !tbaa !5
  br label %791

791:                                              ; preds = %786, %789
  %792 = phi ptr [ %788, %786 ], [ %784, %789 ]
  %793 = getelementptr inbounds %struct.word_type, ptr %792, i64 0, i32 1
  store i8 0, ptr %793, align 8, !tbaa !9
  %794 = getelementptr inbounds [2 x %struct.LIST], ptr %792, i64 0, i64 1, i32 1
  store ptr %792, ptr %794, align 8, !tbaa !9
  %795 = getelementptr inbounds [2 x %struct.LIST], ptr %792, i64 0, i64 1
  store ptr %792, ptr %795, align 8, !tbaa !9
  %796 = getelementptr inbounds %struct.LIST, ptr %792, i64 0, i32 1
  store ptr %792, ptr %796, align 8, !tbaa !9
  store ptr %792, ptr %792, align 8, !tbaa !9
  store ptr %792, ptr @xx_link, align 8, !tbaa !5
  store ptr %792, ptr @zz_res, align 8, !tbaa !5
  %797 = load ptr, ptr @current_moment, align 8, !tbaa !5
  store ptr %797, ptr @zz_hold, align 8, !tbaa !5
  %798 = icmp eq ptr %797, null
  br i1 %798, label %799, label %800

799:                                              ; preds = %791
  store ptr %774, ptr @zz_hold, align 8, !tbaa !5
  br label %815

800:                                              ; preds = %791
  %801 = load ptr, ptr %797, align 8, !tbaa !9
  store ptr %801, ptr @zz_tmp, align 8, !tbaa !5
  %802 = load ptr, ptr %792, align 8, !tbaa !9
  store ptr %802, ptr %797, align 8, !tbaa !9
  %803 = load ptr, ptr @zz_hold, align 8, !tbaa !5
  %804 = load ptr, ptr @zz_res, align 8, !tbaa !5
  %805 = load ptr, ptr %804, align 8, !tbaa !9
  %806 = getelementptr inbounds %struct.LIST, ptr %805, i64 0, i32 1
  store ptr %803, ptr %806, align 8, !tbaa !9
  %807 = load ptr, ptr @zz_tmp, align 8, !tbaa !5
  store ptr %807, ptr %804, align 8, !tbaa !9
  %808 = load ptr, ptr @zz_res, align 8, !tbaa !5
  %809 = getelementptr inbounds %struct.LIST, ptr %807, i64 0, i32 1
  store ptr %808, ptr %809, align 8, !tbaa !9
  %810 = load ptr, ptr @xx_link, align 8, !tbaa !5
  store ptr %810, ptr @zz_res, align 8, !tbaa !5
  store ptr %774, ptr @zz_hold, align 8, !tbaa !5
  %811 = icmp eq ptr %810, null
  br i1 %811, label %823, label %812

812:                                              ; preds = %800
  %813 = getelementptr inbounds [2 x %struct.LIST], ptr %810, i64 0, i64 1
  %814 = load ptr, ptr %813, align 8, !tbaa !9
  br label %815

815:                                              ; preds = %812, %799
  %816 = phi ptr [ %792, %799 ], [ %814, %812 ]
  %817 = phi ptr [ %792, %799 ], [ %810, %812 ]
  %818 = load ptr, ptr %776, align 8, !tbaa !9
  store ptr %818, ptr @zz_tmp, align 8, !tbaa !5
  %819 = getelementptr inbounds [2 x %struct.LIST], ptr %817, i64 0, i64 1
  store ptr %816, ptr %776, align 8, !tbaa !9
  %820 = load ptr, ptr %819, align 8, !tbaa !9
  %821 = getelementptr inbounds [2 x %struct.LIST], ptr %820, i64 0, i64 1, i32 1
  store ptr %774, ptr %821, align 8, !tbaa !9
  store ptr %818, ptr %819, align 8, !tbaa !9
  %822 = getelementptr inbounds [2 x %struct.LIST], ptr %818, i64 0, i64 1, i32 1
  store ptr %817, ptr %822, align 8, !tbaa !9
  br label %823

823:                                              ; preds = %800, %815
  %824 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %825 = call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull %2, ptr noundef %824) #7
  %826 = load i8, ptr @zz_lengths, align 1, !tbaa !9
  %827 = zext i8 %826 to i32
  store i32 %827, ptr @zz_size, align 4, !tbaa !10
  %828 = zext i8 %826 to i64
  %829 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %828
  %830 = load ptr, ptr %829, align 8, !tbaa !5
  %831 = icmp eq ptr %830, null
  br i1 %831, label %832, label %835

832:                                              ; preds = %823
  %833 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %834 = call ptr @GetMemory(i32 noundef %827, ptr noundef %833) #7
  br label %837

835:                                              ; preds = %823
  store ptr %830, ptr @zz_hold, align 8, !tbaa !5
  %836 = load ptr, ptr %830, align 8, !tbaa !9
  store ptr %836, ptr %829, align 8, !tbaa !5
  br label %837

837:                                              ; preds = %832, %835
  %838 = phi ptr [ %834, %832 ], [ %830, %835 ]
  %839 = getelementptr inbounds %struct.word_type, ptr %838, i64 0, i32 1
  store i8 0, ptr %839, align 8, !tbaa !9
  %840 = getelementptr inbounds [2 x %struct.LIST], ptr %838, i64 0, i64 1, i32 1
  store ptr %838, ptr %840, align 8, !tbaa !9
  %841 = getelementptr inbounds [2 x %struct.LIST], ptr %838, i64 0, i64 1
  store ptr %838, ptr %841, align 8, !tbaa !9
  %842 = getelementptr inbounds %struct.LIST, ptr %838, i64 0, i32 1
  store ptr %838, ptr %842, align 8, !tbaa !9
  store ptr %838, ptr %838, align 8, !tbaa !9
  store ptr %838, ptr @xx_link, align 8, !tbaa !5
  store ptr %838, ptr @zz_res, align 8, !tbaa !5
  store ptr %774, ptr @zz_hold, align 8, !tbaa !5
  %843 = load ptr, ptr %774, align 8, !tbaa !9
  store ptr %843, ptr @zz_tmp, align 8, !tbaa !5
  %844 = load ptr, ptr %838, align 8, !tbaa !9
  store ptr %844, ptr %774, align 8, !tbaa !9
  %845 = load ptr, ptr @zz_hold, align 8, !tbaa !5
  %846 = load ptr, ptr @zz_res, align 8, !tbaa !5
  %847 = load ptr, ptr %846, align 8, !tbaa !9
  %848 = getelementptr inbounds %struct.LIST, ptr %847, i64 0, i32 1
  store ptr %845, ptr %848, align 8, !tbaa !9
  %849 = load ptr, ptr @zz_tmp, align 8, !tbaa !5
  store ptr %849, ptr %846, align 8, !tbaa !9
  %850 = load ptr, ptr @zz_res, align 8, !tbaa !5
  %851 = getelementptr inbounds %struct.LIST, ptr %849, i64 0, i32 1
  store ptr %850, ptr %851, align 8, !tbaa !9
  %852 = load ptr, ptr @xx_link, align 8, !tbaa !5
  store ptr %852, ptr @zz_res, align 8, !tbaa !5
  store ptr %825, ptr @zz_hold, align 8, !tbaa !5
  %853 = icmp eq ptr %825, null
  %854 = icmp eq ptr %852, null
  %855 = select i1 %853, i1 true, i1 %854
  br i1 %855, label %863, label %856

856:                                              ; preds = %837
  %857 = getelementptr inbounds [2 x %struct.LIST], ptr %825, i64 0, i64 1
  %858 = load ptr, ptr %857, align 8, !tbaa !9
  store ptr %858, ptr @zz_tmp, align 8, !tbaa !5
  %859 = getelementptr inbounds [2 x %struct.LIST], ptr %852, i64 0, i64 1
  %860 = load ptr, ptr %859, align 8, !tbaa !9
  store ptr %860, ptr %857, align 8, !tbaa !9
  %861 = getelementptr inbounds [2 x %struct.LIST], ptr %860, i64 0, i64 1, i32 1
  store ptr %825, ptr %861, align 8, !tbaa !9
  store ptr %858, ptr %859, align 8, !tbaa !9
  %862 = getelementptr inbounds [2 x %struct.LIST], ptr %858, i64 0, i64 1, i32 1
  store ptr %852, ptr %862, align 8, !tbaa !9
  br label %863

863:                                              ; preds = %837, %856
  %864 = load i32, ptr %758, align 4, !tbaa !19
  %865 = add nsw i32 %864, 1900
  %866 = sdiv i32 %865, 100
  %867 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.18, i32 noundef %866) #7
  %868 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 10), align 1, !tbaa !9
  %869 = zext i8 %868 to i32
  store i32 %869, ptr @zz_size, align 4, !tbaa !10
  %870 = zext i8 %868 to i64
  %871 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %870
  %872 = load ptr, ptr %871, align 8, !tbaa !5
  %873 = icmp eq ptr %872, null
  br i1 %873, label %874, label %877

874:                                              ; preds = %863
  %875 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %876 = call ptr @GetMemory(i32 noundef %869, ptr noundef %875) #7
  store ptr %876, ptr @zz_hold, align 8, !tbaa !5
  br label %879

877:                                              ; preds = %863
  store ptr %872, ptr @zz_hold, align 8, !tbaa !5
  %878 = load ptr, ptr %872, align 8, !tbaa !9
  store ptr %878, ptr %871, align 8, !tbaa !5
  br label %879

879:                                              ; preds = %874, %877
  %880 = phi ptr [ %876, %874 ], [ %872, %877 ]
  %881 = getelementptr inbounds %struct.word_type, ptr %880, i64 0, i32 1
  store i8 10, ptr %881, align 8, !tbaa !9
  %882 = getelementptr inbounds [2 x %struct.LIST], ptr %880, i64 0, i64 1
  %883 = getelementptr inbounds [2 x %struct.LIST], ptr %880, i64 0, i64 1, i32 1
  store ptr %880, ptr %883, align 8, !tbaa !9
  store ptr %880, ptr %882, align 8, !tbaa !9
  %884 = getelementptr inbounds %struct.LIST, ptr %880, i64 0, i32 1
  store ptr %880, ptr %884, align 8, !tbaa !9
  store ptr %880, ptr %880, align 8, !tbaa !9
  %885 = getelementptr inbounds %struct.closure_type, ptr %880, i64 0, i32 5
  store ptr %58, ptr %885, align 8, !tbaa !9
  %886 = load i8, ptr @zz_lengths, align 1, !tbaa !9
  %887 = zext i8 %886 to i32
  store i32 %887, ptr @zz_size, align 4, !tbaa !10
  %888 = zext i8 %886 to i64
  %889 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %888
  %890 = load ptr, ptr %889, align 8, !tbaa !5
  %891 = icmp eq ptr %890, null
  br i1 %891, label %892, label %895

892:                                              ; preds = %879
  %893 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %894 = call ptr @GetMemory(i32 noundef %887, ptr noundef %893) #7
  br label %897

895:                                              ; preds = %879
  store ptr %890, ptr @zz_hold, align 8, !tbaa !5
  %896 = load ptr, ptr %890, align 8, !tbaa !9
  store ptr %896, ptr %889, align 8, !tbaa !5
  br label %897

897:                                              ; preds = %892, %895
  %898 = phi ptr [ %894, %892 ], [ %890, %895 ]
  %899 = getelementptr inbounds %struct.word_type, ptr %898, i64 0, i32 1
  store i8 0, ptr %899, align 8, !tbaa !9
  %900 = getelementptr inbounds [2 x %struct.LIST], ptr %898, i64 0, i64 1, i32 1
  store ptr %898, ptr %900, align 8, !tbaa !9
  %901 = getelementptr inbounds [2 x %struct.LIST], ptr %898, i64 0, i64 1
  store ptr %898, ptr %901, align 8, !tbaa !9
  %902 = getelementptr inbounds %struct.LIST, ptr %898, i64 0, i32 1
  store ptr %898, ptr %902, align 8, !tbaa !9
  store ptr %898, ptr %898, align 8, !tbaa !9
  store ptr %898, ptr @xx_link, align 8, !tbaa !5
  store ptr %898, ptr @zz_res, align 8, !tbaa !5
  %903 = load ptr, ptr @current_moment, align 8, !tbaa !5
  store ptr %903, ptr @zz_hold, align 8, !tbaa !5
  %904 = icmp eq ptr %903, null
  br i1 %904, label %905, label %906

905:                                              ; preds = %897
  store ptr %880, ptr @zz_hold, align 8, !tbaa !5
  br label %921

906:                                              ; preds = %897
  %907 = load ptr, ptr %903, align 8, !tbaa !9
  store ptr %907, ptr @zz_tmp, align 8, !tbaa !5
  %908 = load ptr, ptr %898, align 8, !tbaa !9
  store ptr %908, ptr %903, align 8, !tbaa !9
  %909 = load ptr, ptr @zz_hold, align 8, !tbaa !5
  %910 = load ptr, ptr @zz_res, align 8, !tbaa !5
  %911 = load ptr, ptr %910, align 8, !tbaa !9
  %912 = getelementptr inbounds %struct.LIST, ptr %911, i64 0, i32 1
  store ptr %909, ptr %912, align 8, !tbaa !9
  %913 = load ptr, ptr @zz_tmp, align 8, !tbaa !5
  store ptr %913, ptr %910, align 8, !tbaa !9
  %914 = load ptr, ptr @zz_res, align 8, !tbaa !5
  %915 = getelementptr inbounds %struct.LIST, ptr %913, i64 0, i32 1
  store ptr %914, ptr %915, align 8, !tbaa !9
  %916 = load ptr, ptr @xx_link, align 8, !tbaa !5
  store ptr %916, ptr @zz_res, align 8, !tbaa !5
  store ptr %880, ptr @zz_hold, align 8, !tbaa !5
  %917 = icmp eq ptr %916, null
  br i1 %917, label %929, label %918

918:                                              ; preds = %906
  %919 = getelementptr inbounds [2 x %struct.LIST], ptr %916, i64 0, i64 1
  %920 = load ptr, ptr %919, align 8, !tbaa !9
  br label %921

921:                                              ; preds = %918, %905
  %922 = phi ptr [ %898, %905 ], [ %920, %918 ]
  %923 = phi ptr [ %898, %905 ], [ %916, %918 ]
  %924 = load ptr, ptr %882, align 8, !tbaa !9
  store ptr %924, ptr @zz_tmp, align 8, !tbaa !5
  %925 = getelementptr inbounds [2 x %struct.LIST], ptr %923, i64 0, i64 1
  store ptr %922, ptr %882, align 8, !tbaa !9
  %926 = load ptr, ptr %925, align 8, !tbaa !9
  %927 = getelementptr inbounds [2 x %struct.LIST], ptr %926, i64 0, i64 1, i32 1
  store ptr %880, ptr %927, align 8, !tbaa !9
  store ptr %924, ptr %925, align 8, !tbaa !9
  %928 = getelementptr inbounds [2 x %struct.LIST], ptr %924, i64 0, i64 1, i32 1
  store ptr %923, ptr %928, align 8, !tbaa !9
  br label %929

929:                                              ; preds = %906, %921
  %930 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %931 = call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull %2, ptr noundef %930) #7
  %932 = load i8, ptr @zz_lengths, align 1, !tbaa !9
  %933 = zext i8 %932 to i32
  store i32 %933, ptr @zz_size, align 4, !tbaa !10
  %934 = zext i8 %932 to i64
  %935 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %934
  %936 = load ptr, ptr %935, align 8, !tbaa !5
  %937 = icmp eq ptr %936, null
  br i1 %937, label %938, label %941

938:                                              ; preds = %929
  %939 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %940 = call ptr @GetMemory(i32 noundef %933, ptr noundef %939) #7
  br label %943

941:                                              ; preds = %929
  store ptr %936, ptr @zz_hold, align 8, !tbaa !5
  %942 = load ptr, ptr %936, align 8, !tbaa !9
  store ptr %942, ptr %935, align 8, !tbaa !5
  br label %943

943:                                              ; preds = %938, %941
  %944 = phi ptr [ %940, %938 ], [ %936, %941 ]
  %945 = getelementptr inbounds %struct.word_type, ptr %944, i64 0, i32 1
  store i8 0, ptr %945, align 8, !tbaa !9
  %946 = getelementptr inbounds [2 x %struct.LIST], ptr %944, i64 0, i64 1, i32 1
  store ptr %944, ptr %946, align 8, !tbaa !9
  %947 = getelementptr inbounds [2 x %struct.LIST], ptr %944, i64 0, i64 1
  store ptr %944, ptr %947, align 8, !tbaa !9
  %948 = getelementptr inbounds %struct.LIST, ptr %944, i64 0, i32 1
  store ptr %944, ptr %948, align 8, !tbaa !9
  store ptr %944, ptr %944, align 8, !tbaa !9
  store ptr %944, ptr @xx_link, align 8, !tbaa !5
  store ptr %944, ptr @zz_res, align 8, !tbaa !5
  store ptr %880, ptr @zz_hold, align 8, !tbaa !5
  %949 = load ptr, ptr %880, align 8, !tbaa !9
  store ptr %949, ptr @zz_tmp, align 8, !tbaa !5
  %950 = load ptr, ptr %944, align 8, !tbaa !9
  store ptr %950, ptr %880, align 8, !tbaa !9
  %951 = load ptr, ptr @zz_hold, align 8, !tbaa !5
  %952 = load ptr, ptr @zz_res, align 8, !tbaa !5
  %953 = load ptr, ptr %952, align 8, !tbaa !9
  %954 = getelementptr inbounds %struct.LIST, ptr %953, i64 0, i32 1
  store ptr %951, ptr %954, align 8, !tbaa !9
  %955 = load ptr, ptr @zz_tmp, align 8, !tbaa !5
  store ptr %955, ptr %952, align 8, !tbaa !9
  %956 = load ptr, ptr @zz_res, align 8, !tbaa !5
  %957 = getelementptr inbounds %struct.LIST, ptr %955, i64 0, i32 1
  store ptr %956, ptr %957, align 8, !tbaa !9
  %958 = load ptr, ptr @xx_link, align 8, !tbaa !5
  store ptr %958, ptr @zz_res, align 8, !tbaa !5
  store ptr %931, ptr @zz_hold, align 8, !tbaa !5
  %959 = icmp eq ptr %931, null
  %960 = icmp eq ptr %958, null
  %961 = select i1 %959, i1 true, i1 %960
  br i1 %961, label %969, label %962

962:                                              ; preds = %943
  %963 = getelementptr inbounds [2 x %struct.LIST], ptr %931, i64 0, i64 1
  %964 = load ptr, ptr %963, align 8, !tbaa !9
  store ptr %964, ptr @zz_tmp, align 8, !tbaa !5
  %965 = getelementptr inbounds [2 x %struct.LIST], ptr %958, i64 0, i64 1
  %966 = load ptr, ptr %965, align 8, !tbaa !9
  store ptr %966, ptr %963, align 8, !tbaa !9
  %967 = getelementptr inbounds [2 x %struct.LIST], ptr %966, i64 0, i64 1, i32 1
  store ptr %931, ptr %967, align 8, !tbaa !9
  store ptr %964, ptr %965, align 8, !tbaa !9
  %968 = getelementptr inbounds [2 x %struct.LIST], ptr %964, i64 0, i64 1, i32 1
  store ptr %958, ptr %968, align 8, !tbaa !9
  br label %969

969:                                              ; preds = %943, %962
  %970 = getelementptr inbounds %struct.tm, ptr %89, i64 0, i32 6
  %971 = load i32, ptr %970, align 8, !tbaa !20
  %972 = add nsw i32 %971, 1
  %973 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.18, i32 noundef %972) #7
  %974 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 10), align 1, !tbaa !9
  %975 = zext i8 %974 to i32
  store i32 %975, ptr @zz_size, align 4, !tbaa !10
  %976 = zext i8 %974 to i64
  %977 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %976
  %978 = load ptr, ptr %977, align 8, !tbaa !5
  %979 = icmp eq ptr %978, null
  br i1 %979, label %980, label %983

980:                                              ; preds = %969
  %981 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %982 = call ptr @GetMemory(i32 noundef %975, ptr noundef %981) #7
  store ptr %982, ptr @zz_hold, align 8, !tbaa !5
  br label %985

983:                                              ; preds = %969
  store ptr %978, ptr @zz_hold, align 8, !tbaa !5
  %984 = load ptr, ptr %978, align 8, !tbaa !9
  store ptr %984, ptr %977, align 8, !tbaa !5
  br label %985

985:                                              ; preds = %980, %983
  %986 = phi ptr [ %982, %980 ], [ %978, %983 ]
  %987 = getelementptr inbounds %struct.word_type, ptr %986, i64 0, i32 1
  store i8 10, ptr %987, align 8, !tbaa !9
  %988 = getelementptr inbounds [2 x %struct.LIST], ptr %986, i64 0, i64 1
  %989 = getelementptr inbounds [2 x %struct.LIST], ptr %986, i64 0, i64 1, i32 1
  store ptr %986, ptr %989, align 8, !tbaa !9
  store ptr %986, ptr %988, align 8, !tbaa !9
  %990 = getelementptr inbounds %struct.LIST, ptr %986, i64 0, i32 1
  store ptr %986, ptr %990, align 8, !tbaa !9
  store ptr %986, ptr %986, align 8, !tbaa !9
  %991 = getelementptr inbounds %struct.closure_type, ptr %986, i64 0, i32 5
  store ptr %65, ptr %991, align 8, !tbaa !9
  %992 = load i8, ptr @zz_lengths, align 1, !tbaa !9
  %993 = zext i8 %992 to i32
  store i32 %993, ptr @zz_size, align 4, !tbaa !10
  %994 = zext i8 %992 to i64
  %995 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %994
  %996 = load ptr, ptr %995, align 8, !tbaa !5
  %997 = icmp eq ptr %996, null
  br i1 %997, label %998, label %1001

998:                                              ; preds = %985
  %999 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1000 = call ptr @GetMemory(i32 noundef %993, ptr noundef %999) #7
  br label %1003

1001:                                             ; preds = %985
  store ptr %996, ptr @zz_hold, align 8, !tbaa !5
  %1002 = load ptr, ptr %996, align 8, !tbaa !9
  store ptr %1002, ptr %995, align 8, !tbaa !5
  br label %1003

1003:                                             ; preds = %998, %1001
  %1004 = phi ptr [ %1000, %998 ], [ %996, %1001 ]
  %1005 = getelementptr inbounds %struct.word_type, ptr %1004, i64 0, i32 1
  store i8 0, ptr %1005, align 8, !tbaa !9
  %1006 = getelementptr inbounds [2 x %struct.LIST], ptr %1004, i64 0, i64 1, i32 1
  store ptr %1004, ptr %1006, align 8, !tbaa !9
  %1007 = getelementptr inbounds [2 x %struct.LIST], ptr %1004, i64 0, i64 1
  store ptr %1004, ptr %1007, align 8, !tbaa !9
  %1008 = getelementptr inbounds %struct.LIST, ptr %1004, i64 0, i32 1
  store ptr %1004, ptr %1008, align 8, !tbaa !9
  store ptr %1004, ptr %1004, align 8, !tbaa !9
  store ptr %1004, ptr @xx_link, align 8, !tbaa !5
  store ptr %1004, ptr @zz_res, align 8, !tbaa !5
  %1009 = load ptr, ptr @current_moment, align 8, !tbaa !5
  store ptr %1009, ptr @zz_hold, align 8, !tbaa !5
  %1010 = icmp eq ptr %1009, null
  br i1 %1010, label %1011, label %1012

1011:                                             ; preds = %1003
  store ptr %986, ptr @zz_hold, align 8, !tbaa !5
  br label %1027

1012:                                             ; preds = %1003
  %1013 = load ptr, ptr %1009, align 8, !tbaa !9
  store ptr %1013, ptr @zz_tmp, align 8, !tbaa !5
  %1014 = load ptr, ptr %1004, align 8, !tbaa !9
  store ptr %1014, ptr %1009, align 8, !tbaa !9
  %1015 = load ptr, ptr @zz_hold, align 8, !tbaa !5
  %1016 = load ptr, ptr @zz_res, align 8, !tbaa !5
  %1017 = load ptr, ptr %1016, align 8, !tbaa !9
  %1018 = getelementptr inbounds %struct.LIST, ptr %1017, i64 0, i32 1
  store ptr %1015, ptr %1018, align 8, !tbaa !9
  %1019 = load ptr, ptr @zz_tmp, align 8, !tbaa !5
  store ptr %1019, ptr %1016, align 8, !tbaa !9
  %1020 = load ptr, ptr @zz_res, align 8, !tbaa !5
  %1021 = getelementptr inbounds %struct.LIST, ptr %1019, i64 0, i32 1
  store ptr %1020, ptr %1021, align 8, !tbaa !9
  %1022 = load ptr, ptr @xx_link, align 8, !tbaa !5
  store ptr %1022, ptr @zz_res, align 8, !tbaa !5
  store ptr %986, ptr @zz_hold, align 8, !tbaa !5
  %1023 = icmp eq ptr %1022, null
  br i1 %1023, label %1035, label %1024

1024:                                             ; preds = %1012
  %1025 = getelementptr inbounds [2 x %struct.LIST], ptr %1022, i64 0, i64 1
  %1026 = load ptr, ptr %1025, align 8, !tbaa !9
  br label %1027

1027:                                             ; preds = %1024, %1011
  %1028 = phi ptr [ %1004, %1011 ], [ %1026, %1024 ]
  %1029 = phi ptr [ %1004, %1011 ], [ %1022, %1024 ]
  %1030 = load ptr, ptr %988, align 8, !tbaa !9
  store ptr %1030, ptr @zz_tmp, align 8, !tbaa !5
  %1031 = getelementptr inbounds [2 x %struct.LIST], ptr %1029, i64 0, i64 1
  store ptr %1028, ptr %988, align 8, !tbaa !9
  %1032 = load ptr, ptr %1031, align 8, !tbaa !9
  %1033 = getelementptr inbounds [2 x %struct.LIST], ptr %1032, i64 0, i64 1, i32 1
  store ptr %986, ptr %1033, align 8, !tbaa !9
  store ptr %1030, ptr %1031, align 8, !tbaa !9
  %1034 = getelementptr inbounds [2 x %struct.LIST], ptr %1030, i64 0, i64 1, i32 1
  store ptr %1029, ptr %1034, align 8, !tbaa !9
  br label %1035

1035:                                             ; preds = %1012, %1027
  %1036 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1037 = call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull %2, ptr noundef %1036) #7
  %1038 = load i8, ptr @zz_lengths, align 1, !tbaa !9
  %1039 = zext i8 %1038 to i32
  store i32 %1039, ptr @zz_size, align 4, !tbaa !10
  %1040 = zext i8 %1038 to i64
  %1041 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1040
  %1042 = load ptr, ptr %1041, align 8, !tbaa !5
  %1043 = icmp eq ptr %1042, null
  br i1 %1043, label %1044, label %1047

1044:                                             ; preds = %1035
  %1045 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1046 = call ptr @GetMemory(i32 noundef %1039, ptr noundef %1045) #7
  br label %1049

1047:                                             ; preds = %1035
  store ptr %1042, ptr @zz_hold, align 8, !tbaa !5
  %1048 = load ptr, ptr %1042, align 8, !tbaa !9
  store ptr %1048, ptr %1041, align 8, !tbaa !5
  br label %1049

1049:                                             ; preds = %1044, %1047
  %1050 = phi ptr [ %1046, %1044 ], [ %1042, %1047 ]
  %1051 = getelementptr inbounds %struct.word_type, ptr %1050, i64 0, i32 1
  store i8 0, ptr %1051, align 8, !tbaa !9
  %1052 = getelementptr inbounds [2 x %struct.LIST], ptr %1050, i64 0, i64 1, i32 1
  store ptr %1050, ptr %1052, align 8, !tbaa !9
  %1053 = getelementptr inbounds [2 x %struct.LIST], ptr %1050, i64 0, i64 1
  store ptr %1050, ptr %1053, align 8, !tbaa !9
  %1054 = getelementptr inbounds %struct.LIST, ptr %1050, i64 0, i32 1
  store ptr %1050, ptr %1054, align 8, !tbaa !9
  store ptr %1050, ptr %1050, align 8, !tbaa !9
  store ptr %1050, ptr @xx_link, align 8, !tbaa !5
  store ptr %1050, ptr @zz_res, align 8, !tbaa !5
  store ptr %986, ptr @zz_hold, align 8, !tbaa !5
  %1055 = load ptr, ptr %986, align 8, !tbaa !9
  store ptr %1055, ptr @zz_tmp, align 8, !tbaa !5
  %1056 = load ptr, ptr %1050, align 8, !tbaa !9
  store ptr %1056, ptr %986, align 8, !tbaa !9
  %1057 = load ptr, ptr @zz_hold, align 8, !tbaa !5
  %1058 = load ptr, ptr @zz_res, align 8, !tbaa !5
  %1059 = load ptr, ptr %1058, align 8, !tbaa !9
  %1060 = getelementptr inbounds %struct.LIST, ptr %1059, i64 0, i32 1
  store ptr %1057, ptr %1060, align 8, !tbaa !9
  %1061 = load ptr, ptr @zz_tmp, align 8, !tbaa !5
  store ptr %1061, ptr %1058, align 8, !tbaa !9
  %1062 = load ptr, ptr @zz_res, align 8, !tbaa !5
  %1063 = getelementptr inbounds %struct.LIST, ptr %1061, i64 0, i32 1
  store ptr %1062, ptr %1063, align 8, !tbaa !9
  %1064 = load ptr, ptr @xx_link, align 8, !tbaa !5
  store ptr %1064, ptr @zz_res, align 8, !tbaa !5
  store ptr %1037, ptr @zz_hold, align 8, !tbaa !5
  %1065 = icmp eq ptr %1037, null
  %1066 = icmp eq ptr %1064, null
  %1067 = select i1 %1065, i1 true, i1 %1066
  br i1 %1067, label %1075, label %1068

1068:                                             ; preds = %1049
  %1069 = getelementptr inbounds [2 x %struct.LIST], ptr %1037, i64 0, i64 1
  %1070 = load ptr, ptr %1069, align 8, !tbaa !9
  store ptr %1070, ptr @zz_tmp, align 8, !tbaa !5
  %1071 = getelementptr inbounds [2 x %struct.LIST], ptr %1064, i64 0, i64 1
  %1072 = load ptr, ptr %1071, align 8, !tbaa !9
  store ptr %1072, ptr %1069, align 8, !tbaa !9
  %1073 = getelementptr inbounds [2 x %struct.LIST], ptr %1072, i64 0, i64 1, i32 1
  store ptr %1037, ptr %1073, align 8, !tbaa !9
  store ptr %1070, ptr %1071, align 8, !tbaa !9
  %1074 = getelementptr inbounds [2 x %struct.LIST], ptr %1070, i64 0, i64 1, i32 1
  store ptr %1064, ptr %1074, align 8, !tbaa !9
  br label %1075

1075:                                             ; preds = %1049, %1068
  %1076 = getelementptr inbounds %struct.tm, ptr %89, i64 0, i32 7
  %1077 = load i32, ptr %1076, align 4, !tbaa !21
  %1078 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.18, i32 noundef %1077) #7
  %1079 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 10), align 1, !tbaa !9
  %1080 = zext i8 %1079 to i32
  store i32 %1080, ptr @zz_size, align 4, !tbaa !10
  %1081 = zext i8 %1079 to i64
  %1082 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1081
  %1083 = load ptr, ptr %1082, align 8, !tbaa !5
  %1084 = icmp eq ptr %1083, null
  br i1 %1084, label %1085, label %1088

1085:                                             ; preds = %1075
  %1086 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1087 = call ptr @GetMemory(i32 noundef %1080, ptr noundef %1086) #7
  store ptr %1087, ptr @zz_hold, align 8, !tbaa !5
  br label %1090

1088:                                             ; preds = %1075
  store ptr %1083, ptr @zz_hold, align 8, !tbaa !5
  %1089 = load ptr, ptr %1083, align 8, !tbaa !9
  store ptr %1089, ptr %1082, align 8, !tbaa !5
  br label %1090

1090:                                             ; preds = %1085, %1088
  %1091 = phi ptr [ %1087, %1085 ], [ %1083, %1088 ]
  %1092 = getelementptr inbounds %struct.word_type, ptr %1091, i64 0, i32 1
  store i8 10, ptr %1092, align 8, !tbaa !9
  %1093 = getelementptr inbounds [2 x %struct.LIST], ptr %1091, i64 0, i64 1
  %1094 = getelementptr inbounds [2 x %struct.LIST], ptr %1091, i64 0, i64 1, i32 1
  store ptr %1091, ptr %1094, align 8, !tbaa !9
  store ptr %1091, ptr %1093, align 8, !tbaa !9
  %1095 = getelementptr inbounds %struct.LIST, ptr %1091, i64 0, i32 1
  store ptr %1091, ptr %1095, align 8, !tbaa !9
  store ptr %1091, ptr %1091, align 8, !tbaa !9
  %1096 = getelementptr inbounds %struct.closure_type, ptr %1091, i64 0, i32 5
  store ptr %72, ptr %1096, align 8, !tbaa !9
  %1097 = load i8, ptr @zz_lengths, align 1, !tbaa !9
  %1098 = zext i8 %1097 to i32
  store i32 %1098, ptr @zz_size, align 4, !tbaa !10
  %1099 = zext i8 %1097 to i64
  %1100 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1099
  %1101 = load ptr, ptr %1100, align 8, !tbaa !5
  %1102 = icmp eq ptr %1101, null
  br i1 %1102, label %1103, label %1106

1103:                                             ; preds = %1090
  %1104 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1105 = call ptr @GetMemory(i32 noundef %1098, ptr noundef %1104) #7
  br label %1108

1106:                                             ; preds = %1090
  store ptr %1101, ptr @zz_hold, align 8, !tbaa !5
  %1107 = load ptr, ptr %1101, align 8, !tbaa !9
  store ptr %1107, ptr %1100, align 8, !tbaa !5
  br label %1108

1108:                                             ; preds = %1103, %1106
  %1109 = phi ptr [ %1105, %1103 ], [ %1101, %1106 ]
  %1110 = getelementptr inbounds %struct.word_type, ptr %1109, i64 0, i32 1
  store i8 0, ptr %1110, align 8, !tbaa !9
  %1111 = getelementptr inbounds [2 x %struct.LIST], ptr %1109, i64 0, i64 1, i32 1
  store ptr %1109, ptr %1111, align 8, !tbaa !9
  %1112 = getelementptr inbounds [2 x %struct.LIST], ptr %1109, i64 0, i64 1
  store ptr %1109, ptr %1112, align 8, !tbaa !9
  %1113 = getelementptr inbounds %struct.LIST, ptr %1109, i64 0, i32 1
  store ptr %1109, ptr %1113, align 8, !tbaa !9
  store ptr %1109, ptr %1109, align 8, !tbaa !9
  store ptr %1109, ptr @xx_link, align 8, !tbaa !5
  store ptr %1109, ptr @zz_res, align 8, !tbaa !5
  %1114 = load ptr, ptr @current_moment, align 8, !tbaa !5
  store ptr %1114, ptr @zz_hold, align 8, !tbaa !5
  %1115 = icmp eq ptr %1114, null
  br i1 %1115, label %1116, label %1117

1116:                                             ; preds = %1108
  store ptr %1091, ptr @zz_hold, align 8, !tbaa !5
  br label %1132

1117:                                             ; preds = %1108
  %1118 = load ptr, ptr %1114, align 8, !tbaa !9
  store ptr %1118, ptr @zz_tmp, align 8, !tbaa !5
  %1119 = load ptr, ptr %1109, align 8, !tbaa !9
  store ptr %1119, ptr %1114, align 8, !tbaa !9
  %1120 = load ptr, ptr @zz_hold, align 8, !tbaa !5
  %1121 = load ptr, ptr @zz_res, align 8, !tbaa !5
  %1122 = load ptr, ptr %1121, align 8, !tbaa !9
  %1123 = getelementptr inbounds %struct.LIST, ptr %1122, i64 0, i32 1
  store ptr %1120, ptr %1123, align 8, !tbaa !9
  %1124 = load ptr, ptr @zz_tmp, align 8, !tbaa !5
  store ptr %1124, ptr %1121, align 8, !tbaa !9
  %1125 = load ptr, ptr @zz_res, align 8, !tbaa !5
  %1126 = getelementptr inbounds %struct.LIST, ptr %1124, i64 0, i32 1
  store ptr %1125, ptr %1126, align 8, !tbaa !9
  %1127 = load ptr, ptr @xx_link, align 8, !tbaa !5
  store ptr %1127, ptr @zz_res, align 8, !tbaa !5
  store ptr %1091, ptr @zz_hold, align 8, !tbaa !5
  %1128 = icmp eq ptr %1127, null
  br i1 %1128, label %1140, label %1129

1129:                                             ; preds = %1117
  %1130 = getelementptr inbounds [2 x %struct.LIST], ptr %1127, i64 0, i64 1
  %1131 = load ptr, ptr %1130, align 8, !tbaa !9
  br label %1132

1132:                                             ; preds = %1129, %1116
  %1133 = phi ptr [ %1109, %1116 ], [ %1131, %1129 ]
  %1134 = phi ptr [ %1109, %1116 ], [ %1127, %1129 ]
  %1135 = load ptr, ptr %1093, align 8, !tbaa !9
  store ptr %1135, ptr @zz_tmp, align 8, !tbaa !5
  %1136 = getelementptr inbounds [2 x %struct.LIST], ptr %1134, i64 0, i64 1
  store ptr %1133, ptr %1093, align 8, !tbaa !9
  %1137 = load ptr, ptr %1136, align 8, !tbaa !9
  %1138 = getelementptr inbounds [2 x %struct.LIST], ptr %1137, i64 0, i64 1, i32 1
  store ptr %1091, ptr %1138, align 8, !tbaa !9
  store ptr %1135, ptr %1136, align 8, !tbaa !9
  %1139 = getelementptr inbounds [2 x %struct.LIST], ptr %1135, i64 0, i64 1, i32 1
  store ptr %1134, ptr %1139, align 8, !tbaa !9
  br label %1140

1140:                                             ; preds = %1117, %1132
  %1141 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1142 = call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull %2, ptr noundef %1141) #7
  %1143 = load i8, ptr @zz_lengths, align 1, !tbaa !9
  %1144 = zext i8 %1143 to i32
  store i32 %1144, ptr @zz_size, align 4, !tbaa !10
  %1145 = zext i8 %1143 to i64
  %1146 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1145
  %1147 = load ptr, ptr %1146, align 8, !tbaa !5
  %1148 = icmp eq ptr %1147, null
  br i1 %1148, label %1149, label %1152

1149:                                             ; preds = %1140
  %1150 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1151 = call ptr @GetMemory(i32 noundef %1144, ptr noundef %1150) #7
  br label %1154

1152:                                             ; preds = %1140
  store ptr %1147, ptr @zz_hold, align 8, !tbaa !5
  %1153 = load ptr, ptr %1147, align 8, !tbaa !9
  store ptr %1153, ptr %1146, align 8, !tbaa !5
  br label %1154

1154:                                             ; preds = %1149, %1152
  %1155 = phi ptr [ %1151, %1149 ], [ %1147, %1152 ]
  %1156 = getelementptr inbounds %struct.word_type, ptr %1155, i64 0, i32 1
  store i8 0, ptr %1156, align 8, !tbaa !9
  %1157 = getelementptr inbounds [2 x %struct.LIST], ptr %1155, i64 0, i64 1, i32 1
  store ptr %1155, ptr %1157, align 8, !tbaa !9
  %1158 = getelementptr inbounds [2 x %struct.LIST], ptr %1155, i64 0, i64 1
  store ptr %1155, ptr %1158, align 8, !tbaa !9
  %1159 = getelementptr inbounds %struct.LIST, ptr %1155, i64 0, i32 1
  store ptr %1155, ptr %1159, align 8, !tbaa !9
  store ptr %1155, ptr %1155, align 8, !tbaa !9
  store ptr %1155, ptr @xx_link, align 8, !tbaa !5
  store ptr %1155, ptr @zz_res, align 8, !tbaa !5
  store ptr %1091, ptr @zz_hold, align 8, !tbaa !5
  %1160 = load ptr, ptr %1091, align 8, !tbaa !9
  store ptr %1160, ptr @zz_tmp, align 8, !tbaa !5
  %1161 = load ptr, ptr %1155, align 8, !tbaa !9
  store ptr %1161, ptr %1091, align 8, !tbaa !9
  %1162 = load ptr, ptr @zz_hold, align 8, !tbaa !5
  %1163 = load ptr, ptr @zz_res, align 8, !tbaa !5
  %1164 = load ptr, ptr %1163, align 8, !tbaa !9
  %1165 = getelementptr inbounds %struct.LIST, ptr %1164, i64 0, i32 1
  store ptr %1162, ptr %1165, align 8, !tbaa !9
  %1166 = load ptr, ptr @zz_tmp, align 8, !tbaa !5
  store ptr %1166, ptr %1163, align 8, !tbaa !9
  %1167 = load ptr, ptr @zz_res, align 8, !tbaa !5
  %1168 = getelementptr inbounds %struct.LIST, ptr %1166, i64 0, i32 1
  store ptr %1167, ptr %1168, align 8, !tbaa !9
  %1169 = load ptr, ptr @xx_link, align 8, !tbaa !5
  store ptr %1169, ptr @zz_res, align 8, !tbaa !5
  store ptr %1142, ptr @zz_hold, align 8, !tbaa !5
  %1170 = icmp eq ptr %1142, null
  %1171 = icmp eq ptr %1169, null
  %1172 = select i1 %1170, i1 true, i1 %1171
  br i1 %1172, label %1180, label %1173

1173:                                             ; preds = %1154
  %1174 = getelementptr inbounds [2 x %struct.LIST], ptr %1142, i64 0, i64 1
  %1175 = load ptr, ptr %1174, align 8, !tbaa !9
  store ptr %1175, ptr @zz_tmp, align 8, !tbaa !5
  %1176 = getelementptr inbounds [2 x %struct.LIST], ptr %1169, i64 0, i64 1
  %1177 = load ptr, ptr %1176, align 8, !tbaa !9
  store ptr %1177, ptr %1174, align 8, !tbaa !9
  %1178 = getelementptr inbounds [2 x %struct.LIST], ptr %1177, i64 0, i64 1, i32 1
  store ptr %1142, ptr %1178, align 8, !tbaa !9
  store ptr %1175, ptr %1176, align 8, !tbaa !9
  %1179 = getelementptr inbounds [2 x %struct.LIST], ptr %1175, i64 0, i64 1, i32 1
  store ptr %1169, ptr %1179, align 8, !tbaa !9
  br label %1180

1180:                                             ; preds = %1154, %1173
  %1181 = getelementptr inbounds %struct.tm, ptr %89, i64 0, i32 8
  %1182 = load i32, ptr %1181, align 8, !tbaa !22
  %1183 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.18, i32 noundef %1182) #7
  %1184 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 10), align 1, !tbaa !9
  %1185 = zext i8 %1184 to i32
  store i32 %1185, ptr @zz_size, align 4, !tbaa !10
  %1186 = zext i8 %1184 to i64
  %1187 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1186
  %1188 = load ptr, ptr %1187, align 8, !tbaa !5
  %1189 = icmp eq ptr %1188, null
  br i1 %1189, label %1190, label %1193

1190:                                             ; preds = %1180
  %1191 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1192 = call ptr @GetMemory(i32 noundef %1185, ptr noundef %1191) #7
  store ptr %1192, ptr @zz_hold, align 8, !tbaa !5
  br label %1195

1193:                                             ; preds = %1180
  store ptr %1188, ptr @zz_hold, align 8, !tbaa !5
  %1194 = load ptr, ptr %1188, align 8, !tbaa !9
  store ptr %1194, ptr %1187, align 8, !tbaa !5
  br label %1195

1195:                                             ; preds = %1190, %1193
  %1196 = phi ptr [ %1192, %1190 ], [ %1188, %1193 ]
  %1197 = getelementptr inbounds %struct.word_type, ptr %1196, i64 0, i32 1
  store i8 10, ptr %1197, align 8, !tbaa !9
  %1198 = getelementptr inbounds [2 x %struct.LIST], ptr %1196, i64 0, i64 1
  %1199 = getelementptr inbounds [2 x %struct.LIST], ptr %1196, i64 0, i64 1, i32 1
  store ptr %1196, ptr %1199, align 8, !tbaa !9
  store ptr %1196, ptr %1198, align 8, !tbaa !9
  %1200 = getelementptr inbounds %struct.LIST, ptr %1196, i64 0, i32 1
  store ptr %1196, ptr %1200, align 8, !tbaa !9
  store ptr %1196, ptr %1196, align 8, !tbaa !9
  %1201 = getelementptr inbounds %struct.closure_type, ptr %1196, i64 0, i32 5
  store ptr %79, ptr %1201, align 8, !tbaa !9
  %1202 = load i8, ptr @zz_lengths, align 1, !tbaa !9
  %1203 = zext i8 %1202 to i32
  store i32 %1203, ptr @zz_size, align 4, !tbaa !10
  %1204 = zext i8 %1202 to i64
  %1205 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1204
  %1206 = load ptr, ptr %1205, align 8, !tbaa !5
  %1207 = icmp eq ptr %1206, null
  br i1 %1207, label %1208, label %1211

1208:                                             ; preds = %1195
  %1209 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1210 = call ptr @GetMemory(i32 noundef %1203, ptr noundef %1209) #7
  br label %1213

1211:                                             ; preds = %1195
  store ptr %1206, ptr @zz_hold, align 8, !tbaa !5
  %1212 = load ptr, ptr %1206, align 8, !tbaa !9
  store ptr %1212, ptr %1205, align 8, !tbaa !5
  br label %1213

1213:                                             ; preds = %1208, %1211
  %1214 = phi ptr [ %1210, %1208 ], [ %1206, %1211 ]
  %1215 = getelementptr inbounds %struct.word_type, ptr %1214, i64 0, i32 1
  store i8 0, ptr %1215, align 8, !tbaa !9
  %1216 = getelementptr inbounds [2 x %struct.LIST], ptr %1214, i64 0, i64 1, i32 1
  store ptr %1214, ptr %1216, align 8, !tbaa !9
  %1217 = getelementptr inbounds [2 x %struct.LIST], ptr %1214, i64 0, i64 1
  store ptr %1214, ptr %1217, align 8, !tbaa !9
  %1218 = getelementptr inbounds %struct.LIST, ptr %1214, i64 0, i32 1
  store ptr %1214, ptr %1218, align 8, !tbaa !9
  store ptr %1214, ptr %1214, align 8, !tbaa !9
  store ptr %1214, ptr @xx_link, align 8, !tbaa !5
  store ptr %1214, ptr @zz_res, align 8, !tbaa !5
  %1219 = load ptr, ptr @current_moment, align 8, !tbaa !5
  store ptr %1219, ptr @zz_hold, align 8, !tbaa !5
  %1220 = icmp eq ptr %1219, null
  br i1 %1220, label %1221, label %1222

1221:                                             ; preds = %1213
  store ptr %1196, ptr @zz_hold, align 8, !tbaa !5
  br label %1237

1222:                                             ; preds = %1213
  %1223 = load ptr, ptr %1219, align 8, !tbaa !9
  store ptr %1223, ptr @zz_tmp, align 8, !tbaa !5
  %1224 = load ptr, ptr %1214, align 8, !tbaa !9
  store ptr %1224, ptr %1219, align 8, !tbaa !9
  %1225 = load ptr, ptr @zz_hold, align 8, !tbaa !5
  %1226 = load ptr, ptr @zz_res, align 8, !tbaa !5
  %1227 = load ptr, ptr %1226, align 8, !tbaa !9
  %1228 = getelementptr inbounds %struct.LIST, ptr %1227, i64 0, i32 1
  store ptr %1225, ptr %1228, align 8, !tbaa !9
  %1229 = load ptr, ptr @zz_tmp, align 8, !tbaa !5
  store ptr %1229, ptr %1226, align 8, !tbaa !9
  %1230 = load ptr, ptr @zz_res, align 8, !tbaa !5
  %1231 = getelementptr inbounds %struct.LIST, ptr %1229, i64 0, i32 1
  store ptr %1230, ptr %1231, align 8, !tbaa !9
  %1232 = load ptr, ptr @xx_link, align 8, !tbaa !5
  store ptr %1232, ptr @zz_res, align 8, !tbaa !5
  store ptr %1196, ptr @zz_hold, align 8, !tbaa !5
  %1233 = icmp eq ptr %1232, null
  br i1 %1233, label %1245, label %1234

1234:                                             ; preds = %1222
  %1235 = getelementptr inbounds [2 x %struct.LIST], ptr %1232, i64 0, i64 1
  %1236 = load ptr, ptr %1235, align 8, !tbaa !9
  br label %1237

1237:                                             ; preds = %1234, %1221
  %1238 = phi ptr [ %1214, %1221 ], [ %1236, %1234 ]
  %1239 = phi ptr [ %1214, %1221 ], [ %1232, %1234 ]
  %1240 = load ptr, ptr %1198, align 8, !tbaa !9
  store ptr %1240, ptr @zz_tmp, align 8, !tbaa !5
  %1241 = getelementptr inbounds [2 x %struct.LIST], ptr %1239, i64 0, i64 1
  store ptr %1238, ptr %1198, align 8, !tbaa !9
  %1242 = load ptr, ptr %1241, align 8, !tbaa !9
  %1243 = getelementptr inbounds [2 x %struct.LIST], ptr %1242, i64 0, i64 1, i32 1
  store ptr %1196, ptr %1243, align 8, !tbaa !9
  store ptr %1240, ptr %1241, align 8, !tbaa !9
  %1244 = getelementptr inbounds [2 x %struct.LIST], ptr %1240, i64 0, i64 1, i32 1
  store ptr %1239, ptr %1244, align 8, !tbaa !9
  br label %1245

1245:                                             ; preds = %1222, %1237
  %1246 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1247 = call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull %2, ptr noundef %1246) #7
  %1248 = load i8, ptr @zz_lengths, align 1, !tbaa !9
  %1249 = zext i8 %1248 to i32
  store i32 %1249, ptr @zz_size, align 4, !tbaa !10
  %1250 = zext i8 %1248 to i64
  %1251 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1250
  %1252 = load ptr, ptr %1251, align 8, !tbaa !5
  %1253 = icmp eq ptr %1252, null
  br i1 %1253, label %1254, label %1257

1254:                                             ; preds = %1245
  %1255 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1256 = call ptr @GetMemory(i32 noundef %1249, ptr noundef %1255) #7
  br label %1259

1257:                                             ; preds = %1245
  store ptr %1252, ptr @zz_hold, align 8, !tbaa !5
  %1258 = load ptr, ptr %1252, align 8, !tbaa !9
  store ptr %1258, ptr %1251, align 8, !tbaa !5
  br label %1259

1259:                                             ; preds = %1254, %1257
  %1260 = phi ptr [ %1256, %1254 ], [ %1252, %1257 ]
  %1261 = getelementptr inbounds %struct.word_type, ptr %1260, i64 0, i32 1
  store i8 0, ptr %1261, align 8, !tbaa !9
  %1262 = getelementptr inbounds [2 x %struct.LIST], ptr %1260, i64 0, i64 1, i32 1
  store ptr %1260, ptr %1262, align 8, !tbaa !9
  %1263 = getelementptr inbounds [2 x %struct.LIST], ptr %1260, i64 0, i64 1
  store ptr %1260, ptr %1263, align 8, !tbaa !9
  %1264 = getelementptr inbounds %struct.LIST, ptr %1260, i64 0, i32 1
  store ptr %1260, ptr %1264, align 8, !tbaa !9
  store ptr %1260, ptr %1260, align 8, !tbaa !9
  store ptr %1260, ptr @xx_link, align 8, !tbaa !5
  store ptr %1260, ptr @zz_res, align 8, !tbaa !5
  store ptr %1196, ptr @zz_hold, align 8, !tbaa !5
  %1265 = load ptr, ptr %1196, align 8, !tbaa !9
  store ptr %1265, ptr @zz_tmp, align 8, !tbaa !5
  %1266 = load ptr, ptr %1260, align 8, !tbaa !9
  store ptr %1266, ptr %1196, align 8, !tbaa !9
  %1267 = load ptr, ptr @zz_hold, align 8, !tbaa !5
  %1268 = load ptr, ptr @zz_res, align 8, !tbaa !5
  %1269 = load ptr, ptr %1268, align 8, !tbaa !9
  %1270 = getelementptr inbounds %struct.LIST, ptr %1269, i64 0, i32 1
  store ptr %1267, ptr %1270, align 8, !tbaa !9
  %1271 = load ptr, ptr @zz_tmp, align 8, !tbaa !5
  store ptr %1271, ptr %1268, align 8, !tbaa !9
  %1272 = load ptr, ptr @zz_res, align 8, !tbaa !5
  %1273 = getelementptr inbounds %struct.LIST, ptr %1271, i64 0, i32 1
  store ptr %1272, ptr %1273, align 8, !tbaa !9
  %1274 = load ptr, ptr @xx_link, align 8, !tbaa !5
  store ptr %1274, ptr @zz_res, align 8, !tbaa !5
  store ptr %1247, ptr @zz_hold, align 8, !tbaa !5
  %1275 = icmp eq ptr %1247, null
  %1276 = icmp eq ptr %1274, null
  %1277 = select i1 %1275, i1 true, i1 %1276
  br i1 %1277, label %1285, label %1278

1278:                                             ; preds = %1259
  %1279 = getelementptr inbounds [2 x %struct.LIST], ptr %1247, i64 0, i64 1
  %1280 = load ptr, ptr %1279, align 8, !tbaa !9
  store ptr %1280, ptr @zz_tmp, align 8, !tbaa !5
  %1281 = getelementptr inbounds [2 x %struct.LIST], ptr %1274, i64 0, i64 1
  %1282 = load ptr, ptr %1281, align 8, !tbaa !9
  store ptr %1282, ptr %1279, align 8, !tbaa !9
  %1283 = getelementptr inbounds [2 x %struct.LIST], ptr %1282, i64 0, i64 1, i32 1
  store ptr %1247, ptr %1283, align 8, !tbaa !9
  store ptr %1280, ptr %1281, align 8, !tbaa !9
  %1284 = getelementptr inbounds [2 x %struct.LIST], ptr %1280, i64 0, i64 1, i32 1
  store ptr %1274, ptr %1284, align 8, !tbaa !9
  br label %1285

1285:                                             ; preds = %1259, %1278
  %1286 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 82), align 1, !tbaa !9
  %1287 = zext i8 %1286 to i32
  store i32 %1287, ptr @zz_size, align 4, !tbaa !10
  %1288 = zext i8 %1286 to i64
  %1289 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1288
  %1290 = load ptr, ptr %1289, align 8, !tbaa !5
  %1291 = icmp eq ptr %1290, null
  br i1 %1291, label %1292, label %1295

1292:                                             ; preds = %1285
  %1293 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1294 = call ptr @GetMemory(i32 noundef %1287, ptr noundef %1293) #7
  store ptr %1294, ptr @zz_hold, align 8, !tbaa !5
  br label %1297

1295:                                             ; preds = %1285
  store ptr %1290, ptr @zz_hold, align 8, !tbaa !5
  %1296 = load ptr, ptr %1290, align 8, !tbaa !9
  store ptr %1296, ptr %1289, align 8, !tbaa !5
  br label %1297

1297:                                             ; preds = %1292, %1295
  %1298 = phi ptr [ %1294, %1292 ], [ %1290, %1295 ]
  %1299 = getelementptr inbounds %struct.word_type, ptr %1298, i64 0, i32 1
  store i8 82, ptr %1299, align 8, !tbaa !9
  %1300 = getelementptr inbounds [2 x %struct.LIST], ptr %1298, i64 0, i64 1, i32 1
  store ptr %1298, ptr %1300, align 8, !tbaa !9
  %1301 = getelementptr inbounds [2 x %struct.LIST], ptr %1298, i64 0, i64 1
  store ptr %1298, ptr %1301, align 8, !tbaa !9
  %1302 = getelementptr inbounds %struct.LIST, ptr %1298, i64 0, i32 1
  store ptr %1298, ptr %1302, align 8, !tbaa !9
  store ptr %1298, ptr %1298, align 8, !tbaa !9
  %1303 = load ptr, ptr @current_moment, align 8, !tbaa !5
  call void @AttachEnv(ptr noundef nonnull %1298, ptr noundef %1303) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare ptr @InsertSym(ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @MakeWord(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #4

declare ptr @Error(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare ptr @localtime(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: nounwind
declare ptr @asctime(ptr noundef) local_unnamed_addr #4

declare ptr @GetMemory(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

declare void @AttachEnv(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local ptr @StartMoment() local_unnamed_addr #1 {
  %1 = load ptr, ptr @current_moment, align 8, !tbaa !5
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  %4 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %5 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.19, i32 noundef 0, ptr noundef %4, ptr noundef nonnull @.str.20) #7
  %6 = load ptr, ptr @current_moment, align 8, !tbaa !5
  br label %7

7:                                                ; preds = %3, %0
  %8 = phi ptr [ %6, %3 ], [ %1, %0 ]
  %9 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %10 = tail call ptr @CopyObject(ptr noundef %8, ptr noundef %9) #7
  ret ptr %10
}

declare ptr @CopyObject(ptr noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

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
!12 = !{!13, !11, i64 0}
!13 = !{!"tm", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !14, i64 40, !6, i64 48}
!14 = !{!"long", !7, i64 0}
!15 = !{!13, !11, i64 4}
!16 = !{!13, !11, i64 8}
!17 = !{!13, !11, i64 12}
!18 = !{!13, !11, i64 16}
!19 = !{!13, !11, i64 20}
!20 = !{!13, !11, i64 24}
!21 = !{!13, !11, i64 28}
!22 = !{!13, !11, i64 32}
