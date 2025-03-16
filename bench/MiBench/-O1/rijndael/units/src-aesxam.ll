; ModuleID = 'src/aesxam.c'
source_filename = "src/aesxam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._G_fpos_t = type { i64, %struct.__mbstate_t }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.aes = type { i64, i64, [64 x i64], [64 x i64], i8 }

@fillrand.a.0 = internal unnamed_addr global i64 0, align 16
@fillrand.a.1 = internal unnamed_addr global i64 0, align 16
@fillrand.mt = internal unnamed_addr global i1 false, align 8
@fillrand.count = internal unnamed_addr global i64 4, align 8
@fillrand.r = internal unnamed_addr global [4 x i8] zeroinitializer, align 8
@.str = private unnamed_addr constant [34 x i8] c"Error writing to output file: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Error reading from input file: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"\0AThe input file is corrupt\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"The input file: %s could not be opened\0A\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"The output file: %s could not be opened\0A\00", align 1
@str = private unnamed_addr constant [55 x i8] c"The key length must be 32, 48 or 64 hexadecimal digits\00", align 1
@str.11 = private unnamed_addr constant [26 x i8] c"The key value is too long\00", align 1
@str.12 = private unnamed_addr constant [36 x i8] c"key must be in hexadecimal notation\00", align 1
@str.13 = private unnamed_addr constant [58 x i8] c"usage: rijndael in_filename out_filename [d/e] key_in_hex\00", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: write, inaccessiblemem: none) uwtable
define dso_local void @fillrand(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load i1, ptr @fillrand.mt, align 8
  br i1 %3, label %5, label %4

4:                                                ; preds = %2
  store i1 true, ptr @fillrand.mt, align 8
  store i64 60147, ptr @fillrand.a.0, align 16, !tbaa !5
  store i64 13822, ptr @fillrand.a.1, align 16, !tbaa !5
  br label %5

5:                                                ; preds = %4, %2
  %6 = icmp sgt i32 %1, 0
  br i1 %6, label %7, label %40

7:                                                ; preds = %5
  %8 = load i64, ptr @fillrand.a.1, align 16, !tbaa !5
  %9 = load i64, ptr @fillrand.a.0, align 16, !tbaa !5
  %10 = load i64, ptr @fillrand.count, align 8, !tbaa !5
  %11 = zext nneg i32 %1 to i64
  br label %12

12:                                               ; preds = %7, %29
  %13 = phi i64 [ 0, %7 ], [ %37, %29 ]
  %14 = phi i64 [ %10, %7 ], [ %33, %29 ]
  %15 = phi i64 [ %9, %7 ], [ %31, %29 ]
  %16 = phi i64 [ %8, %7 ], [ %30, %29 ]
  %17 = icmp eq i64 %14, 4
  br i1 %17, label %18, label %29

18:                                               ; preds = %12
  %19 = and i64 %15, 65535
  %20 = mul nuw nsw i64 %19, 36969
  %21 = lshr i64 %15, 16
  %22 = add nuw nsw i64 %20, %21
  store i64 %22, ptr @fillrand.a.0, align 16, !tbaa !5
  %23 = shl i64 %22, 16
  %24 = and i64 %16, 65535
  %25 = mul nuw nsw i64 %24, 18000
  %26 = lshr i64 %16, 16
  %27 = add nuw nsw i64 %25, %26
  store i64 %27, ptr @fillrand.a.1, align 16, !tbaa !5
  %28 = add i64 %27, %23
  store i64 %28, ptr @fillrand.r, align 8, !tbaa !5
  br label %29

29:                                               ; preds = %18, %12
  %30 = phi i64 [ %27, %18 ], [ %16, %12 ]
  %31 = phi i64 [ %22, %18 ], [ %15, %12 ]
  %32 = phi i64 [ 0, %18 ], [ %14, %12 ]
  %33 = add i64 %32, 1
  %34 = getelementptr inbounds [4 x i8], ptr @fillrand.r, i64 0, i64 %32
  %35 = load i8, ptr %34, align 1, !tbaa !9
  %36 = getelementptr inbounds i8, ptr %0, i64 %13
  store i8 %35, ptr %36, align 1, !tbaa !9
  %37 = add nuw nsw i64 %13, 1
  %38 = icmp eq i64 %37, %11
  br i1 %38, label %39, label %12, !llvm.loop !10

39:                                               ; preds = %29
  store i64 %33, ptr @fillrand.count, align 8, !tbaa !5
  br label %40

40:                                               ; preds = %39, %5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @encfile(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 {
  %5 = alloca [16 x i8], align 16
  %6 = alloca [16 x i8], align 16
  %7 = alloca %struct._G_fpos_t, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #8
  %8 = load i1, ptr @fillrand.mt, align 8
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  store i1 true, ptr @fillrand.mt, align 8
  store i64 60147, ptr @fillrand.a.0, align 16, !tbaa !5
  store i64 13822, ptr @fillrand.a.1, align 16, !tbaa !5
  br label %10

10:                                               ; preds = %9, %4
  %11 = load i64, ptr @fillrand.a.1, align 16, !tbaa !5
  %12 = load i64, ptr @fillrand.a.0, align 16, !tbaa !5
  %13 = load i64, ptr @fillrand.count, align 8, !tbaa !5
  br label %14

14:                                               ; preds = %31, %10
  %15 = phi i64 [ 0, %10 ], [ %39, %31 ]
  %16 = phi i64 [ %13, %10 ], [ %35, %31 ]
  %17 = phi i64 [ %12, %10 ], [ %33, %31 ]
  %18 = phi i64 [ %11, %10 ], [ %32, %31 ]
  %19 = icmp eq i64 %16, 4
  br i1 %19, label %20, label %31

20:                                               ; preds = %14
  %21 = and i64 %17, 65535
  %22 = mul nuw nsw i64 %21, 36969
  %23 = lshr i64 %17, 16
  %24 = add nuw nsw i64 %22, %23
  store i64 %24, ptr @fillrand.a.0, align 16, !tbaa !5
  %25 = shl i64 %24, 16
  %26 = and i64 %18, 65535
  %27 = mul nuw nsw i64 %26, 18000
  %28 = lshr i64 %18, 16
  %29 = add nuw nsw i64 %27, %28
  store i64 %29, ptr @fillrand.a.1, align 16, !tbaa !5
  %30 = add i64 %29, %25
  store i64 %30, ptr @fillrand.r, align 8, !tbaa !5
  br label %31

31:                                               ; preds = %20, %14
  %32 = phi i64 [ %29, %20 ], [ %18, %14 ]
  %33 = phi i64 [ %24, %20 ], [ %17, %14 ]
  %34 = phi i64 [ 0, %20 ], [ %16, %14 ]
  %35 = add i64 %34, 1
  %36 = getelementptr inbounds [4 x i8], ptr @fillrand.r, i64 0, i64 %34
  %37 = load i8, ptr %36, align 1, !tbaa !9
  %38 = getelementptr inbounds i8, ptr %6, i64 %15
  store i8 %37, ptr %38, align 1, !tbaa !9
  %39 = add nuw nsw i64 %15, 1
  %40 = icmp eq i64 %39, 16
  br i1 %40, label %41, label %14, !llvm.loop !10

41:                                               ; preds = %31
  store i64 %35, ptr @fillrand.count, align 8, !tbaa !5
  %42 = tail call i32 @fseek(ptr noundef %0, i64 noundef 0, i32 noundef 2)
  %43 = call i32 @fgetpos(ptr noundef %0, ptr noundef nonnull %7)
  %44 = tail call i32 @fseek(ptr noundef %0, i64 noundef 0, i32 noundef 0)
  %45 = call i64 @fwrite(ptr noundef nonnull %6, i64 noundef 1, i64 noundef 16, ptr noundef %1)
  %46 = load i1, ptr @fillrand.mt, align 8
  br i1 %46, label %48, label %47

47:                                               ; preds = %41
  store i1 true, ptr @fillrand.mt, align 8
  store i64 60147, ptr @fillrand.a.0, align 16, !tbaa !5
  store i64 13822, ptr @fillrand.a.1, align 16, !tbaa !5
  br label %48

48:                                               ; preds = %47, %41
  %49 = load i64, ptr @fillrand.count, align 8, !tbaa !5
  %50 = icmp eq i64 %49, 4
  br i1 %50, label %51, label %64

51:                                               ; preds = %48
  %52 = load i64, ptr @fillrand.a.0, align 16, !tbaa !5
  %53 = load i64, ptr @fillrand.a.1, align 16, !tbaa !5
  %54 = and i64 %52, 65535
  %55 = mul nuw nsw i64 %54, 36969
  %56 = lshr i64 %52, 16
  %57 = add nuw nsw i64 %55, %56
  store i64 %57, ptr @fillrand.a.0, align 16, !tbaa !5
  %58 = shl i64 %57, 16
  %59 = and i64 %53, 65535
  %60 = mul nuw nsw i64 %59, 18000
  %61 = lshr i64 %53, 16
  %62 = add nuw nsw i64 %60, %61
  store i64 %62, ptr @fillrand.a.1, align 16, !tbaa !5
  %63 = add i64 %62, %58
  store i64 %63, ptr @fillrand.r, align 8, !tbaa !5
  br label %64

64:                                               ; preds = %51, %48
  %65 = phi i64 [ 0, %51 ], [ %49, %48 ]
  %66 = getelementptr inbounds [4 x i8], ptr @fillrand.r, i64 0, i64 %65
  %67 = load i8, ptr %66, align 1, !tbaa !9
  store i8 %67, ptr %5, align 16, !tbaa !9
  %68 = add i64 %65, 1
  store i64 %68, ptr @fillrand.count, align 8, !tbaa !5
  %69 = load i64, ptr %7, align 8, !tbaa !12
  %70 = trunc i64 %69 to i8
  %71 = and i8 %70, 15
  %72 = and i8 %67, -16
  %73 = or disjoint i8 %71, %72
  store i8 %73, ptr %5, align 16, !tbaa !9
  %74 = tail call i32 @feof(ptr noundef %0) #8
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %101

76:                                               ; preds = %64
  %77 = getelementptr inbounds i8, ptr %5, i64 1
  %78 = call i64 @fread(ptr noundef nonnull %77, i64 noundef 1, i64 noundef 15, ptr noundef %0)
  %79 = icmp ult i64 %78, 15
  br i1 %79, label %101, label %86

80:                                               ; preds = %97
  %81 = call i32 @feof(ptr noundef %0) #8
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %101, !llvm.loop !16

83:                                               ; preds = %80
  %84 = call i64 @fread(ptr noundef nonnull %5, i64 noundef 1, i64 noundef 16, ptr noundef %0)
  %85 = icmp ult i64 %84, 16
  br i1 %85, label %101, label %95

86:                                               ; preds = %76, %95
  %87 = phi i64 [ %96, %95 ], [ 0, %76 ]
  %88 = getelementptr inbounds [16 x i8], ptr %6, i64 0, i64 %87
  %89 = load i8, ptr %88, align 1, !tbaa !9
  %90 = getelementptr inbounds [16 x i8], ptr %5, i64 0, i64 %87
  %91 = load i8, ptr %90, align 1, !tbaa !9
  %92 = xor i8 %91, %89
  store i8 %92, ptr %90, align 1, !tbaa !9
  %93 = add nuw nsw i64 %87, 1
  %94 = icmp eq i64 %93, 16
  br i1 %94, label %97, label %95

95:                                               ; preds = %86, %83
  %96 = phi i64 [ %93, %86 ], [ 0, %83 ]
  br label %86, !llvm.loop !16

97:                                               ; preds = %86
  %98 = call signext i16 @encrypt(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef %2) #8
  %99 = call i64 @fwrite(ptr noundef nonnull %6, i64 noundef 1, i64 noundef 16, ptr noundef %1)
  %100 = icmp eq i64 %99, 16
  br i1 %100, label %80, label %126, !llvm.loop !16

101:                                              ; preds = %83, %80, %76, %64
  %102 = phi i64 [ 1, %64 ], [ 1, %76 ], [ 0, %80 ], [ 0, %83 ]
  %103 = phi i64 [ 0, %64 ], [ %78, %76 ], [ 16, %80 ], [ %84, %83 ]
  %104 = add nuw nsw i64 %103, %102
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %129, label %106

106:                                              ; preds = %101
  %107 = icmp ult i64 %104, 16
  br i1 %107, label %108, label %112

108:                                              ; preds = %106
  %109 = getelementptr i8, ptr %5, i64 %102
  %110 = getelementptr i8, ptr %109, i64 %103
  %111 = sub nuw nsw i64 16, %104
  call void @llvm.memset.p0.i64(ptr align 1 %110, i8 0, i64 %111, i1 false), !tbaa !9
  br label %112

112:                                              ; preds = %108, %106
  br label %113

113:                                              ; preds = %112, %113
  %114 = phi i64 [ %120, %113 ], [ 0, %112 ]
  %115 = getelementptr inbounds [16 x i8], ptr %6, i64 0, i64 %114
  %116 = load i8, ptr %115, align 1, !tbaa !9
  %117 = getelementptr inbounds [16 x i8], ptr %5, i64 0, i64 %114
  %118 = load i8, ptr %117, align 1, !tbaa !9
  %119 = xor i8 %118, %116
  store i8 %119, ptr %117, align 1, !tbaa !9
  %120 = add nuw nsw i64 %114, 1
  %121 = icmp eq i64 %120, 16
  br i1 %121, label %122, label %113, !llvm.loop !17

122:                                              ; preds = %113
  %123 = call signext i16 @encrypt(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef %2) #8
  %124 = call i64 @fwrite(ptr noundef nonnull %6, i64 noundef 1, i64 noundef 16, ptr noundef %1)
  %125 = icmp eq i64 %124, 16
  br i1 %125, label %129, label %126

126:                                              ; preds = %97, %122
  %127 = phi i32 [ -8, %122 ], [ -7, %97 ]
  %128 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef %3)
  br label %129

129:                                              ; preds = %126, %101, %122
  %130 = phi i32 [ 0, %122 ], [ 0, %101 ], [ %127, %126 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8
  ret i32 %130
}

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fgetpos(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @feof(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #3

declare signext i16 @encrypt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @decfile(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #2 {
  %6 = alloca [16 x i8], align 16
  %7 = alloca [16 x i8], align 16
  %8 = alloca [16 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #8
  %9 = call i64 @fread(ptr noundef nonnull %6, i64 noundef 1, i64 noundef 16, ptr noundef %0)
  %10 = icmp eq i64 %9, 16
  br i1 %10, label %13, label %11

11:                                               ; preds = %5
  %12 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef %3)
  br label %77

13:                                               ; preds = %5
  %14 = call i64 @fread(ptr noundef nonnull %7, i64 noundef 1, i64 noundef 16, ptr noundef %0)
  %15 = and i64 %14, 4294967279
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2)
  br label %77

19:                                               ; preds = %13
  %20 = call signext i16 @decrypt(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef %2) #8
  br label %21

21:                                               ; preds = %19, %21
  %22 = phi i64 [ 0, %19 ], [ %28, %21 ]
  %23 = getelementptr inbounds [16 x i8], ptr %6, i64 0, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !9
  %25 = getelementptr inbounds [16 x i8], ptr %8, i64 0, i64 %22
  %26 = load i8, ptr %25, align 1, !tbaa !9
  %27 = xor i8 %26, %24
  store i8 %27, ptr %25, align 1, !tbaa !9
  %28 = add nuw nsw i64 %22, 1
  %29 = icmp eq i64 %28, 16
  br i1 %29, label %30, label %21, !llvm.loop !18

30:                                               ; preds = %21
  %31 = load i8, ptr %8, align 16, !tbaa !9
  %32 = and i8 %31, 15
  %33 = zext nneg i8 %32 to i32
  %34 = call i64 @fread(ptr noundef nonnull %6, i64 noundef 1, i64 noundef 16, ptr noundef %0)
  %35 = and i64 %34, 4294967295
  %36 = icmp ne i64 %35, 16
  br i1 %36, label %64, label %37

37:                                               ; preds = %30
  %38 = getelementptr inbounds i8, ptr %8, i64 16
  br label %43

39:                                               ; preds = %55
  %40 = call i64 @fread(ptr noundef %45, i64 noundef 1, i64 noundef 16, ptr noundef %0)
  %41 = and i64 %40, 4294967295
  %42 = icmp eq i64 %41, 16
  br i1 %42, label %43, label %64, !llvm.loop !19

43:                                               ; preds = %37, %39
  %44 = phi i64 [ 15, %37 ], [ 16, %39 ]
  %45 = phi ptr [ %7, %37 ], [ %46, %39 ]
  %46 = phi ptr [ %6, %37 ], [ %45, %39 ]
  %47 = sub nsw i64 0, %44
  %48 = getelementptr inbounds i8, ptr %38, i64 %47
  %49 = call i64 @fwrite(ptr noundef nonnull %48, i64 noundef 1, i64 noundef %44, ptr noundef %1)
  %50 = icmp eq i64 %49, %44
  br i1 %50, label %53, label %51

51:                                               ; preds = %43
  %52 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef %4)
  br label %77

53:                                               ; preds = %43
  %54 = call signext i16 @decrypt(ptr noundef %46, ptr noundef nonnull %8, ptr noundef %2) #8
  br label %55

55:                                               ; preds = %53, %55
  %56 = phi i64 [ 0, %53 ], [ %62, %55 ]
  %57 = getelementptr inbounds i8, ptr %45, i64 %56
  %58 = load i8, ptr %57, align 1, !tbaa !9
  %59 = getelementptr inbounds [16 x i8], ptr %8, i64 0, i64 %56
  %60 = load i8, ptr %59, align 1, !tbaa !9
  %61 = xor i8 %60, %58
  store i8 %61, ptr %59, align 1, !tbaa !9
  %62 = add nuw nsw i64 %56, 1
  %63 = icmp eq i64 %62, 16
  br i1 %63, label %39, label %55, !llvm.loop !20

64:                                               ; preds = %39, %30
  %65 = xor i1 %36, true
  %66 = zext i1 %65 to i32
  %67 = add nuw nsw i32 %66, %33
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %77, label %69

69:                                               ; preds = %64
  %70 = zext i1 %36 to i64
  %71 = getelementptr inbounds i8, ptr %8, i64 %70
  %72 = zext nneg i32 %67 to i64
  %73 = call i64 @fwrite(ptr noundef nonnull %71, i64 noundef 1, i64 noundef %72, ptr noundef %1)
  %74 = icmp eq i64 %73, %72
  br i1 %74, label %77, label %75

75:                                               ; preds = %69
  %76 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef %4)
  br label %77

77:                                               ; preds = %64, %69, %75, %51, %17, %11
  %78 = phi i32 [ 9, %11 ], [ -10, %17 ], [ -12, %75 ], [ -11, %51 ], [ 0, %69 ], [ 0, %64 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8
  ret i32 %78
}

declare signext i16 @decrypt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = alloca [32 x i8], align 16
  %4 = alloca [1 x %struct.aes], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 1048, ptr nonnull %4) #8
  %5 = icmp eq i32 %0, 5
  br i1 %5, label %6, label %17

6:                                                ; preds = %2
  %7 = tail call ptr @__ctype_toupper_loc() #9
  %8 = load ptr, ptr %7, align 8, !tbaa !21
  %9 = getelementptr inbounds ptr, ptr %1, i64 3
  %10 = load ptr, ptr %9, align 8, !tbaa !21
  %11 = load i8, ptr %10, align 1, !tbaa !9
  %12 = sext i8 %11 to i64
  %13 = getelementptr inbounds i32, ptr %8, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !23
  %15 = and i32 %14, -2
  %16 = icmp eq i32 %15, 68
  br i1 %16, label %19, label %17

17:                                               ; preds = %6, %2
  %18 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.13)
  br label %108

