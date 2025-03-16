; ModuleID = 'src/phtoelm.c'
source_filename = "src/phtoelm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Elm_s = type { ptr, i8, i8, i8, i8, ptr, ptr, i64, [19 x %struct.interp_t] }
%struct.interp_t = type { float, float, i8, i8, i8 }
%struct.darray_t = type { ptr, i32, i32, i16, i16 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [64 x i8] c"$Id: phtoelm.c,v 1.13 1994/11/08 13:30:50 a904209 Exp a904209 $\00", align 1
@phtoelm_id = dso_local local_unnamed_addr global ptr @.str, align 8
@phtoelm = dso_local global ptr null, align 8
@Elements = external global [0 x %struct.Elm_s], align 8
@speed = external local_unnamed_addr global i32, align 4
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"Ignoring %c in '%.*s'\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"Q\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"PY\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"PZ\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"TY\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"TZ\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"k\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"K\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"KY\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"KZ\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"BY\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"BZ\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"DY\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"DZ\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"GY\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"GZ\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.30 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"NG\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c"F\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"TH\00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.37 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"SH\00", align 1
@.str.39 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c"H\00", align 1
@.str.41 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@.str.42 = private unnamed_addr constant [2 x i8] c"V\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c"QQ\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"DH\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"DI\00", align 1
@.str.46 = private unnamed_addr constant [2 x i8] c"z\00", align 1
@.str.47 = private unnamed_addr constant [2 x i8] c"Z\00", align 1
@.str.48 = private unnamed_addr constant [3 x i8] c"ZZ\00", align 1
@.str.49 = private unnamed_addr constant [3 x i8] c"ZH\00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c"tS\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"CH\00", align 1
@.str.52 = private unnamed_addr constant [3 x i8] c"CI\00", align 1
@.str.53 = private unnamed_addr constant [3 x i8] c"dZ\00", align 1
@.str.54 = private unnamed_addr constant [2 x i8] c"J\00", align 1
@.str.55 = private unnamed_addr constant [3 x i8] c"JY\00", align 1
@.str.56 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@.str.57 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.58 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.59 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.60 = private unnamed_addr constant [3 x i8] c"rr\00", align 1
@.str.61 = private unnamed_addr constant [3 x i8] c"RX\00", align 1
@.str.62 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.63 = private unnamed_addr constant [2 x i8] c"W\00", align 1
@.str.64 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.65 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.66 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.67 = private unnamed_addr constant [2 x i8] c"j\00", align 1
@.str.68 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@.str.69 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.70 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.71 = private unnamed_addr constant [2 x i8] c"E\00", align 1
@.str.72 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.73 = private unnamed_addr constant [3 x i8] c"AA\00", align 1
@.str.74 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.75 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.76 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@.str.77 = private unnamed_addr constant [3 x i8] c"OO\00", align 1
@.str.78 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.79 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.80 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.81 = private unnamed_addr constant [3 x i8] c"EE\00", align 1
@.str.82 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str.83 = private unnamed_addr constant [3 x i8] c"ER\00", align 1
@.str.84 = private unnamed_addr constant [3 x i8] c"AR\00", align 1
@.str.85 = private unnamed_addr constant [3 x i8] c"AW\00", align 1
@.str.86 = private unnamed_addr constant [2 x i8] c"u\00", align 1
@.str.87 = private unnamed_addr constant [3 x i8] c"UU\00", align 1
@.str.88 = private unnamed_addr constant [2 x i8] c"o\00", align 1
@.str.89 = private unnamed_addr constant [3 x i8] c"OI\00", align 1
@.str.90 = private unnamed_addr constant [3 x i8] c"eI\00", align 1
@.str.91 = private unnamed_addr constant [3 x i8] c"AI\00", align 1
@.str.92 = private unnamed_addr constant [3 x i8] c"aI\00", align 1
@.str.93 = private unnamed_addr constant [3 x i8] c"IE\00", align 1
@.str.94 = private unnamed_addr constant [3 x i8] c"oI\00", align 1
@.str.95 = private unnamed_addr constant [3 x i8] c"aU\00", align 1
@.str.96 = private unnamed_addr constant [3 x i8] c"OU\00", align 1
@.str.97 = private unnamed_addr constant [3 x i8] c"OV\00", align 1
@.str.98 = private unnamed_addr constant [3 x i8] c"@U\00", align 1
@.str.99 = private unnamed_addr constant [3 x i8] c"OA\00", align 1
@.str.100 = private unnamed_addr constant [3 x i8] c"I@\00", align 1
@.str.101 = private unnamed_addr constant [3 x i8] c"IA\00", align 1
@.str.102 = private unnamed_addr constant [3 x i8] c"IB\00", align 1
@.str.103 = private unnamed_addr constant [3 x i8] c"e@\00", align 1
@.str.104 = private unnamed_addr constant [4 x i8] c"AIR\00", align 1
@.str.105 = private unnamed_addr constant [3 x i8] c"U@\00", align 1
@.str.106 = private unnamed_addr constant [4 x i8] c"OOR\00", align 1
@.str.107 = private unnamed_addr constant [3 x i8] c"O@\00", align 1
@.str.108 = private unnamed_addr constant [3 x i8] c"OR\00", align 1
@.str.109 = private unnamed_addr constant [3 x i8] c"oU\00", align 1
@.str.110 = private unnamed_addr constant [16 x i8] c"Cannot find %s\0A\00", align 1
@num_Elements = external local_unnamed_addr global i32, align 4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @phone_append(ptr noundef %0, i32 noundef returned %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.darray_t, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !5
  %5 = tail call ptr @Darray_find(ptr noundef %0, i32 noundef %4) #8
  %6 = trunc i32 %1 to i8
  store i8 %6, ptr %5, align 1, !tbaa !12
  ret i32 %1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @phone_to_elm(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  store ptr %0, ptr %4, align 8, !tbaa !13
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds i8, ptr %0, i64 %5
  %7 = load ptr, ptr @phtoelm, align 8, !tbaa !13
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.35, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.42, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.45, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.48, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.49, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.55, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.59, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.61, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.63, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.65, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.43, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.69, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.71, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.73, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.74, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.76, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.77, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.79, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.81, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.83, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.84, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.85, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.87, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.89, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.69, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.69, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.69, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.97, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.97, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.102, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.102, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.102, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.102, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.97, ptr noundef null)
  br label %10

10:                                               ; preds = %9, %3
  %11 = load ptr, ptr %4, align 8, !tbaa !13
  %12 = icmp ult ptr %11, %6
  br i1 %12, label %13, label %79

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.darray_t, ptr %2, i64 0, i32 1
  br label %15

15:                                               ; preds = %13, %74
  %16 = phi ptr [ %11, %13 ], [ %77, %74 ]
  %17 = phi i32 [ 0, %13 ], [ %76, %74 ]
  %18 = phi i32 [ 0, %13 ], [ %75, %74 ]
  %19 = load i8, ptr %16, align 1, !tbaa !12
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %79, label %21

21:                                               ; preds = %15
  %22 = call ptr @trie_lookup(ptr noundef nonnull @phtoelm, ptr noundef nonnull %4) #8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %63, label %24

24:                                               ; preds = %21
  %25 = load i8, ptr %22, align 1, !tbaa !12
  %26 = icmp sgt i8 %25, 0
  br i1 %26, label %27, label %74

27:                                               ; preds = %24
  %28 = zext nneg i8 %25 to i32
  br label %29

29:                                               ; preds = %27, %29
  %30 = phi i32 [ %44, %29 ], [ %17, %27 ]
  %31 = phi i32 [ %58, %29 ], [ %18, %27 ]
  %32 = phi ptr [ %35, %29 ], [ %22, %27 ]
  %33 = phi i32 [ %34, %29 ], [ %28, %27 ]
  %34 = add nsw i32 %33, -1
  %35 = getelementptr inbounds i8, ptr %32, i64 1
  %36 = load i8, ptr %35, align 1, !tbaa !12
  %37 = sext i8 %36 to i64
  %38 = load i32, ptr %14, align 8, !tbaa !5
  %39 = call ptr @Darray_find(ptr noundef %2, i32 noundef %38) #8
  store i8 %36, ptr %39, align 1, !tbaa !12
  %40 = getelementptr inbounds [0 x %struct.Elm_s], ptr @Elements, i64 0, i64 %37, i32 7
  %41 = load i64, ptr %40, align 8, !tbaa !14
  %42 = and i64 %41, 268435456
  %43 = icmp eq i64 %42, 0
  %44 = select i1 %43, i32 0, i32 %30
  %45 = getelementptr inbounds [0 x %struct.Elm_s], ptr @Elements, i64 0, i64 %37, i32 2
  %46 = load i8, ptr %45, align 1, !tbaa !17
  %47 = sext i8 %46 to i32
  %48 = getelementptr inbounds [0 x %struct.Elm_s], ptr @Elements, i64 0, i64 %37, i32 3
  %49 = load i8, ptr %48, align 2, !tbaa !18
  %50 = sext i8 %49 to i32
  %51 = add nsw i32 %50, %47
  %52 = sdiv i32 %51, 2
  %53 = load i32, ptr @speed, align 4, !tbaa !19
  %54 = mul nsw i32 %52, %53
  %55 = load i32, ptr %14, align 8, !tbaa !5
  %56 = call ptr @Darray_find(ptr noundef %2, i32 noundef %55) #8
  %57 = trunc i32 %54 to i8
  store i8 %57, ptr %56, align 1, !tbaa !12
  %58 = add i32 %54, %31
  %59 = load i32, ptr %14, align 8, !tbaa !5
  %60 = call ptr @Darray_find(ptr noundef %2, i32 noundef %59) #8
  %61 = trunc i32 %44 to i8
  store i8 %61, ptr %60, align 1, !tbaa !12
  %62 = icmp sgt i32 %33, 1
  br i1 %62, label %29, label %74, !llvm.loop !20

63:                                               ; preds = %21
  %64 = load ptr, ptr %4, align 8, !tbaa !13
  %65 = getelementptr inbounds i8, ptr %64, i64 1
  store ptr %65, ptr %4, align 8, !tbaa !13
  %66 = load i8, ptr %64, align 1, !tbaa !12
  switch i8 %66, label %70 [
    i8 39, label %67
    i8 44, label %68
    i8 43, label %69
    i8 45, label %74
  ]

67:                                               ; preds = %63
  br label %74

68:                                               ; preds = %63
  br label %74

69:                                               ; preds = %63
  br label %74

70:                                               ; preds = %63
  %71 = sext i8 %66 to i32
  %72 = load ptr, ptr @stderr, align 8, !tbaa !13
  %73 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %72, ptr noundef nonnull @.str.1, i32 noundef %71, i32 noundef %1, ptr noundef %0) #9
  br label %74

74:                                               ; preds = %29, %24, %67, %68, %69, %63, %70
  %75 = phi i32 [ %18, %70 ], [ %18, %63 ], [ %18, %69 ], [ %18, %68 ], [ %18, %67 ], [ %18, %24 ], [ %58, %29 ]
  %76 = phi i32 [ %17, %70 ], [ %17, %63 ], [ 1, %69 ], [ 2, %68 ], [ 3, %67 ], [ %17, %24 ], [ %44, %29 ]
  %77 = load ptr, ptr %4, align 8, !tbaa !13
  %78 = icmp ult ptr %77, %6
  br i1 %78, label %15, label %79, !llvm.loop !22

79:                                               ; preds = %15, %74, %10
  %80 = phi i32 [ 0, %10 ], [ %18, %15 ], [ %75, %74 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  ret i32 %80
}

declare ptr @trie_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

declare ptr @Darray_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @enter(ptr noundef %0, ...) unnamed_addr #0 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = alloca [20 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #8
  %4 = getelementptr inbounds i8, ptr %3, i64 1
  call void @llvm.va_start(ptr nonnull %2)
  %5 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %6 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  br label %7

7:                                                ; preds = %40, %1
  %8 = phi ptr [ %45, %40 ], [ %4, %1 ]
  br label %9

9:                                                ; preds = %7, %46
  %10 = load i32, ptr %2, align 16
  %11 = icmp ult i32 %10, 41
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = load ptr, ptr %6, align 16
  %14 = zext nneg i32 %10 to i64
  %15 = getelementptr i8, ptr %13, i64 %14
  %16 = add nuw nsw i32 %10, 8
  store i32 %16, ptr %2, align 16
  br label %20

17:                                               ; preds = %9
  %18 = load ptr, ptr %5, align 8
  %19 = getelementptr i8, ptr %18, i64 8
  store ptr %19, ptr %5, align 8
  br label %20

20:                                               ; preds = %17, %12
  %21 = phi ptr [ %15, %12 ], [ %18, %17 ]
  %22 = load ptr, ptr %21, align 8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %49, label %24

24:                                               ; preds = %20
  %25 = load i32, ptr @num_Elements, align 4, !tbaa !19
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.Elm_s, ptr @Elements, i64 %26
  %28 = icmp eq i32 %25, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %24, %34
  %30 = phi ptr [ %35, %34 ], [ @Elements, %24 ]
  %31 = load ptr, ptr %30, align 8, !tbaa !23
  %32 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %22, ptr noundef nonnull dereferenceable(1) %31) #10
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.Elm_s, ptr %30, i64 1
  %36 = icmp ult ptr %35, %27
  br i1 %36, label %29, label %37, !llvm.loop !24

