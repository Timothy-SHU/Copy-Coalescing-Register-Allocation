; ModuleID = 'src/rsaglue1.c'
source_filename = "src/rsaglue1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@signon_legalese = dso_local local_unnamed_addr global [1 x i8] zeroinitializer, align 1
@global_precision = external local_unnamed_addr global i16, align 2
@asn_array = internal global [18 x i8] c"0 0\0C\06\08*\86H\86\F7\0D\02\05\05\00\04\10", align 16

; Function Attrs: nounwind uwtable
define dso_local i32 @rsa_public_encrypt(ptr noundef %0, ptr nocapture noundef readonly %1, i16 noundef signext %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca [130 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %6) #7
  %7 = tail call i32 @countbits(ptr noundef %4) #7
  %8 = add nsw i32 %7, 7
  %9 = ashr i32 %8, 3
  %10 = load i16, ptr @global_precision, align 2, !tbaa !5
  %11 = sext i16 %10 to i32
  %12 = shl nsw i32 %11, 1
  %13 = icmp slt i32 %12, %9
  br i1 %13, label %26, label %14

14:                                               ; preds = %5
  %15 = or disjoint i32 %12, 1
  %16 = xor i32 %9, -1
  %17 = add nsw i32 %15, %16
  %18 = zext i32 %17 to i64
  %19 = add nuw nsw i64 %18, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %6, i8 0, i64 %19, i1 false), !tbaa !9
  %20 = or disjoint i32 %12, 1
  %21 = xor i32 %9, -1
  %22 = add nsw i32 %20, %21
  %23 = zext i32 %22 to i64
  %24 = getelementptr i8, ptr %6, i64 %23
  %25 = getelementptr i8, ptr %24, i64 1
  br label %26

26:                                               ; preds = %14, %5
  %27 = phi ptr [ %6, %5 ], [ %25, %14 ]
  %28 = sext i16 %2 to i32
  %29 = sub nsw i32 %9, %28
  %30 = icmp slt i32 %29, 4
  br i1 %30, label %51, label %31

31:                                               ; preds = %26
  %32 = add nsw i32 %29, -3
  %33 = getelementptr inbounds i8, ptr %27, i64 1
  store i8 2, ptr %27, align 1, !tbaa !9
  br label %34

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %33, %31 ], [ %42, %34 ]
  %36 = phi i32 [ %32, %31 ], [ %40, %34 ]
  %37 = tail call zeroext i8 @cryptRandByte() #7
  store i8 %37, ptr %35, align 1, !tbaa !9
  %38 = icmp ne i8 %37, 0
  %39 = sext i1 %38 to i32
  %40 = add nsw i32 %36, %39
  %41 = zext i1 %38 to i64
  %42 = getelementptr inbounds i8, ptr %35, i64 %41
  %43 = icmp eq i32 %40, 0
  br i1 %43, label %44, label %34, !llvm.loop !10

44:                                               ; preds = %34
  %45 = getelementptr inbounds i8, ptr %42, i64 1
  store i8 0, ptr %42, align 1, !tbaa !9
  %46 = sext i16 %2 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %45, ptr align 1 %1, i64 %46, i1 false)
  %47 = load i16, ptr @global_precision, align 2, !tbaa !5
  %48 = shl i16 %47, 1
  call void @hiloswap(ptr noundef nonnull %6, i16 noundef signext %48) #7
  %49 = call i32 @mp_modexp(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %3, ptr noundef %4) #7
  call void @mp_init(ptr noundef nonnull %6, i16 noundef zeroext 0) #7
  %50 = ashr i32 %49, 31
  br label %51

51:                                               ; preds = %26, %44
  %52 = phi i32 [ %50, %44 ], [ -4, %26 ]
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %6) #7
  ret i32 %52
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @countbits(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @cryptRandByte() local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare void @hiloswap(ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare i32 @mp_modexp(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mp_init(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @rsa_private_encrypt(ptr noundef %0, ptr nocapture noundef readonly %1, i16 noundef signext %2, ptr nocapture noundef readnone %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) local_unnamed_addr #0 {
  %10 = alloca [130 x i16], align 16
  %11 = alloca [130 x i16], align 16
  %12 = alloca [130 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %10) #7
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %11) #7
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %12) #7
  %13 = load i16, ptr @global_precision, align 2, !tbaa !5
  %14 = sext i16 %13 to i32
  %15 = shl nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %10, ptr align 1 %5, i64 %16, i1 false)
  %17 = call zeroext i8 @mp_dec(ptr noundef nonnull %10) #7
  %18 = call i32 @mp_mod(ptr noundef nonnull %11, ptr noundef %4, ptr noundef nonnull %10) #7
  %19 = load i16, ptr @global_precision, align 2, !tbaa !5
  %20 = sext i16 %19 to i32
  %21 = shl nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %10, ptr align 1 %6, i64 %22, i1 false)
  %23 = call zeroext i8 @mp_dec(ptr noundef nonnull %10) #7
  %24 = call i32 @mp_mod(ptr noundef nonnull %12, ptr noundef %4, ptr noundef nonnull %10) #7
  %25 = call i32 @countbits(ptr noundef %8) #7
  %26 = add nsw i32 %25, 7
  %27 = ashr i32 %26, 3
  %28 = load i16, ptr @global_precision, align 2, !tbaa !5
  %29 = sext i16 %28 to i32
  %30 = shl nsw i32 %29, 1
  %31 = icmp slt i32 %30, %27
  br i1 %31, label %44, label %32