19:                                               ; preds = %6
  %20 = getelementptr inbounds ptr, ptr %1, i64 4
  %21 = load ptr, ptr %20, align 8, !tbaa !21
  br label %22

22:                                               ; preds = %19, %57
  %23 = phi ptr [ %21, %19 ], [ %30, %57 ]
  %24 = phi i32 [ 0, %19 ], [ %48, %57 ]
  %25 = phi i32 [ 0, %19 ], [ %47, %57 ]
  %26 = load i8, ptr %23, align 1, !tbaa !9
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %59, label %28

28:                                               ; preds = %22
  %29 = load ptr, ptr %7, align 8, !tbaa !21
  %30 = getelementptr inbounds i8, ptr %23, i64 1
  %31 = sext i8 %26 to i64
  %32 = getelementptr inbounds i32, ptr %29, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !23
  %34 = shl i32 %33, 24
  %35 = ashr exact i32 %34, 24
  %36 = add nsw i32 %35, -48
  %37 = icmp ult i32 %36, 10
  br i1 %37, label %43, label %38

38:                                               ; preds = %28
  %39 = add nsw i32 %35, -65
  %40 = icmp ult i32 %39, 6
  br i1 %40, label %43, label %41

41:                                               ; preds = %38
  %42 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.12)
  br label %108