37:                                               ; preds = %29, %34, %24
  %38 = phi ptr [ null, %24 ], [ %30, %29 ], [ null, %34 ]
  %39 = icmp eq ptr %38, null
  br i1 %39, label %46, label %40

40:                                               ; preds = %37
  %41 = ptrtoint ptr %38 to i64
  %42 = sub i64 %41, ptrtoint (ptr @Elements to i64)
  %43 = sdiv exact i64 %42, 272
  %44 = trunc i64 %43 to i8
  %45 = getelementptr inbounds i8, ptr %8, i64 1
  store i8 %44, ptr %8, align 1, !tbaa !12
  br label %7, !llvm.loop !25

46:                                               ; preds = %37
  %47 = load ptr, ptr @stderr, align 8, !tbaa !13
  %48 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %47, ptr noundef nonnull @.str.110, ptr noundef nonnull %22) #9
  br label %9, !llvm.loop !25

49:                                               ; preds = %20
  call void @llvm.va_end(ptr %2)
  %50 = ptrtoint ptr %8 to i64
  %51 = ptrtoint ptr %3 to i64
  %52 = xor i64 %51, -1
  %53 = add i64 %50, %52
  %54 = trunc i64 %53 to i8
  store i8 %54, ptr %3, align 16, !tbaa !12
  %55 = shl i64 %53, 56
  %56 = ashr exact i64 %55, 56
  %57 = add nsw i64 %56, 1
  %58 = call noalias ptr @malloc(i64 noundef %57) #11
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %58, ptr nonnull align 16 %3, i64 %57, i1 false)
  call void @trie_insert(ptr noundef nonnull @phtoelm, ptr noundef %0, ptr noundef %58) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #4

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

declare void @trie_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { cold }
attributes #10 = { nounwind willreturn memory(read) }
attributes #11 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !10, i64 8}
!6 = !{!"", !7, i64 0, !10, i64 8, !10, i64 12, !11, i64 16, !11, i64 18}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"short", !8, i64 0}
!12 = !{!8, !8, i64 0}
!13 = !{!7, !7, i64 0}
!14 = !{!15, !16, i64 32}
!15 = !{!"Elm_s", !7, i64 0, !8, i64 8, !8, i64 9, !8, i64 10, !8, i64 11, !7, i64 16, !7, i64 24, !16, i64 32, !8, i64 40}
!16 = !{!"long", !8, i64 0}
!17 = !{!15, !8, i64 9}
!18 = !{!15, !8, i64 10}
!19 = !{!10, !10, i64 0}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.unroll.disable"}
!22 = distinct !{!22, !21}
!23 = !{!15, !7, i64 0}
!24 = distinct !{!24, !21}
!25 = distinct !{!25, !21}