32:                                               ; preds = %9
  %33 = or disjoint i32 %30, 1
  %34 = xor i32 %27, -1
  %35 = add nsw i32 %33, %34
  %36 = zext i32 %35 to i64
  %37 = add nuw nsw i64 %36, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %10, i8 0, i64 %37, i1 false), !tbaa !9
  %38 = or disjoint i32 %30, 1
  %39 = xor i32 %27, -1
  %40 = add nsw i32 %38, %39
  %41 = zext i32 %40 to i64
  %42 = getelementptr i8, ptr %10, i64 %41
  %43 = getelementptr i8, ptr %42, i64 1
  br label %44

44:                                               ; preds = %32, %9
  %45 = phi ptr [ %10, %9 ], [ %43, %32 ]
  %46 = sext i16 %2 to i32
  %47 = sub nsw i32 %27, %46
  %48 = icmp slt i32 %47, 21
  br i1 %48, label %60, label %49

49:                                               ; preds = %44
  %50 = add nsw i32 %47, -21
  %51 = getelementptr inbounds i8, ptr %45, i64 1
  store i8 1, ptr %45, align 1, !tbaa !9
  %52 = zext nneg i32 %50 to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %51, i8 -1, i64 %52, i1 false)
  %53 = getelementptr inbounds i8, ptr %51, i64 %52
  %54 = getelementptr inbounds i8, ptr %53, i64 1
  store i8 0, ptr %53, align 1, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %54, ptr noundef nonnull align 16 dereferenceable(18) @asn_array, i64 18, i1 false)
  %55 = getelementptr inbounds i8, ptr %53, i64 19
  %56 = sext i16 %2 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %55, ptr align 1 %1, i64 %56, i1 false)
  %57 = shl i16 %28, 1
  call void @hiloswap(ptr noundef nonnull %10, i16 noundef signext %57) #7
  %58 = call i32 @mp_modexp_crt(ptr noundef %0, ptr noundef nonnull %10, ptr noundef %5, ptr noundef %6, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef %7) #7
  %59 = call i32 @llvm.smax.i32(i32 %58, i32 -1)
  br label %60

60:                                               ; preds = %44, %49
  %61 = phi i32 [ %59, %49 ], [ -4, %44 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(260) %10, i8 0, i64 260, i1 false)
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %12) #7
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %11) #7
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %10) #7
  ret i32 %61
}

declare zeroext i8 @mp_dec(ptr noundef) local_unnamed_addr #2