43:                                               ; preds = %38, %28
  %44 = phi i32 [ -48, %28 ], [ -55, %38 ]
  %45 = shl i32 %25, 4
  %46 = add i32 %45, %44
  %47 = add i32 %46, %35
  %48 = add nuw nsw i32 %24, 1
  %49 = and i32 %24, 1
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %43
  %52 = trunc i32 %47 to i8
  %53 = lshr exact i32 %48, 1
  %54 = add nsw i32 %53, -1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [32 x i8], ptr %3, i64 0, i64 %55
  store i8 %52, ptr %56, align 1, !tbaa !9
  br label %57

57:                                               ; preds = %51, %43
  %58 = icmp eq i32 %48, 64
  br i1 %58, label %59, label %22, !llvm.loop !24

59:                                               ; preds = %57, %22
  %60 = phi i32 [ 64, %57 ], [ %24, %22 ]
  %61 = phi ptr [ %30, %57 ], [ %23, %22 ]
  %62 = load i8, ptr %61, align 1, !tbaa !9
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %59
  %65 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.11)
  br label %108

66:                                               ; preds = %59
  %67 = icmp ugt i32 %60, 31
  %68 = and i32 %60, 15
  %69 = icmp eq i32 %68, 0
  %70 = and i1 %67, %69
  br i1 %70, label %73, label %71