declare i32 @mp_mod(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

declare i32 @mp_modexp_crt(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rsa_public_decrypt(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [130 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %5) #7
  %6 = call i32 @mp_modexp(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %2, ptr noundef %3) #7
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %79, label %8

8:                                                ; preds = %4
  %9 = load i16, ptr @global_precision, align 2, !tbaa !5
  %10 = shl i16 %9, 1
  call void @hiloswap(ptr noundef nonnull %5, i16 noundef signext %10) #7
  %11 = call i32 @countbits(ptr noundef %3) #7
  %12 = load i16, ptr @global_precision, align 2, !tbaa !5
  %13 = sext i16 %12 to i32
  %14 = shl nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, ptr %5, i64 %15
  %17 = call i32 @countbits(ptr noundef %3) #7
  %18 = add nsw i32 %17, 7
  %19 = ashr i32 %18, 3
  %20 = or disjoint i32 %14, 1
  %21 = sub nsw i32 %20, %19
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %79, label %23

23:                                               ; preds = %8
  %24 = zext nneg i32 %21 to i64
  %25 = getelementptr i8, ptr %5, i64 %24
  br label %26

26:                                               ; preds = %23, %30
  %27 = phi i32 [ %31, %30 ], [ %21, %23 ]
  %28 = phi ptr [ %32, %30 ], [ %5, %23 ]
  %29 = icmp eq i32 %27, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %26
  %31 = add nsw i32 %27, -1
  %32 = getelementptr inbounds i8, ptr %28, i64 1
  %33 = load i8, ptr %28, align 1, !tbaa !9
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %26, label %79, !llvm.loop !12

35:                                               ; preds = %26
  %36 = getelementptr inbounds i8, ptr %16, i64 -1
  %37 = load i8, ptr %36, align 1, !tbaa !9
  %38 = icmp eq i8 %37, 1
  br i1 %38, label %39, label %55

39:                                               ; preds = %35
  %40 = getelementptr inbounds i8, ptr %16, i64 -17
  %41 = load i8, ptr %40, align 1, !tbaa !9
  %42 = icmp eq i8 %41, -1
  br i1 %42, label %43, label %55

43:                                               ; preds = %39
  %44 = getelementptr inbounds i8, ptr %16, i64 -18
  %45 = load i8, ptr %44, align 2, !tbaa !9
  %46 = icmp eq i8 %45, -1
  br i1 %46, label %47, label %55

47:                                               ; preds = %43
  %48 = getelementptr inbounds i8, ptr %25, i64 1
  %49 = load i8, ptr %25, align 1, !tbaa !9
  %50 = icmp eq i8 %49, 1
  br i1 %50, label %51, label %79

51:                                               ; preds = %47, %51
  %52 = phi ptr [ %53, %51 ], [ %36, %47 ]
  %53 = getelementptr inbounds i8, ptr %52, i64 -1
  %54 = load i8, ptr %53, align 1, !tbaa !9
  switch i8 %54, label %79 [
    i8 -1, label %51
    i8 0, label %69
  ]

55:                                               ; preds = %43, %39, %35
  %56 = load i8, ptr %25, align 1, !tbaa !9
  %57 = icmp eq i8 %56, 1
  br i1 %57, label %58, label %79

58:                                               ; preds = %55
  %59 = getelementptr inbounds i8, ptr %25, i64 1
  br label %60

60:                                               ; preds = %58, %60
  %61 = phi ptr [ %62, %60 ], [ %59, %58 ]
  %62 = getelementptr inbounds i8, ptr %61, i64 1
  %63 = load i8, ptr %61, align 1, !tbaa !9
  switch i8 %63, label %79 [
    i8 -1, label %60
    i8 0, label %64
  ]

64:                                               ; preds = %60
  %65 = call i32 @bcmp(ptr noundef nonnull dereferenceable(18) %62, ptr noundef nonnull dereferenceable(18) @asn_array, i64 18)
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %64
  %68 = getelementptr inbounds i8, ptr %61, i64 19
  br label %69

69:                                               ; preds = %51, %67
  %70 = phi ptr [ %68, %67 ], [ %48, %51 ]
  %71 = phi ptr [ %16, %67 ], [ %53, %51 ]
  %72 = icmp ult ptr %71, %70
  br i1 %72, label %79, label %73

73:                                               ; preds = %69
  %74 = ptrtoint ptr %71 to i64
  %75 = ptrtoint ptr %70 to i64
  %76 = sub i64 %74, %75
  %77 = trunc i64 %76 to i32
  %78 = and i64 %76, 4294967295
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr nonnull align 1 %70, i64 %78, i1 false)
  br label %79

79:                                               ; preds = %30, %60, %51, %8, %55, %69, %64, %47, %4, %73
  %80 = phi i32 [ %77, %73 ], [ -1, %4 ], [ -7, %47 ], [ -7, %64 ], [ -9, %69 ], [ -9, %55 ], [ -9, %8 ], [ -9, %51 ], [ -9, %60 ], [ -9, %30 ]
  call void @mp_init(ptr noundef nonnull %5, i16 noundef zeroext 0) #7
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %5) #7
  ret i32 %80
}