71:                                               ; preds = %66
  %72 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %108

73:                                               ; preds = %66
  %74 = lshr exact i32 %60, 1
  %75 = getelementptr inbounds ptr, ptr %1, i64 1
  %76 = load ptr, ptr %75, align 8, !tbaa !21
  %77 = tail call noalias ptr @fopen(ptr noundef %76, ptr noundef nonnull @.str.7)
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %73
  %80 = load ptr, ptr %75, align 8, !tbaa !21
  %81 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef %80)
  br label %108

82:                                               ; preds = %73
  %83 = getelementptr inbounds ptr, ptr %1, i64 2
  %84 = load ptr, ptr %83, align 8, !tbaa !21
  %85 = tail call noalias ptr @fopen(ptr noundef %84, ptr noundef nonnull @.str.9)
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load ptr, ptr %75, align 8, !tbaa !21
  %89 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef %88)
  br label %108

90:                                               ; preds = %82
  %91 = load ptr, ptr %7, align 8, !tbaa !21
  %92 = load ptr, ptr %9, align 8, !tbaa !21
  %93 = load i8, ptr %92, align 1, !tbaa !9
  %94 = sext i8 %93 to i64
  %95 = getelementptr inbounds i32, ptr %91, i64 %94
  %96 = load i32, ptr %95, align 4, !tbaa !23
  %97 = icmp eq i32 %96, 69
  %98 = zext nneg i32 %74 to i64
  br i1 %97, label %99, label %103