; Function Attrs: nounwind uwtable
define dso_local i32 @rsa_private_decrypt(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr nocapture noundef readnone %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #0 {
  %9 = alloca [130 x i16], align 16
  %10 = alloca [130 x i16], align 16
  %11 = alloca [130 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %9) #7
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %10) #7
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %11) #7
  %12 = load i16, ptr @global_precision, align 2, !tbaa !5
  %13 = sext i16 %12 to i32
  %14 = shl nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %9, ptr align 1 %4, i64 %15, i1 false)
  %16 = call zeroext i8 @mp_dec(ptr noundef nonnull %9) #7
  %17 = call i32 @mp_mod(ptr noundef nonnull %10, ptr noundef %3, ptr noundef nonnull %9) #7
  %18 = load i16, ptr @global_precision, align 2, !tbaa !5
  %19 = sext i16 %18 to i32
  %20 = shl nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %9, ptr align 1 %5, i64 %21, i1 false)
  %22 = call zeroext i8 @mp_dec(ptr noundef nonnull %9) #7
  %23 = call i32 @mp_mod(ptr noundef nonnull %11, ptr noundef %3, ptr noundef nonnull %9) #7
  %24 = call i32 @mp_modexp_crt(ptr noundef nonnull %9, ptr noundef %1, ptr noundef %4, ptr noundef %5, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef %6) #7
  call void @mp_init(ptr noundef nonnull %10, i16 noundef zeroext 0) #7
  call void @mp_init(ptr noundef nonnull %11, i16 noundef zeroext 0) #7
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %82, label %26

26:                                               ; preds = %8
  %27 = load i16, ptr @global_precision, align 2, !tbaa !5
  %28 = shl i16 %27, 1
  call void @hiloswap(ptr noundef nonnull %9, i16 noundef signext %28) #7
  %29 = load i16, ptr @global_precision, align 2, !tbaa !5
  %30 = sext i16 %29 to i32
  %31 = shl nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, ptr %9, i64 %32
  %34 = call i32 @countbits(ptr noundef %7) #7
  %35 = add nsw i32 %34, 7
  %36 = ashr i32 %35, 3
  %37 = or disjoint i32 %31, 1
  %38 = sub nsw i32 %37, %36
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %82, label %40

40:                                               ; preds = %26
  %41 = zext nneg i32 %38 to i64
  %42 = getelementptr i8, ptr %9, i64 %41
  br label %43

43:                                               ; preds = %40, %47
  %44 = phi ptr [ %49, %47 ], [ %9, %40 ]
  %45 = phi i32 [ %48, %47 ], [ %38, %40 ]
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %43
  %48 = add nsw i32 %45, -1
  %49 = getelementptr inbounds i8, ptr %44, i64 1
  %50 = load i8, ptr %44, align 1, !tbaa !9
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %43, label %82, !llvm.loop !13

52:                                               ; preds = %43
  %53 = load i8, ptr %42, align 1, !tbaa !9
  %54 = icmp eq i8 %53, 2
  br i1 %54, label %65, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds i8, ptr %33, i64 -1
  %57 = load i8, ptr %56, align 1, !tbaa !9
  %58 = icmp eq i8 %57, 2
  br i1 %58, label %59, label %64

59:                                               ; preds = %55, %59
  %60 = phi ptr [ %61, %59 ], [ %33, %55 ]
  %61 = getelementptr inbounds i8, ptr %60, i64 -1
  %62 = load i8, ptr %61, align 1, !tbaa !9
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %72, label %59, !llvm.loop !14

64:                                               ; preds = %55
  br i1 %54, label %65, label %82

65:                                               ; preds = %52, %64
  %66 = getelementptr inbounds i8, ptr %42, i64 1
  br label %67

67:                                               ; preds = %65, %67
  %68 = phi ptr [ %69, %67 ], [ %66, %65 ]
  %69 = getelementptr inbounds i8, ptr %68, i64 1
  %70 = load i8, ptr %68, align 1, !tbaa !9
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %67, !llvm.loop !15

72:                                               ; preds = %59, %67
  %73 = phi ptr [ %33, %67 ], [ %61, %59 ]
  %74 = phi ptr [ %69, %67 ], [ %42, %59 ]
  %75 = icmp ugt ptr %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %72
  %77 = ptrtoint ptr %73 to i64
  %78 = ptrtoint ptr %74 to i64
  %79 = sub i64 %77, %78
  %80 = trunc i64 %79 to i32
  %81 = and i64 %79, 4294967295
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr nonnull align 1 %74, i64 %81, i1 false)
  br label %82

82:                                               ; preds = %47, %26, %64, %72, %8, %76
  %83 = phi i32 [ %80, %76 ], [ -1, %8 ], [ -9, %72 ], [ -9, %64 ], [ -9, %26 ], [ -9, %47 ]
  call void @mp_init(ptr noundef nonnull %9, i16 noundef zeroext 0) #7
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %11) #7
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %10) #7
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %9) #7
  ret i32 %83
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind willreturn memory(argmem: read) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"short", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !11}
!13 = distinct !{!13, !11}
!14 = distinct !{!14, !11}
!15 = distinct !{!15, !11}