99:                                               ; preds = %90
  %100 = call signext i16 @set_key(ptr noundef nonnull %3, i64 noundef %98, i32 noundef 1, ptr noundef nonnull %4) #8
  %101 = load ptr, ptr %75, align 8, !tbaa !21
  %102 = call i32 @encfile(ptr noundef nonnull %77, ptr noundef nonnull %85, ptr noundef nonnull %4, ptr noundef %101), !range !25
  br label %108

103:                                              ; preds = %90
  %104 = call signext i16 @set_key(ptr noundef nonnull %3, i64 noundef %98, i32 noundef 2, ptr noundef nonnull %4) #8
  %105 = load ptr, ptr %75, align 8, !tbaa !21
  %106 = load ptr, ptr %83, align 8, !tbaa !21
  %107 = call i32 @decfile(ptr noundef nonnull %77, ptr noundef nonnull %85, ptr noundef nonnull %4, ptr noundef %105, ptr noundef %106), !range !26
  br label %108

108:                                              ; preds = %99, %103, %87, %79, %71, %64, %41, %17
  %109 = phi i32 [ -1, %17 ], [ -2, %41 ], [ -3, %64 ], [ -4, %71 ], [ %102, %99 ], [ %107, %103 ], [ -6, %87 ], [ -5, %79 ]
  %110 = phi ptr [ null, %17 ], [ null, %41 ], [ null, %64 ], [ null, %71 ], [ %85, %99 ], [ %85, %103 ], [ null, %87 ], [ null, %79 ]
  %111 = phi ptr [ null, %17 ], [ null, %41 ], [ null, %64 ], [ null, %71 ], [ %77, %99 ], [ %77, %103 ], [ %77, %87 ], [ null, %79 ]
  %112 = icmp eq ptr %110, null
  br i1 %112, label %115, label %113

113:                                              ; preds = %108
  %114 = call i32 @fclose(ptr noundef nonnull %110)
  br label %115

115:                                              ; preds = %113, %108
  %116 = icmp eq ptr %111, null
  br i1 %116, label %119, label %117

117:                                              ; preds = %115
  %118 = call i32 @fclose(ptr noundef nonnull %111)
  br label %119

119:                                              ; preds = %117, %115
  call void @llvm.lifetime.end.p0(i64 1048, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #8
  ret i32 %109
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_toupper_loc() local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #3

declare signext i16 @set_key(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"long", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{!13, !6, i64 0}
!13 = !{!"_G_fpos_t", !6, i64 0, !14, i64 8}
!14 = !{!"", !15, i64 0, !7, i64 4}
!15 = !{!"int", !7, i64 0}
!16 = distinct !{!16, !11}
!17 = distinct !{!17, !11}
!18 = distinct !{!18, !11}
!19 = distinct !{!19, !11}
!20 = distinct !{!20, !11}
!21 = !{!22, !22, i64 0}
!22 = !{!"any pointer", !7, i64 0}
!23 = !{!15, !15, i64 0}
!24 = distinct !{!24, !11}
!25 = !{i32 -8, i32 1}
!26 = !{i32 -12, i32 10}
