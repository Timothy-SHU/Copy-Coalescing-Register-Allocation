; ModuleID = 'src/jcphuff.c'
source_filename = "src/jcphuff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.jpeg_compress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.phuff_entropy_encoder = type { %struct.jpeg_entropy_encoder, i32, ptr, i64, i64, i32, ptr, [4 x i32], i32, i32, i32, ptr, i32, i32, [4 x ptr], [4 x ptr] }
%struct.jpeg_entropy_encoder = type { ptr, ptr, ptr }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_destination_mgr = type { ptr, i64, ptr, ptr, ptr }
%struct.c_derived_tbl = type { [256 x i32], [256 x i8] }

@jpeg_natural_order = external local_unnamed_addr constant [0 x i32], align 4

; Function Attrs: nounwind uwtable
define dso_local void @jinit_phuff_encoder(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = load ptr, ptr %3, align 8, !tbaa !13
  %5 = tail call ptr %4(ptr noundef %0, i32 noundef 1, i64 noundef 184) #6
  %6 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 59
  store ptr %5, ptr %6, align 8, !tbaa !16
  store ptr @start_pass_phuff, ptr %5, align 8, !tbaa !17
  %7 = getelementptr i8, ptr %5, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %7, i8 0, i64 64, i1 false)
  %8 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %5, i64 0, i32 11
  store ptr null, ptr %8, align 8, !tbaa !20
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @start_pass_phuff(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 59
  %4 = load ptr, ptr %3, align 8, !tbaa !16
  %5 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 6
  store ptr %0, ptr %5, align 8, !tbaa !21
  %6 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 1
  store i32 %1, ptr %6, align 8, !tbaa !22
  %7 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 47
  %8 = load i32, ptr %7, align 4, !tbaa !23
  %9 = icmp eq i32 %8, 0
  %10 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 49
  %11 = load i32, ptr %10, align 4, !tbaa !24
  %12 = icmp eq i32 %11, 0
  %13 = getelementptr inbounds %struct.jpeg_entropy_encoder, ptr %4, i64 0, i32 1
  br i1 %12, label %14, label %17

14:                                               ; preds = %2
  br i1 %9, label %15, label %16

15:                                               ; preds = %14
  store ptr @encode_mcu_DC_first, ptr %13, align 8, !tbaa !25
  br label %28

16:                                               ; preds = %14
  store ptr @encode_mcu_AC_first, ptr %13, align 8, !tbaa !25
  br label %28

17:                                               ; preds = %2
  br i1 %9, label %18, label %19

18:                                               ; preds = %17
  store ptr @encode_mcu_DC_refine, ptr %13, align 8, !tbaa !25
  br label %28

19:                                               ; preds = %17
  store ptr @encode_mcu_AC_refine, ptr %13, align 8, !tbaa !25
  %20 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 11
  %21 = load ptr, ptr %20, align 8, !tbaa !20
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !5
  %26 = load ptr, ptr %25, align 8, !tbaa !13
  %27 = tail call ptr %26(ptr noundef %0, i32 noundef 1, i64 noundef 1000) #6
  store ptr %27, ptr %20, align 8, !tbaa !20
  br label %28

28:                                               ; preds = %18, %23, %19, %15, %16
  %29 = icmp ne i32 %1, 0
  %30 = getelementptr inbounds %struct.jpeg_entropy_encoder, ptr %4, i64 0, i32 2
  %31 = select i1 %29, ptr @finish_pass_gather_phuff, ptr @finish_pass_phuff
  store ptr %31, ptr %30, align 8, !tbaa !26
  %32 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 41
  %33 = load i32, ptr %32, align 4, !tbaa !27
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %99

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 8
  %37 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  br label %38

38:                                               ; preds = %35, %94
  %39 = phi i64 [ 0, %35 ], [ %95, %94 ]
  %40 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 42, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !28
  %42 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 7, i64 %39
  store i32 0, ptr %42, align 4, !tbaa !29
  br i1 %9, label %43, label %56

43:                                               ; preds = %38
  %44 = load i32, ptr %10, align 4, !tbaa !24
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %94

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.jpeg_component_info, ptr %41, i64 0, i32 5
  %48 = load i32, ptr %47, align 4, !tbaa !30
  %49 = icmp ugt i32 %48, 3
  br i1 %49, label %66, label %50

50:                                               ; preds = %46
  %51 = zext nneg i32 %48 to i64
  %52 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 16, i64 %51
  %53 = load ptr, ptr %52, align 8, !tbaa !28
  %54 = icmp ne ptr %53, null
  %55 = or i1 %29, %54
  br i1 %55, label %73, label %66

56:                                               ; preds = %38
  %57 = getelementptr inbounds %struct.jpeg_component_info, ptr %41, i64 0, i32 6
  %58 = load i32, ptr %57, align 8, !tbaa !32
  store i32 %58, ptr %36, align 8, !tbaa !33
  %59 = icmp ugt i32 %58, 3
  br i1 %59, label %66, label %60

60:                                               ; preds = %56
  %61 = zext nneg i32 %58 to i64
  %62 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 17, i64 %61
  %63 = load ptr, ptr %62, align 8, !tbaa !28
  %64 = icmp ne ptr %63, null
  %65 = or i1 %29, %64
  br i1 %65, label %73, label %66

66:                                               ; preds = %56, %60, %46, %50
  %67 = phi i32 [ %48, %50 ], [ %48, %46 ], [ %58, %60 ], [ %58, %56 ]
  %68 = load ptr, ptr %0, align 8, !tbaa !34
  %69 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %68, i64 0, i32 5
  store i32 49, ptr %69, align 8, !tbaa !35
  %70 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %68, i64 0, i32 6
  store i32 %67, ptr %70, align 4, !tbaa !37
  %71 = load ptr, ptr %0, align 8, !tbaa !34
  %72 = load ptr, ptr %71, align 8, !tbaa !38
  tail call void %72(ptr noundef nonnull %0) #6
  br label %73

73:                                               ; preds = %66, %60, %50
  %74 = phi i32 [ %48, %50 ], [ %58, %60 ], [ %67, %66 ]
  %75 = sext i32 %74 to i64
  br i1 %29, label %76, label %86

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 15, i64 %75
  %78 = load ptr, ptr %77, align 8, !tbaa !28
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = load ptr, ptr %37, align 8, !tbaa !5
  %82 = load ptr, ptr %81, align 8, !tbaa !13
  %83 = tail call ptr %82(ptr noundef %0, i32 noundef 1, i64 noundef 2056) #6
  store ptr %83, ptr %77, align 8, !tbaa !28
  br label %84

84:                                               ; preds = %80, %76
  %85 = load ptr, ptr %77, align 8, !tbaa !28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(2056) %85, i8 0, i64 2056, i1 false)
  br label %94

86:                                               ; preds = %73
  %87 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 14, i64 %75
  br i1 %9, label %88, label %91

88:                                               ; preds = %86
  %89 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 16, i64 %75
  %90 = load ptr, ptr %89, align 8, !tbaa !28
  tail call void @jpeg_make_c_derived_tbl(ptr noundef %0, ptr noundef %90, ptr noundef nonnull %87) #6
  br label %94

91:                                               ; preds = %86
  %92 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 17, i64 %75
  %93 = load ptr, ptr %92, align 8, !tbaa !28
  tail call void @jpeg_make_c_derived_tbl(ptr noundef %0, ptr noundef %93, ptr noundef nonnull %87) #6
  br label %94

94:                                               ; preds = %84, %91, %88, %43
  %95 = add nuw nsw i64 %39, 1
  %96 = load i32, ptr %32, align 4, !tbaa !27
  %97 = sext i32 %96 to i64
  %98 = icmp slt i64 %95, %97
  br i1 %98, label %38, label %99, !llvm.loop !39

99:                                               ; preds = %94, %28
  %100 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 9
  store i32 0, ptr %100, align 4, !tbaa !41
  %101 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 10
  store i32 0, ptr %101, align 8, !tbaa !42
  %102 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 4
  store i64 0, ptr %102, align 8, !tbaa !43
  %103 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 5
  store i32 0, ptr %103, align 8, !tbaa !44
  %104 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 29
  %105 = load i32, ptr %104, align 8, !tbaa !45
  %106 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 12
  store i32 %105, ptr %106, align 8, !tbaa !46
  %107 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 13
  store i32 0, ptr %107, align 4, !tbaa !47
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @encode_mcu_DC_first(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 59
  %4 = load ptr, ptr %3, align 8, !tbaa !16
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 50
  %6 = load i32, ptr %5, align 8, !tbaa !48
  %7 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !49
  %9 = load ptr, ptr %8, align 8, !tbaa !50
  %10 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 2
  store ptr %9, ptr %10, align 8, !tbaa !52
  %11 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %8, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !53
  %13 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 3
  store i64 %12, ptr %13, align 8, !tbaa !54
  %14 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 29
  %15 = load i32, ptr %14, align 8, !tbaa !45
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 12
  %19 = load i32, ptr %18, align 8, !tbaa !46
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 13
  %23 = load i32, ptr %22, align 4, !tbaa !47
  tail call fastcc void @emit_restart(ptr noundef %4, i32 noundef %23)
  br label %24

24:                                               ; preds = %17, %21, %2
  %25 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 45
  %26 = load i32, ptr %25, align 8, !tbaa !55
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %86

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 1
  br label %30

30:                                               ; preds = %28, %81
  %31 = phi i64 [ 0, %28 ], [ %82, %81 ]
  %32 = getelementptr inbounds ptr, ptr %1, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !28
  %34 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 46, i64 %31
  %35 = load i32, ptr %34, align 4, !tbaa !29
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 42, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !28
  %39 = load i16, ptr %33, align 2, !tbaa !56
  %40 = sext i16 %39 to i32
  %41 = ashr i32 %40, %6
  %42 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 7, i64 %36
  %43 = load i32, ptr %42, align 4, !tbaa !29
  %44 = sub nsw i32 %41, %43
  store i32 %41, ptr %42, align 4, !tbaa !29
  %45 = ashr i32 %44, 31
  %46 = add nsw i32 %45, %44
  %47 = icmp eq i32 %41, %43
  br i1 %47, label %56, label %48

48:                                               ; preds = %30
  %49 = tail call i32 @llvm.abs.i32(i32 %44, i1 true)
  br label %50

50:                                               ; preds = %48, %50
  %51 = phi i32 [ %54, %50 ], [ %49, %48 ]
  %52 = phi i32 [ %53, %50 ], [ 0, %48 ]
  %53 = add nuw nsw i32 %52, 1
  %54 = lshr i32 %51, 1
  %55 = icmp ult i32 %51, 2
  br i1 %55, label %56, label %50, !llvm.loop !57

56:                                               ; preds = %50, %30
  %57 = phi i32 [ 0, %30 ], [ %53, %50 ]
  %58 = getelementptr inbounds %struct.jpeg_component_info, ptr %38, i64 0, i32 5
  %59 = load i32, ptr %58, align 4, !tbaa !30
  %60 = load i32, ptr %29, align 8, !tbaa !22
  %61 = icmp eq i32 %60, 0
  %62 = sext i32 %59 to i64
  %63 = zext nneg i32 %57 to i64
  br i1 %61, label %70, label %64

64:                                               ; preds = %56
  %65 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 15, i64 %62
  %66 = load ptr, ptr %65, align 8, !tbaa !28
  %67 = getelementptr inbounds i64, ptr %66, i64 %63
  %68 = load i64, ptr %67, align 8, !tbaa !58
  %69 = add nsw i64 %68, 1
  store i64 %69, ptr %67, align 8, !tbaa !58
  br label %78

70:                                               ; preds = %56
  %71 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 14, i64 %62
  %72 = load ptr, ptr %71, align 8, !tbaa !28
  %73 = getelementptr inbounds [256 x i32], ptr %72, i64 0, i64 %63
  %74 = load i32, ptr %73, align 4, !tbaa !29
  %75 = getelementptr inbounds %struct.c_derived_tbl, ptr %72, i64 0, i32 1, i64 %63
  %76 = load i8, ptr %75, align 1, !tbaa !37
  %77 = sext i8 %76 to i32
  tail call fastcc void @emit_bits(ptr noundef %4, i32 noundef %74, i32 noundef %77)
  br label %78

78:                                               ; preds = %64, %70
  %79 = icmp eq i32 %57, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %78
  tail call fastcc void @emit_bits(ptr noundef %4, i32 noundef %46, i32 noundef %57)
  br label %81

81:                                               ; preds = %78, %80
  %82 = add nuw nsw i64 %31, 1
  %83 = load i32, ptr %25, align 8, !tbaa !55
  %84 = sext i32 %83 to i64
  %85 = icmp slt i64 %82, %84
  br i1 %85, label %30, label %86, !llvm.loop !59

86:                                               ; preds = %81, %24
  %87 = load ptr, ptr %10, align 8, !tbaa !52
  %88 = load ptr, ptr %7, align 8, !tbaa !49
  store ptr %87, ptr %88, align 8, !tbaa !50
  %89 = load i64, ptr %13, align 8, !tbaa !54
  %90 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %88, i64 0, i32 1
  store i64 %89, ptr %90, align 8, !tbaa !53
  %91 = load i32, ptr %14, align 8, !tbaa !45
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %105, label %93

93:                                               ; preds = %86
  %94 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 12
  %95 = load i32, ptr %94, align 8, !tbaa !46
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %93
  store i32 %91, ptr %94, align 8, !tbaa !46
  %98 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 13
  %99 = load i32, ptr %98, align 4, !tbaa !47
  %100 = add nsw i32 %99, 1
  %101 = and i32 %100, 7
  store i32 %101, ptr %98, align 4, !tbaa !47
  br label %102

102:                                              ; preds = %97, %93
  %103 = load i32, ptr %94, align 8, !tbaa !46
  %104 = add i32 %103, -1
  store i32 %104, ptr %94, align 8, !tbaa !46
  br label %105

105:                                              ; preds = %102, %86
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @encode_mcu_AC_first(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 59
  %4 = load ptr, ptr %3, align 8, !tbaa !16
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 48
  %6 = load i32, ptr %5, align 8, !tbaa !60
  %7 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 50
  %8 = load i32, ptr %7, align 8, !tbaa !48
  %9 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !49
  %11 = load ptr, ptr %10, align 8, !tbaa !50
  %12 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !52
  %13 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %10, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !53
  %15 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 3
  store i64 %14, ptr %15, align 8, !tbaa !54
  %16 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 29
  %17 = load i32, ptr %16, align 8, !tbaa !45
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 12
  %21 = load i32, ptr %20, align 8, !tbaa !46
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 13
  %25 = load i32, ptr %24, align 4, !tbaa !47
  tail call fastcc void @emit_restart(ptr noundef %4, i32 noundef %25)
  br label %26

26:                                               ; preds = %19, %23, %2
  %27 = load ptr, ptr %1, align 8, !tbaa !28
  %28 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 47
  %29 = load i32, ptr %28, align 4, !tbaa !23
  %30 = icmp sgt i32 %29, %6
  br i1 %30, label %137, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 9
  %33 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 8
  %34 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 1
  %35 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 8
  %36 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 1
  %37 = sext i32 %29 to i64
  %38 = add i32 %6, 1
  br label %39

39:                                               ; preds = %31, %124
  %40 = phi i64 [ %37, %31 ], [ %126, %124 ]
  %41 = phi i32 [ 0, %31 ], [ %125, %124 ]
  %42 = getelementptr inbounds [0 x i32], ptr @jpeg_natural_order, i64 0, i64 %40
  %43 = load i32, ptr %42, align 4, !tbaa !29
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [64 x i16], ptr %27, i64 0, i64 %44
  %46 = load i16, ptr %45, align 2, !tbaa !56
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %39
  %49 = add nsw i32 %41, 1
  br label %124

50:                                               ; preds = %39
  %51 = sext i16 %46 to i32
  %52 = icmp slt i16 %46, 0
  %53 = sub nsw i32 0, %51
  %54 = lshr i32 %53, %8
  %55 = xor i32 %54, -1
  %56 = lshr i32 %51, %8
  %57 = select i1 %52, i32 %55, i32 %56
  %58 = select i1 %52, i32 %54, i32 %56
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %50
  %61 = add nsw i32 %41, 1
  br label %124

62:                                               ; preds = %50
  %63 = load i32, ptr %32, align 4, !tbaa !41
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %62
  tail call fastcc void @emit_eobrun(ptr noundef %4)
  br label %66

66:                                               ; preds = %65, %62
  %67 = icmp sgt i32 %41, 15
  br i1 %67, label %71, label %68

68:                                               ; preds = %91, %66
  %69 = phi i32 [ %41, %66 ], [ %92, %91 ]
  %70 = icmp eq i32 %58, 1
  br i1 %70, label %100, label %94

71:                                               ; preds = %66, %91
  %72 = phi i32 [ %92, %91 ], [ %41, %66 ]
  %73 = load i32, ptr %33, align 8, !tbaa !33
  %74 = load i32, ptr %34, align 8, !tbaa !22
  %75 = icmp eq i32 %74, 0
  %76 = sext i32 %73 to i64
  br i1 %75, label %83, label %77

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 15, i64 %76
  %79 = load ptr, ptr %78, align 8, !tbaa !28
  %80 = getelementptr inbounds i64, ptr %79, i64 240
  %81 = load i64, ptr %80, align 8, !tbaa !58
  %82 = add nsw i64 %81, 1
  store i64 %82, ptr %80, align 8, !tbaa !58
  br label %91

83:                                               ; preds = %71
  %84 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 14, i64 %76
  %85 = load ptr, ptr %84, align 8, !tbaa !28
  %86 = getelementptr inbounds [256 x i32], ptr %85, i64 0, i64 240
  %87 = load i32, ptr %86, align 4, !tbaa !29
  %88 = getelementptr inbounds %struct.c_derived_tbl, ptr %85, i64 0, i32 1, i64 240
  %89 = load i8, ptr %88, align 1, !tbaa !37
  %90 = sext i8 %89 to i32
  tail call fastcc void @emit_bits(ptr noundef %4, i32 noundef %87, i32 noundef %90)
  br label %91

91:                                               ; preds = %77, %83
  %92 = add nsw i32 %72, -16
  %93 = icmp sgt i32 %72, 31
  br i1 %93, label %71, label %68, !llvm.loop !61

94:                                               ; preds = %68, %94
  %95 = phi i32 [ %97, %94 ], [ %58, %68 ]
  %96 = phi i32 [ %98, %94 ], [ 1, %68 ]
  %97 = lshr i32 %95, 1
  %98 = add nuw nsw i32 %96, 1
  %99 = icmp ult i32 %95, 4
  br i1 %99, label %100, label %94, !llvm.loop !62

100:                                              ; preds = %94, %68
  %101 = phi i32 [ 1, %68 ], [ %98, %94 ]
  %102 = load i32, ptr %35, align 8, !tbaa !33
  %103 = shl i32 %69, 4
  %104 = add nsw i32 %101, %103
  %105 = load i32, ptr %36, align 8, !tbaa !22
  %106 = icmp eq i32 %105, 0
  %107 = sext i32 %102 to i64
  %108 = sext i32 %104 to i64
  br i1 %106, label %115, label %109

109:                                              ; preds = %100
  %110 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 15, i64 %107
  %111 = load ptr, ptr %110, align 8, !tbaa !28
  %112 = getelementptr inbounds i64, ptr %111, i64 %108
  %113 = load i64, ptr %112, align 8, !tbaa !58
  %114 = add nsw i64 %113, 1
  store i64 %114, ptr %112, align 8, !tbaa !58
  br label %123

115:                                              ; preds = %100
  %116 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 14, i64 %107
  %117 = load ptr, ptr %116, align 8, !tbaa !28
  %118 = getelementptr inbounds [256 x i32], ptr %117, i64 0, i64 %108
  %119 = load i32, ptr %118, align 4, !tbaa !29
  %120 = getelementptr inbounds %struct.c_derived_tbl, ptr %117, i64 0, i32 1, i64 %108
  %121 = load i8, ptr %120, align 1, !tbaa !37
  %122 = sext i8 %121 to i32
  tail call fastcc void @emit_bits(ptr noundef %4, i32 noundef %119, i32 noundef %122)
  br label %123

123:                                              ; preds = %109, %115
  tail call fastcc void @emit_bits(ptr noundef %4, i32 noundef %57, i32 noundef %101)
  br label %124

124:                                              ; preds = %123, %60, %48
  %125 = phi i32 [ %49, %48 ], [ %61, %60 ], [ 0, %123 ]
  %126 = add nsw i64 %40, 1
  %127 = trunc i64 %126 to i32
  %128 = icmp eq i32 %38, %127
  br i1 %128, label %129, label %39, !llvm.loop !63

129:                                              ; preds = %124
  %130 = icmp sgt i32 %125, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %129
  %132 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 9
  %133 = load i32, ptr %132, align 4, !tbaa !41
  %134 = add i32 %133, 1
  store i32 %134, ptr %132, align 4, !tbaa !41
  %135 = icmp eq i32 %134, 32767
  br i1 %135, label %136, label %137

136:                                              ; preds = %131
  tail call fastcc void @emit_eobrun(ptr noundef %4)
  br label %137

137:                                              ; preds = %26, %131, %136, %129
  %138 = load ptr, ptr %12, align 8, !tbaa !52
  %139 = load ptr, ptr %9, align 8, !tbaa !49
  store ptr %138, ptr %139, align 8, !tbaa !50
  %140 = load i64, ptr %15, align 8, !tbaa !54
  %141 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %139, i64 0, i32 1
  store i64 %140, ptr %141, align 8, !tbaa !53
  %142 = load i32, ptr %16, align 8, !tbaa !45
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %156, label %144

144:                                              ; preds = %137
  %145 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 12
  %146 = load i32, ptr %145, align 8, !tbaa !46
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %144
  store i32 %142, ptr %145, align 8, !tbaa !46
  %149 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 13
  %150 = load i32, ptr %149, align 4, !tbaa !47
  %151 = add nsw i32 %150, 1
  %152 = and i32 %151, 7
  store i32 %152, ptr %149, align 4, !tbaa !47
  br label %153

153:                                              ; preds = %148, %144
  %154 = load i32, ptr %145, align 8, !tbaa !46
  %155 = add i32 %154, -1
  store i32 %155, ptr %145, align 8, !tbaa !46
  br label %156

156:                                              ; preds = %153, %137
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @encode_mcu_DC_refine(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 59
  %4 = load ptr, ptr %3, align 8, !tbaa !16
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 50
  %6 = load i32, ptr %5, align 8, !tbaa !48
  %7 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !49
  %9 = load ptr, ptr %8, align 8, !tbaa !50
  %10 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 2
  store ptr %9, ptr %10, align 8, !tbaa !52
  %11 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %8, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !53
  %13 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 3
  store i64 %12, ptr %13, align 8, !tbaa !54
  %14 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 29
  %15 = load i32, ptr %14, align 8, !tbaa !45
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 12
  %19 = load i32, ptr %18, align 8, !tbaa !46
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 13
  %23 = load i32, ptr %22, align 4, !tbaa !47
  tail call fastcc void @emit_restart(ptr noundef %4, i32 noundef %23)
  br label %24

24:                                               ; preds = %17, %21, %2
  %25 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 45
  %26 = load i32, ptr %25, align 8, !tbaa !55
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %118

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 5
  %30 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 1
  %31 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 4
  %32 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 6
  br label %33

33:                                               ; preds = %28, %113
  %34 = phi i64 [ 0, %28 ], [ %114, %113 ]
  %35 = load i32, ptr %30, align 8, !tbaa !22
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %113

37:                                               ; preds = %33
  %38 = load i32, ptr %29, align 8, !tbaa !44
  %39 = getelementptr inbounds ptr, ptr %1, i64 %34
  %40 = load ptr, ptr %39, align 8, !tbaa !28
  %41 = load i16, ptr %40, align 2, !tbaa !56
  %42 = sext i16 %41 to i32
  %43 = lshr i32 %42, %6
  %44 = and i32 %43, 1
  %45 = zext nneg i32 %44 to i64
  %46 = add nsw i32 %38, 1
  %47 = sub nsw i32 23, %38
  %48 = zext nneg i32 %47 to i64
  %49 = shl nuw i64 %45, %48
  %50 = load i64, ptr %31, align 8, !tbaa !43
  %51 = or i64 %49, %50
  %52 = icmp sgt i32 %38, 6
  br i1 %52, label %53, label %110

53:                                               ; preds = %37, %106
  %54 = phi i64 [ %107, %106 ], [ %51, %37 ]
  %55 = phi i32 [ %108, %106 ], [ %46, %37 ]
  %56 = lshr i64 %54, 16
  %57 = trunc i64 %56 to i8
  %58 = load ptr, ptr %10, align 8, !tbaa !52
  %59 = getelementptr inbounds i8, ptr %58, i64 1
  store ptr %59, ptr %10, align 8, !tbaa !52
  store i8 %57, ptr %58, align 1, !tbaa !37
  %60 = load i64, ptr %13, align 8, !tbaa !54
  %61 = add i64 %60, -1
  store i64 %61, ptr %13, align 8, !tbaa !54
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %80

63:                                               ; preds = %53
  %64 = load ptr, ptr %32, align 8, !tbaa !21
  %65 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %64, i64 0, i32 5
  %66 = load ptr, ptr %65, align 8, !tbaa !49
  %67 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %66, i64 0, i32 3
  %68 = load ptr, ptr %67, align 8, !tbaa !64
  %69 = tail call i32 %68(ptr noundef %64) #6
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %63
  %72 = load ptr, ptr %32, align 8, !tbaa !21
  %73 = load ptr, ptr %72, align 8, !tbaa !34
  %74 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %73, i64 0, i32 5
  store i32 22, ptr %74, align 8, !tbaa !35
  %75 = load ptr, ptr %73, align 8, !tbaa !38
  tail call void %75(ptr noundef nonnull %72) #6
  br label %76

76:                                               ; preds = %71, %63
  %77 = load ptr, ptr %66, align 8, !tbaa !50
  store ptr %77, ptr %10, align 8, !tbaa !52
  %78 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %66, i64 0, i32 1
  %79 = load i64, ptr %78, align 8, !tbaa !53
  store i64 %79, ptr %13, align 8, !tbaa !54
  br label %80

80:                                               ; preds = %76, %53
  %81 = and i64 %54, 16711680
  %82 = icmp eq i64 %81, 16711680
  br i1 %82, label %83, label %106

83:                                               ; preds = %80
  %84 = load ptr, ptr %10, align 8, !tbaa !52
  %85 = getelementptr inbounds i8, ptr %84, i64 1
  store ptr %85, ptr %10, align 8, !tbaa !52
  store i8 0, ptr %84, align 1, !tbaa !37
  %86 = load i64, ptr %13, align 8, !tbaa !54
  %87 = add i64 %86, -1
  store i64 %87, ptr %13, align 8, !tbaa !54
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %106

89:                                               ; preds = %83
  %90 = load ptr, ptr %32, align 8, !tbaa !21
  %91 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %90, i64 0, i32 5
  %92 = load ptr, ptr %91, align 8, !tbaa !49
  %93 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %92, i64 0, i32 3
  %94 = load ptr, ptr %93, align 8, !tbaa !64
  %95 = tail call i32 %94(ptr noundef %90) #6
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %89
  %98 = load ptr, ptr %32, align 8, !tbaa !21
  %99 = load ptr, ptr %98, align 8, !tbaa !34
  %100 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %99, i64 0, i32 5
  store i32 22, ptr %100, align 8, !tbaa !35
  %101 = load ptr, ptr %99, align 8, !tbaa !38
  tail call void %101(ptr noundef nonnull %98) #6
  br label %102

102:                                              ; preds = %97, %89
  %103 = load ptr, ptr %92, align 8, !tbaa !50
  store ptr %103, ptr %10, align 8, !tbaa !52
  %104 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %92, i64 0, i32 1
  %105 = load i64, ptr %104, align 8, !tbaa !53
  store i64 %105, ptr %13, align 8, !tbaa !54
  br label %106

106:                                              ; preds = %102, %83, %80
  %107 = shl i64 %54, 8
  %108 = add nsw i32 %55, -8
  %109 = icmp sgt i32 %55, 15
  br i1 %109, label %53, label %110, !llvm.loop !65

110:                                              ; preds = %106, %37
  %111 = phi i32 [ %46, %37 ], [ %108, %106 ]
  %112 = phi i64 [ %51, %37 ], [ %107, %106 ]
  store i64 %112, ptr %31, align 8, !tbaa !43
  store i32 %111, ptr %29, align 8, !tbaa !44
  br label %113

113:                                              ; preds = %33, %110
  %114 = add nuw nsw i64 %34, 1
  %115 = load i32, ptr %25, align 8, !tbaa !55
  %116 = sext i32 %115 to i64
  %117 = icmp slt i64 %114, %116
  br i1 %117, label %33, label %118, !llvm.loop !66

118:                                              ; preds = %113, %24
  %119 = load ptr, ptr %10, align 8, !tbaa !52
  %120 = load ptr, ptr %7, align 8, !tbaa !49
  store ptr %119, ptr %120, align 8, !tbaa !50
  %121 = load i64, ptr %13, align 8, !tbaa !54
  %122 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %120, i64 0, i32 1
  store i64 %121, ptr %122, align 8, !tbaa !53
  %123 = load i32, ptr %14, align 8, !tbaa !45
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %137, label %125

125:                                              ; preds = %118
  %126 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 12
  %127 = load i32, ptr %126, align 8, !tbaa !46
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %125
  store i32 %123, ptr %126, align 8, !tbaa !46
  %130 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 13
  %131 = load i32, ptr %130, align 4, !tbaa !47
  %132 = add nsw i32 %131, 1
  %133 = and i32 %132, 7
  store i32 %133, ptr %130, align 4, !tbaa !47
  br label %134

134:                                              ; preds = %129, %125
  %135 = load i32, ptr %126, align 8, !tbaa !46
  %136 = add i32 %135, -1
  store i32 %136, ptr %126, align 8, !tbaa !46
  br label %137

137:                                              ; preds = %134, %118
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @encode_mcu_AC_refine(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [64 x i32], align 16
  %4 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 59
  %5 = load ptr, ptr %4, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 48
  %7 = load i32, ptr %6, align 8, !tbaa !60
  %8 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 50
  %9 = load i32, ptr %8, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #6
  %10 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !49
  %12 = load ptr, ptr %11, align 8, !tbaa !50
  %13 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %5, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !52
  %14 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %11, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !53
  %16 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %5, i64 0, i32 3
  store i64 %15, ptr %16, align 8, !tbaa !54
  %17 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 29
  %18 = load i32, ptr %17, align 8, !tbaa !45
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %5, i64 0, i32 12
  %22 = load i32, ptr %21, align 8, !tbaa !46
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %5, i64 0, i32 13
  %26 = load i32, ptr %25, align 4, !tbaa !47
  tail call fastcc void @emit_restart(ptr noundef %5, i32 noundef %26)
  br label %27

27:                                               ; preds = %20, %24, %2
  %28 = load ptr, ptr %1, align 8, !tbaa !28
  %29 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 47
  %30 = load i32, ptr %29, align 4, !tbaa !23
  %31 = icmp sgt i32 %30, %7
  br i1 %31, label %55, label %32

32:                                               ; preds = %27
  %33 = sext i32 %30 to i64
  %34 = add i32 %7, 1
  br label %35

35:                                               ; preds = %32, %35
  %36 = phi i64 [ %33, %32 ], [ %50, %35 ]
  %37 = phi i32 [ 0, %32 ], [ %49, %35 ]
  %38 = getelementptr inbounds [0 x i32], ptr @jpeg_natural_order, i64 0, i64 %36
  %39 = load i32, ptr %38, align 4, !tbaa !29
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [64 x i16], ptr %28, i64 0, i64 %40
  %42 = load i16, ptr %41, align 2, !tbaa !56
  %43 = tail call i16 @llvm.abs.i16(i16 %42, i1 false)
  %44 = zext i16 %43 to i32
  %45 = lshr i32 %44, %9
  %46 = getelementptr inbounds [64 x i32], ptr %3, i64 0, i64 %36
  store i32 %45, ptr %46, align 4, !tbaa !29
  %47 = icmp eq i32 %45, 1
  %48 = trunc i64 %36 to i32
  %49 = select i1 %47, i32 %48, i32 %37
  %50 = add nsw i64 %36, 1
  %51 = trunc i64 %50 to i32
  %52 = icmp eq i32 %34, %51
  br i1 %52, label %53, label %35, !llvm.loop !67

53:                                               ; preds = %35
  %54 = sext i32 %49 to i64
  br label %55

55:                                               ; preds = %53, %27
  %56 = phi i64 [ 0, %27 ], [ %54, %53 ]
  %57 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %5, i64 0, i32 11
  %58 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %5, i64 0, i32 10
  %59 = icmp sgt i32 %30, %7
  br i1 %59, label %238, label %60

60:                                               ; preds = %55
  %61 = load ptr, ptr %57, align 8, !tbaa !20
  %62 = load i32, ptr %58, align 8, !tbaa !42
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i8, ptr %61, i64 %63
  %65 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %5, i64 0, i32 8
  %66 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %5, i64 0, i32 1
  %67 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %5, i64 0, i32 8
  %68 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %5, i64 0, i32 1
  %69 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %5, i64 0, i32 5
  %70 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %5, i64 0, i32 4
  %71 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %5, i64 0, i32 6
  %72 = sext i32 %30 to i64
  %73 = add i32 %7, 1
  br label %74

74:                                               ; preds = %60, %229
  %75 = phi i64 [ %72, %60 ], [ %233, %229 ]
  %76 = phi i32 [ 0, %60 ], [ %232, %229 ]
  %77 = phi i32 [ 0, %60 ], [ %231, %229 ]
  %78 = phi ptr [ %64, %60 ], [ %230, %229 ]
  %79 = getelementptr inbounds [64 x i32], ptr %3, i64 0, i64 %75
  %80 = load i32, ptr %79, align 4, !tbaa !29
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %74
  %83 = icmp sle i64 %75, %56
  %84 = icmp sgt i32 %76, 15
  %85 = select i1 %84, i1 %83, i1 false
  br i1 %85, label %88, label %115

86:                                               ; preds = %74
  %87 = add nsw i32 %76, 1
  br label %229

88:                                               ; preds = %82, %110
  %89 = phi i32 [ %111, %110 ], [ %76, %82 ]
  %90 = phi i32 [ 0, %110 ], [ %77, %82 ]
  %91 = phi ptr [ %112, %110 ], [ %78, %82 ]
  tail call fastcc void @emit_eobrun(ptr noundef %5)
  %92 = load i32, ptr %65, align 8, !tbaa !33
  %93 = load i32, ptr %66, align 8, !tbaa !22
  %94 = icmp eq i32 %93, 0
  %95 = sext i32 %92 to i64
  br i1 %94, label %102, label %96

96:                                               ; preds = %88
  %97 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %5, i64 0, i32 15, i64 %95
  %98 = load ptr, ptr %97, align 8, !tbaa !28
  %99 = getelementptr inbounds i64, ptr %98, i64 240
  %100 = load i64, ptr %99, align 8, !tbaa !58
  %101 = add nsw i64 %100, 1
  store i64 %101, ptr %99, align 8, !tbaa !58
  br label %110

102:                                              ; preds = %88
  %103 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %5, i64 0, i32 14, i64 %95
  %104 = load ptr, ptr %103, align 8, !tbaa !28
  %105 = getelementptr inbounds [256 x i32], ptr %104, i64 0, i64 240
  %106 = load i32, ptr %105, align 4, !tbaa !29
  %107 = getelementptr inbounds %struct.c_derived_tbl, ptr %104, i64 0, i32 1, i64 240
  %108 = load i8, ptr %107, align 1, !tbaa !37
  %109 = sext i8 %108 to i32
  tail call fastcc void @emit_bits(ptr noundef %5, i32 noundef %106, i32 noundef %109)
  br label %110

110:                                              ; preds = %96, %102
  %111 = add nsw i32 %89, -16
  tail call fastcc void @emit_buffered_bits(ptr noundef %5, ptr noundef %91, i32 noundef %90)
  %112 = load ptr, ptr %57, align 8, !tbaa !20
  %113 = icmp sgt i32 %89, 31
  %114 = select i1 %113, i1 %83, i1 false
  br i1 %114, label %88, label %115, !llvm.loop !68

115:                                              ; preds = %110, %82
  %116 = phi ptr [ %78, %82 ], [ %112, %110 ]
  %117 = phi i32 [ %77, %82 ], [ 0, %110 ]
  %118 = phi i32 [ %76, %82 ], [ %111, %110 ]
  %119 = icmp sgt i32 %80, 1
  br i1 %119, label %120, label %126

120:                                              ; preds = %115
  %121 = trunc i32 %80 to i8
  %122 = and i8 %121, 1
  %123 = add i32 %117, 1
  %124 = zext i32 %117 to i64
  %125 = getelementptr inbounds i8, ptr %116, i64 %124
  store i8 %122, ptr %125, align 1, !tbaa !37
  br label %229

126:                                              ; preds = %115
  tail call fastcc void @emit_eobrun(ptr noundef %5)
  %127 = load i32, ptr %67, align 8, !tbaa !33
  %128 = shl i32 %118, 4
  %129 = or disjoint i32 %128, 1
  %130 = load i32, ptr %68, align 8, !tbaa !22
  %131 = icmp eq i32 %130, 0
  %132 = sext i32 %127 to i64
  %133 = sext i32 %129 to i64
  br i1 %131, label %140, label %134

134:                                              ; preds = %126
  %135 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %5, i64 0, i32 15, i64 %132
  %136 = load ptr, ptr %135, align 8, !tbaa !28
  %137 = getelementptr inbounds i64, ptr %136, i64 %133
  %138 = load i64, ptr %137, align 8, !tbaa !58
  %139 = add nsw i64 %138, 1
  store i64 %139, ptr %137, align 8, !tbaa !58
  br label %148

140:                                              ; preds = %126
  %141 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %5, i64 0, i32 14, i64 %132
  %142 = load ptr, ptr %141, align 8, !tbaa !28
  %143 = getelementptr inbounds [256 x i32], ptr %142, i64 0, i64 %133
  %144 = load i32, ptr %143, align 4, !tbaa !29
  %145 = getelementptr inbounds %struct.c_derived_tbl, ptr %142, i64 0, i32 1, i64 %133
  %146 = load i8, ptr %145, align 1, !tbaa !37
  %147 = sext i8 %146 to i32
  tail call fastcc void @emit_bits(ptr noundef %5, i32 noundef %144, i32 noundef %147)
  br label %148

148:                                              ; preds = %134, %140
  %149 = load i32, ptr %68, align 8, !tbaa !22
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %227

151:                                              ; preds = %148
  %152 = load i32, ptr %69, align 8, !tbaa !44
  %153 = getelementptr inbounds [0 x i32], ptr @jpeg_natural_order, i64 0, i64 %75
  %154 = load i32, ptr %153, align 4, !tbaa !29
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds [64 x i16], ptr %28, i64 0, i64 %155
  %157 = load i16, ptr %156, align 2, !tbaa !56
  %158 = icmp sgt i16 %157, -1
  %159 = zext i1 %158 to i64
  %160 = add nsw i32 %152, 1
  %161 = sub nsw i32 23, %152
  %162 = zext nneg i32 %161 to i64
  %163 = shl nuw i64 %159, %162
  %164 = load i64, ptr %70, align 8, !tbaa !43
  %165 = or i64 %163, %164
  %166 = icmp sgt i32 %152, 6
  br i1 %166, label %167, label %224

167:                                              ; preds = %151, %220
  %168 = phi i64 [ %221, %220 ], [ %165, %151 ]
  %169 = phi i32 [ %222, %220 ], [ %160, %151 ]
  %170 = lshr i64 %168, 16
  %171 = trunc i64 %170 to i8
  %172 = load ptr, ptr %13, align 8, !tbaa !52
  %173 = getelementptr inbounds i8, ptr %172, i64 1
  store ptr %173, ptr %13, align 8, !tbaa !52
  store i8 %171, ptr %172, align 1, !tbaa !37
  %174 = load i64, ptr %16, align 8, !tbaa !54
  %175 = add i64 %174, -1
  store i64 %175, ptr %16, align 8, !tbaa !54
  %176 = icmp eq i64 %175, 0
  br i1 %176, label %177, label %194

177:                                              ; preds = %167
  %178 = load ptr, ptr %71, align 8, !tbaa !21
  %179 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %178, i64 0, i32 5
  %180 = load ptr, ptr %179, align 8, !tbaa !49
  %181 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %180, i64 0, i32 3
  %182 = load ptr, ptr %181, align 8, !tbaa !64
  %183 = tail call i32 %182(ptr noundef %178) #6
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %190

185:                                              ; preds = %177
  %186 = load ptr, ptr %71, align 8, !tbaa !21
  %187 = load ptr, ptr %186, align 8, !tbaa !34
  %188 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %187, i64 0, i32 5
  store i32 22, ptr %188, align 8, !tbaa !35
  %189 = load ptr, ptr %187, align 8, !tbaa !38
  tail call void %189(ptr noundef nonnull %186) #6
  br label %190

190:                                              ; preds = %185, %177
  %191 = load ptr, ptr %180, align 8, !tbaa !50
  store ptr %191, ptr %13, align 8, !tbaa !52
  %192 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %180, i64 0, i32 1
  %193 = load i64, ptr %192, align 8, !tbaa !53
  store i64 %193, ptr %16, align 8, !tbaa !54
  br label %194

194:                                              ; preds = %190, %167
  %195 = and i64 %168, 16711680
  %196 = icmp eq i64 %195, 16711680
  br i1 %196, label %197, label %220

197:                                              ; preds = %194
  %198 = load ptr, ptr %13, align 8, !tbaa !52
  %199 = getelementptr inbounds i8, ptr %198, i64 1
  store ptr %199, ptr %13, align 8, !tbaa !52
  store i8 0, ptr %198, align 1, !tbaa !37
  %200 = load i64, ptr %16, align 8, !tbaa !54
  %201 = add i64 %200, -1
  store i64 %201, ptr %16, align 8, !tbaa !54
  %202 = icmp eq i64 %201, 0
  br i1 %202, label %203, label %220

203:                                              ; preds = %197
  %204 = load ptr, ptr %71, align 8, !tbaa !21
  %205 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %204, i64 0, i32 5
  %206 = load ptr, ptr %205, align 8, !tbaa !49
  %207 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %206, i64 0, i32 3
  %208 = load ptr, ptr %207, align 8, !tbaa !64
  %209 = tail call i32 %208(ptr noundef %204) #6
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %216

211:                                              ; preds = %203
  %212 = load ptr, ptr %71, align 8, !tbaa !21
  %213 = load ptr, ptr %212, align 8, !tbaa !34
  %214 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %213, i64 0, i32 5
  store i32 22, ptr %214, align 8, !tbaa !35
  %215 = load ptr, ptr %213, align 8, !tbaa !38
  tail call void %215(ptr noundef nonnull %212) #6
  br label %216

216:                                              ; preds = %211, %203
  %217 = load ptr, ptr %206, align 8, !tbaa !50
  store ptr %217, ptr %13, align 8, !tbaa !52
  %218 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %206, i64 0, i32 1
  %219 = load i64, ptr %218, align 8, !tbaa !53
  store i64 %219, ptr %16, align 8, !tbaa !54
  br label %220

220:                                              ; preds = %216, %197, %194
  %221 = shl i64 %168, 8
  %222 = add nsw i32 %169, -8
  %223 = icmp sgt i32 %169, 15
  br i1 %223, label %167, label %224, !llvm.loop !65

224:                                              ; preds = %220, %151
  %225 = phi i32 [ %160, %151 ], [ %222, %220 ]
  %226 = phi i64 [ %165, %151 ], [ %221, %220 ]
  store i64 %226, ptr %70, align 8, !tbaa !43
  store i32 %225, ptr %69, align 8, !tbaa !44
  br label %227

227:                                              ; preds = %148, %224
  tail call fastcc void @emit_buffered_bits(ptr noundef %5, ptr noundef %116, i32 noundef %117)
  %228 = load ptr, ptr %57, align 8, !tbaa !20
  br label %229

229:                                              ; preds = %227, %120, %86
  %230 = phi ptr [ %78, %86 ], [ %116, %120 ], [ %228, %227 ]
  %231 = phi i32 [ %77, %86 ], [ %123, %120 ], [ 0, %227 ]
  %232 = phi i32 [ %87, %86 ], [ %118, %120 ], [ 0, %227 ]
  %233 = add nsw i64 %75, 1
  %234 = trunc i64 %233 to i32
  %235 = icmp eq i32 %73, %234
  br i1 %235, label %236, label %74, !llvm.loop !69

236:                                              ; preds = %229
  %237 = icmp sgt i32 %232, 0
  br label %238

238:                                              ; preds = %236, %55
  %239 = phi i32 [ 0, %55 ], [ %231, %236 ]
  %240 = phi i1 [ false, %55 ], [ %237, %236 ]
  %241 = icmp ne i32 %239, 0
  %242 = select i1 %240, i1 true, i1 %241
  br i1 %242, label %243, label %253

243:                                              ; preds = %238
  %244 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %5, i64 0, i32 9
  %245 = load i32, ptr %244, align 4, !tbaa !41
  %246 = add i32 %245, 1
  store i32 %246, ptr %244, align 4, !tbaa !41
  %247 = load i32, ptr %58, align 8, !tbaa !42
  %248 = add i32 %247, %239
  store i32 %248, ptr %58, align 8, !tbaa !42
  %249 = icmp eq i32 %246, 32767
  %250 = icmp ugt i32 %248, 937
  %251 = select i1 %249, i1 true, i1 %250
  br i1 %251, label %252, label %253

252:                                              ; preds = %243
  tail call fastcc void @emit_eobrun(ptr noundef %5)
  br label %253

253:                                              ; preds = %243, %252, %238
  %254 = load ptr, ptr %13, align 8, !tbaa !52
  %255 = load ptr, ptr %10, align 8, !tbaa !49
  store ptr %254, ptr %255, align 8, !tbaa !50
  %256 = load i64, ptr %16, align 8, !tbaa !54
  %257 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %255, i64 0, i32 1
  store i64 %256, ptr %257, align 8, !tbaa !53
  %258 = load i32, ptr %17, align 8, !tbaa !45
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %272, label %260

260:                                              ; preds = %253
  %261 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %5, i64 0, i32 12
  %262 = load i32, ptr %261, align 8, !tbaa !46
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %264, label %269

264:                                              ; preds = %260
  store i32 %258, ptr %261, align 8, !tbaa !46
  %265 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %5, i64 0, i32 13
  %266 = load i32, ptr %265, align 4, !tbaa !47
  %267 = add nsw i32 %266, 1
  %268 = and i32 %267, 7
  store i32 %268, ptr %265, align 4, !tbaa !47
  br label %269

269:                                              ; preds = %264, %260
  %270 = load i32, ptr %261, align 8, !tbaa !46
  %271 = add i32 %270, -1
  store i32 %271, ptr %261, align 8, !tbaa !46
  br label %272

272:                                              ; preds = %269, %253
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #6
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal void @finish_pass_gather_phuff(ptr noundef %0) #0 {
  %2 = alloca [4 x i32], align 16
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 59
  %4 = load ptr, ptr %3, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #6
  tail call fastcc void @emit_eobrun(ptr noundef %4)
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 47
  %6 = load i32, ptr %5, align 4, !tbaa !23
  %7 = icmp eq i32 %6, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %8 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 41
  %9 = load i32, ptr %8, align 4, !tbaa !27
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %48

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 49
  br label %13

13:                                               ; preds = %11, %43
  %14 = phi i64 [ 0, %11 ], [ %44, %43 ]
  %15 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 42, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !28
  br i1 %7, label %17, label %22

17:                                               ; preds = %13
  %18 = load i32, ptr %12, align 4, !tbaa !24
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %43

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.jpeg_component_info, ptr %16, i64 0, i32 5
  br label %24

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.jpeg_component_info, ptr %16, i64 0, i32 6
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi ptr [ %21, %20 ], [ %23, %22 ]
  %26 = load i32, ptr %25, align 4, !tbaa !29
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [4 x i32], ptr %2, i64 0, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !29
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 16, i64 %27
  %33 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 17, i64 %27
  %34 = select i1 %7, ptr %32, ptr %33
  %35 = load ptr, ptr %34, align 8, !tbaa !28
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = tail call ptr @jpeg_alloc_huff_table(ptr noundef %0) #6
  store ptr %38, ptr %34, align 8, !tbaa !28
  br label %39

39:                                               ; preds = %37, %31
  %40 = load ptr, ptr %34, align 8, !tbaa !28
  %41 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 15, i64 %27
  %42 = load ptr, ptr %41, align 8, !tbaa !28
  tail call void @jpeg_gen_optimal_table(ptr noundef %0, ptr noundef %40, ptr noundef %42) #6
  store i32 1, ptr %28, align 4, !tbaa !29
  br label %43

43:                                               ; preds = %24, %39, %17
  %44 = add nuw nsw i64 %14, 1
  %45 = load i32, ptr %8, align 4, !tbaa !27
  %46 = sext i32 %45 to i64
  %47 = icmp slt i64 %44, %46
  br i1 %47, label %13, label %48, !llvm.loop !70

48:                                               ; preds = %43, %1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @finish_pass_phuff(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 59
  %3 = load ptr, ptr %2, align 8, !tbaa !16
  %4 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !49
  %6 = load ptr, ptr %5, align 8, !tbaa !50
  %7 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %3, i64 0, i32 2
  store ptr %6, ptr %7, align 8, !tbaa !52
  %8 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %5, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !53
  %10 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %3, i64 0, i32 3
  store i64 %9, ptr %10, align 8, !tbaa !54
  tail call fastcc void @emit_eobrun(ptr noundef %3)
  tail call fastcc void @flush_bits(ptr noundef %3)
  %11 = load ptr, ptr %7, align 8, !tbaa !52
  %12 = load ptr, ptr %4, align 8, !tbaa !49
  store ptr %11, ptr %12, align 8, !tbaa !50
  %13 = load i64, ptr %10, align 8, !tbaa !54
  %14 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %12, i64 0, i32 1
  store i64 %13, ptr %14, align 8, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

declare void @jpeg_make_c_derived_tbl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @emit_restart(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  tail call fastcc void @emit_eobrun(ptr noundef %0)
  %3 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !22
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %58

6:                                                ; preds = %2
  tail call fastcc void @flush_bits(ptr noundef %0)
  %7 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !52
  %9 = getelementptr inbounds i8, ptr %8, i64 1
  store ptr %9, ptr %7, align 8, !tbaa !52
  store i8 -1, ptr %8, align 1, !tbaa !37
  %10 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 3
  %11 = load i64, ptr %10, align 8, !tbaa !54
  %12 = add i64 %11, -1
  store i64 %12, ptr %10, align 8, !tbaa !54
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %32

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !21
  %17 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %16, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !49
  %19 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %18, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !64
  %21 = tail call i32 %20(ptr noundef %16) #6
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %14
  %24 = load ptr, ptr %15, align 8, !tbaa !21
  %25 = load ptr, ptr %24, align 8, !tbaa !34
  %26 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %25, i64 0, i32 5
  store i32 22, ptr %26, align 8, !tbaa !35
  %27 = load ptr, ptr %25, align 8, !tbaa !38
  tail call void %27(ptr noundef nonnull %24) #6
  br label %28

28:                                               ; preds = %14, %23
  %29 = load ptr, ptr %18, align 8, !tbaa !50
  store ptr %29, ptr %7, align 8, !tbaa !52
  %30 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %18, i64 0, i32 1
  %31 = load i64, ptr %30, align 8, !tbaa !53
  store i64 %31, ptr %10, align 8, !tbaa !54
  br label %32

32:                                               ; preds = %28, %6
  %33 = trunc i32 %1 to i8
  %34 = add i8 %33, -48
  %35 = load ptr, ptr %7, align 8, !tbaa !52
  %36 = getelementptr inbounds i8, ptr %35, i64 1
  store ptr %36, ptr %7, align 8, !tbaa !52
  store i8 %34, ptr %35, align 1, !tbaa !37
  %37 = load i64, ptr %10, align 8, !tbaa !54
  %38 = add i64 %37, -1
  store i64 %38, ptr %10, align 8, !tbaa !54
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %58

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 6
  %42 = load ptr, ptr %41, align 8, !tbaa !21
  %43 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %42, i64 0, i32 5
  %44 = load ptr, ptr %43, align 8, !tbaa !49
  %45 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %44, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !64
  %47 = tail call i32 %46(ptr noundef %42) #6
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %40
  %50 = load ptr, ptr %41, align 8, !tbaa !21
  %51 = load ptr, ptr %50, align 8, !tbaa !34
  %52 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %51, i64 0, i32 5
  store i32 22, ptr %52, align 8, !tbaa !35
  %53 = load ptr, ptr %51, align 8, !tbaa !38
  tail call void %53(ptr noundef nonnull %50) #6
  br label %54

54:                                               ; preds = %40, %49
  %55 = load ptr, ptr %44, align 8, !tbaa !50
  store ptr %55, ptr %7, align 8, !tbaa !52
  %56 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %44, i64 0, i32 1
  %57 = load i64, ptr %56, align 8, !tbaa !53
  store i64 %57, ptr %10, align 8, !tbaa !54
  br label %58

58:                                               ; preds = %32, %54, %2
  %59 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 6
  %60 = load ptr, ptr %59, align 8, !tbaa !21
  %61 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %60, i64 0, i32 47
  %62 = load i32, ptr %61, align 4, !tbaa !23
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %60, i64 0, i32 41
  %66 = load i32, ptr %65, align 4, !tbaa !27
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %64, %68
  %69 = phi i64 [ %71, %68 ], [ 0, %64 ]
  %70 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 7, i64 %69
  store i32 0, ptr %70, align 4, !tbaa !29
  %71 = add nuw nsw i64 %69, 1
  %72 = load i32, ptr %65, align 4, !tbaa !27
  %73 = sext i32 %72 to i64
  %74 = icmp slt i64 %71, %73
  br i1 %74, label %68, label %78, !llvm.loop !71

75:                                               ; preds = %58
  %76 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 9
  store i32 0, ptr %76, align 4, !tbaa !41
  %77 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 10
  store i32 0, ptr %77, align 8, !tbaa !42
  br label %78

78:                                               ; preds = %68, %64, %75
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @emit_bits(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #4 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !44
  %7 = icmp eq i32 %2, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !21
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %11, i64 0, i32 5
  store i32 39, ptr %12, align 8, !tbaa !35
  %13 = load ptr, ptr %11, align 8, !tbaa !38
  tail call void %13(ptr noundef nonnull %10) #6
  br label %14

14:                                               ; preds = %8, %3
  %15 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !22
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %96

18:                                               ; preds = %14
  %19 = zext nneg i32 %2 to i64
  %20 = shl nsw i64 -1, %19
  %21 = xor i64 %20, -1
  %22 = and i64 %21, %4
  %23 = add nsw i32 %6, %2
  %24 = sub nsw i32 24, %23
  %25 = zext nneg i32 %24 to i64
  %26 = shl i64 %22, %25
  %27 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 4
  %28 = load i64, ptr %27, align 8, !tbaa !43
  %29 = or i64 %28, %26
  %30 = icmp sgt i32 %23, 7
  br i1 %30, label %31, label %93

31:                                               ; preds = %18
  %32 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 2
  %33 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 3
  %34 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 6
  %35 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 6
  br label %36

36:                                               ; preds = %31, %89
  %37 = phi i64 [ %29, %31 ], [ %90, %89 ]
  %38 = phi i32 [ %23, %31 ], [ %91, %89 ]
  %39 = lshr i64 %37, 16
  %40 = trunc i64 %39 to i8
  %41 = load ptr, ptr %32, align 8, !tbaa !52
  %42 = getelementptr inbounds i8, ptr %41, i64 1
  store ptr %42, ptr %32, align 8, !tbaa !52
  store i8 %40, ptr %41, align 1, !tbaa !37
  %43 = load i64, ptr %33, align 8, !tbaa !54
  %44 = add i64 %43, -1
  store i64 %44, ptr %33, align 8, !tbaa !54
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %63

46:                                               ; preds = %36
  %47 = load ptr, ptr %34, align 8, !tbaa !21
  %48 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %47, i64 0, i32 5
  %49 = load ptr, ptr %48, align 8, !tbaa !49
  %50 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %49, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !64
  %52 = tail call i32 %51(ptr noundef %47) #6
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %46
  %55 = load ptr, ptr %34, align 8, !tbaa !21
  %56 = load ptr, ptr %55, align 8, !tbaa !34
  %57 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %56, i64 0, i32 5
  store i32 22, ptr %57, align 8, !tbaa !35
  %58 = load ptr, ptr %56, align 8, !tbaa !38
  tail call void %58(ptr noundef nonnull %55) #6
  br label %59

59:                                               ; preds = %46, %54
  %60 = load ptr, ptr %49, align 8, !tbaa !50
  store ptr %60, ptr %32, align 8, !tbaa !52
  %61 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %49, i64 0, i32 1
  %62 = load i64, ptr %61, align 8, !tbaa !53
  store i64 %62, ptr %33, align 8, !tbaa !54
  br label %63

63:                                               ; preds = %59, %36
  %64 = and i64 %37, 16711680
  %65 = icmp eq i64 %64, 16711680
  br i1 %65, label %66, label %89

66:                                               ; preds = %63
  %67 = load ptr, ptr %32, align 8, !tbaa !52
  %68 = getelementptr inbounds i8, ptr %67, i64 1
  store ptr %68, ptr %32, align 8, !tbaa !52
  store i8 0, ptr %67, align 1, !tbaa !37
  %69 = load i64, ptr %33, align 8, !tbaa !54
  %70 = add i64 %69, -1
  store i64 %70, ptr %33, align 8, !tbaa !54
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %89

72:                                               ; preds = %66
  %73 = load ptr, ptr %35, align 8, !tbaa !21
  %74 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %73, i64 0, i32 5
  %75 = load ptr, ptr %74, align 8, !tbaa !49
  %76 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %75, i64 0, i32 3
  %77 = load ptr, ptr %76, align 8, !tbaa !64
  %78 = tail call i32 %77(ptr noundef %73) #6
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %72
  %81 = load ptr, ptr %35, align 8, !tbaa !21
  %82 = load ptr, ptr %81, align 8, !tbaa !34
  %83 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %82, i64 0, i32 5
  store i32 22, ptr %83, align 8, !tbaa !35
  %84 = load ptr, ptr %82, align 8, !tbaa !38
  tail call void %84(ptr noundef nonnull %81) #6
  br label %85

85:                                               ; preds = %72, %80
  %86 = load ptr, ptr %75, align 8, !tbaa !50
  store ptr %86, ptr %32, align 8, !tbaa !52
  %87 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %75, i64 0, i32 1
  %88 = load i64, ptr %87, align 8, !tbaa !53
  store i64 %88, ptr %33, align 8, !tbaa !54
  br label %89

89:                                               ; preds = %66, %85, %63
  %90 = shl i64 %37, 8
  %91 = add nsw i32 %38, -8
  %92 = icmp sgt i32 %38, 15
  br i1 %92, label %36, label %93, !llvm.loop !65

93:                                               ; preds = %89, %18
  %94 = phi i32 [ %23, %18 ], [ %91, %89 ]
  %95 = phi i64 [ %29, %18 ], [ %90, %89 ]
  store i64 %95, ptr %27, align 8, !tbaa !43
  store i32 %94, ptr %5, align 8, !tbaa !44
  br label %96

96:                                               ; preds = %14, %93
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @emit_eobrun(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 4, !tbaa !41
  switch i32 %3, label %4 [
    i32 0, label %43
    i32 1, label %10
  ]

4:                                                ; preds = %1, %4
  %5 = phi i32 [ %8, %4 ], [ 0, %1 ]
  %6 = phi i32 [ %7, %4 ], [ %3, %1 ]
  %7 = ashr i32 %6, 1
  %8 = add nuw nsw i32 %5, 1
  %9 = icmp ult i32 %7, 2
  br i1 %9, label %10, label %4, !llvm.loop !72

10:                                               ; preds = %4, %1
  %11 = phi i32 [ 0, %1 ], [ %8, %4 ]
  %12 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 8
  %13 = load i32, ptr %12, align 8, !tbaa !33
  %14 = shl i32 %11, 4
  %15 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !22
  %17 = icmp eq i32 %16, 0
  %18 = sext i32 %13 to i64
  %19 = sext i32 %14 to i64
  br i1 %17, label %26, label %20

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 15, i64 %18
  %22 = load ptr, ptr %21, align 8, !tbaa !28
  %23 = getelementptr inbounds i64, ptr %22, i64 %19
  %24 = load i64, ptr %23, align 8, !tbaa !58
  %25 = add nsw i64 %24, 1
  store i64 %25, ptr %23, align 8, !tbaa !58
  br label %34

26:                                               ; preds = %10
  %27 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 14, i64 %18
  %28 = load ptr, ptr %27, align 8, !tbaa !28
  %29 = getelementptr inbounds [256 x i32], ptr %28, i64 0, i64 %19
  %30 = load i32, ptr %29, align 4, !tbaa !29
  %31 = getelementptr inbounds %struct.c_derived_tbl, ptr %28, i64 0, i32 1, i64 %19
  %32 = load i8, ptr %31, align 1, !tbaa !37
  %33 = sext i8 %32 to i32
  tail call fastcc void @emit_bits(ptr noundef %0, i32 noundef %30, i32 noundef %33)
  br label %34

34:                                               ; preds = %20, %26
  %35 = icmp eq i32 %11, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %34
  %37 = load i32, ptr %2, align 4, !tbaa !41
  tail call fastcc void @emit_bits(ptr noundef %0, i32 noundef %37, i32 noundef %11)
  br label %38

38:                                               ; preds = %36, %34
  store i32 0, ptr %2, align 4, !tbaa !41
  %39 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 11
  %40 = load ptr, ptr %39, align 8, !tbaa !20
  %41 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 10
  %42 = load i32, ptr %41, align 8, !tbaa !42
  tail call fastcc void @emit_buffered_bits(ptr noundef %0, ptr noundef %40, i32 noundef %42)
  store i32 0, ptr %41, align 8, !tbaa !42
  br label %43

43:                                               ; preds = %1, %38
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_bits(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 5
  %3 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !22
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %80

6:                                                ; preds = %1
  %7 = load i32, ptr %2, align 8, !tbaa !44
  %8 = add nsw i32 %7, 7
  %9 = sub nsw i32 17, %7
  %10 = zext nneg i32 %9 to i64
  %11 = shl i64 127, %10
  %12 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 4
  %13 = load i64, ptr %12, align 8, !tbaa !43
  %14 = or i64 %11, %13
  %15 = icmp sgt i32 %7, 0
  br i1 %15, label %16, label %77

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 2
  %18 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 3
  %19 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 6
  br label %20

20:                                               ; preds = %73, %16
  %21 = phi i64 [ %14, %16 ], [ %74, %73 ]
  %22 = phi i32 [ %8, %16 ], [ %75, %73 ]
  %23 = lshr i64 %21, 16
  %24 = trunc i64 %23 to i8
  %25 = load ptr, ptr %17, align 8, !tbaa !52
  %26 = getelementptr inbounds i8, ptr %25, i64 1
  store ptr %26, ptr %17, align 8, !tbaa !52
  store i8 %24, ptr %25, align 1, !tbaa !37
  %27 = load i64, ptr %18, align 8, !tbaa !54
  %28 = add i64 %27, -1
  store i64 %28, ptr %18, align 8, !tbaa !54
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %47

30:                                               ; preds = %20
  %31 = load ptr, ptr %19, align 8, !tbaa !21
  %32 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %31, i64 0, i32 5
  %33 = load ptr, ptr %32, align 8, !tbaa !49
  %34 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %33, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !64
  %36 = tail call i32 %35(ptr noundef %31) #6
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %30
  %39 = load ptr, ptr %19, align 8, !tbaa !21
  %40 = load ptr, ptr %39, align 8, !tbaa !34
  %41 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %40, i64 0, i32 5
  store i32 22, ptr %41, align 8, !tbaa !35
  %42 = load ptr, ptr %40, align 8, !tbaa !38
  tail call void %42(ptr noundef nonnull %39) #6
  br label %43

43:                                               ; preds = %38, %30
  %44 = load ptr, ptr %33, align 8, !tbaa !50
  store ptr %44, ptr %17, align 8, !tbaa !52
  %45 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %33, i64 0, i32 1
  %46 = load i64, ptr %45, align 8, !tbaa !53
  store i64 %46, ptr %18, align 8, !tbaa !54
  br label %47

47:                                               ; preds = %43, %20
  %48 = and i64 %21, 16711680
  %49 = icmp eq i64 %48, 16711680
  br i1 %49, label %50, label %73

50:                                               ; preds = %47
  %51 = load ptr, ptr %17, align 8, !tbaa !52
  %52 = getelementptr inbounds i8, ptr %51, i64 1
  store ptr %52, ptr %17, align 8, !tbaa !52
  store i8 0, ptr %51, align 1, !tbaa !37
  %53 = load i64, ptr %18, align 8, !tbaa !54
  %54 = add i64 %53, -1
  store i64 %54, ptr %18, align 8, !tbaa !54
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %73

56:                                               ; preds = %50
  %57 = load ptr, ptr %19, align 8, !tbaa !21
  %58 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %57, i64 0, i32 5
  %59 = load ptr, ptr %58, align 8, !tbaa !49
  %60 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %59, i64 0, i32 3
  %61 = load ptr, ptr %60, align 8, !tbaa !64
  %62 = tail call i32 %61(ptr noundef %57) #6
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %56
  %65 = load ptr, ptr %19, align 8, !tbaa !21
  %66 = load ptr, ptr %65, align 8, !tbaa !34
  %67 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %66, i64 0, i32 5
  store i32 22, ptr %67, align 8, !tbaa !35
  %68 = load ptr, ptr %66, align 8, !tbaa !38
  tail call void %68(ptr noundef nonnull %65) #6
  br label %69

69:                                               ; preds = %64, %56
  %70 = load ptr, ptr %59, align 8, !tbaa !50
  store ptr %70, ptr %17, align 8, !tbaa !52
  %71 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %59, i64 0, i32 1
  %72 = load i64, ptr %71, align 8, !tbaa !53
  store i64 %72, ptr %18, align 8, !tbaa !54
  br label %73

73:                                               ; preds = %69, %50, %47
  %74 = shl i64 %21, 8
  %75 = add nsw i32 %22, -8
  %76 = icmp sgt i32 %22, 15
  br i1 %76, label %20, label %77, !llvm.loop !65

77:                                               ; preds = %73, %6
  %78 = phi i32 [ %8, %6 ], [ %75, %73 ]
  %79 = phi i64 [ %14, %6 ], [ %74, %73 ]
  store i64 %79, ptr %12, align 8, !tbaa !43
  store i32 %78, ptr %2, align 8, !tbaa !44
  br label %80

80:                                               ; preds = %1, %77
  %81 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 4
  store i64 0, ptr %81, align 8, !tbaa !43
  store i32 0, ptr %2, align 8, !tbaa !44
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @emit_buffered_bits(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !22
  %6 = icmp eq i32 %5, 0
  %7 = icmp ne i32 %2, 0
  %8 = and i1 %7, %6
  br i1 %8, label %9, label %96

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 5
  %11 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 4
  %12 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 2
  %13 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 3
  %14 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 6
  br label %15

15:                                               ; preds = %9, %92
  %16 = phi ptr [ %93, %92 ], [ %1, %9 ]
  %17 = phi i32 [ %94, %92 ], [ %2, %9 ]
  %18 = load i32, ptr %4, align 8, !tbaa !22
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %92

20:                                               ; preds = %15
  %21 = load i32, ptr %10, align 8, !tbaa !44
  %22 = load i8, ptr %16, align 1, !tbaa !37
  %23 = and i8 %22, 1
  %24 = zext nneg i8 %23 to i64
  %25 = add nsw i32 %21, 1
  %26 = sub nsw i32 23, %21
  %27 = zext nneg i32 %26 to i64
  %28 = shl nuw i64 %24, %27
  %29 = load i64, ptr %11, align 8, !tbaa !43
  %30 = or i64 %28, %29
  %31 = icmp sgt i32 %21, 6
  br i1 %31, label %32, label %89

32:                                               ; preds = %20, %85
  %33 = phi i64 [ %86, %85 ], [ %30, %20 ]
  %34 = phi i32 [ %87, %85 ], [ %25, %20 ]
  %35 = lshr i64 %33, 16
  %36 = trunc i64 %35 to i8
  %37 = load ptr, ptr %12, align 8, !tbaa !52
  %38 = getelementptr inbounds i8, ptr %37, i64 1
  store ptr %38, ptr %12, align 8, !tbaa !52
  store i8 %36, ptr %37, align 1, !tbaa !37
  %39 = load i64, ptr %13, align 8, !tbaa !54
  %40 = add i64 %39, -1
  store i64 %40, ptr %13, align 8, !tbaa !54
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %59

42:                                               ; preds = %32
  %43 = load ptr, ptr %14, align 8, !tbaa !21
  %44 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %43, i64 0, i32 5
  %45 = load ptr, ptr %44, align 8, !tbaa !49
  %46 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %45, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !64
  %48 = tail call i32 %47(ptr noundef %43) #6
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %42
  %51 = load ptr, ptr %14, align 8, !tbaa !21
  %52 = load ptr, ptr %51, align 8, !tbaa !34
  %53 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %52, i64 0, i32 5
  store i32 22, ptr %53, align 8, !tbaa !35
  %54 = load ptr, ptr %52, align 8, !tbaa !38
  tail call void %54(ptr noundef nonnull %51) #6
  br label %55

55:                                               ; preds = %50, %42
  %56 = load ptr, ptr %45, align 8, !tbaa !50
  store ptr %56, ptr %12, align 8, !tbaa !52
  %57 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %45, i64 0, i32 1
  %58 = load i64, ptr %57, align 8, !tbaa !53
  store i64 %58, ptr %13, align 8, !tbaa !54
  br label %59

59:                                               ; preds = %55, %32
  %60 = and i64 %33, 16711680
  %61 = icmp eq i64 %60, 16711680
  br i1 %61, label %62, label %85

62:                                               ; preds = %59
  %63 = load ptr, ptr %12, align 8, !tbaa !52
  %64 = getelementptr inbounds i8, ptr %63, i64 1
  store ptr %64, ptr %12, align 8, !tbaa !52
  store i8 0, ptr %63, align 1, !tbaa !37
  %65 = load i64, ptr %13, align 8, !tbaa !54
  %66 = add i64 %65, -1
  store i64 %66, ptr %13, align 8, !tbaa !54
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %85

68:                                               ; preds = %62
  %69 = load ptr, ptr %14, align 8, !tbaa !21
  %70 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %69, i64 0, i32 5
  %71 = load ptr, ptr %70, align 8, !tbaa !49
  %72 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %71, i64 0, i32 3
  %73 = load ptr, ptr %72, align 8, !tbaa !64
  %74 = tail call i32 %73(ptr noundef %69) #6
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %68
  %77 = load ptr, ptr %14, align 8, !tbaa !21
  %78 = load ptr, ptr %77, align 8, !tbaa !34
  %79 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %78, i64 0, i32 5
  store i32 22, ptr %79, align 8, !tbaa !35
  %80 = load ptr, ptr %78, align 8, !tbaa !38
  tail call void %80(ptr noundef nonnull %77) #6
  br label %81

81:                                               ; preds = %76, %68
  %82 = load ptr, ptr %71, align 8, !tbaa !50
  store ptr %82, ptr %12, align 8, !tbaa !52
  %83 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %71, i64 0, i32 1
  %84 = load i64, ptr %83, align 8, !tbaa !53
  store i64 %84, ptr %13, align 8, !tbaa !54
  br label %85

85:                                               ; preds = %81, %62, %59
  %86 = shl i64 %33, 8
  %87 = add nsw i32 %34, -8
  %88 = icmp sgt i32 %34, 15
  br i1 %88, label %32, label %89, !llvm.loop !65

89:                                               ; preds = %85, %20
  %90 = phi i32 [ %25, %20 ], [ %87, %85 ]
  %91 = phi i64 [ %30, %20 ], [ %86, %85 ]
  store i64 %91, ptr %11, align 8, !tbaa !43
  store i32 %90, ptr %10, align 8, !tbaa !44
  br label %92

92:                                               ; preds = %15, %89
  %93 = getelementptr inbounds i8, ptr %16, i64 1
  %94 = add i32 %17, -1
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %15

96:                                               ; preds = %92, %3
  ret void
}

declare ptr @jpeg_alloc_huff_table(ptr noundef) local_unnamed_addr #3

declare void @jpeg_gen_optimal_table(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 8}
!6 = !{!"jpeg_compress_struct", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !10, i64 28, !7, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !11, i64 56, !10, i64 64, !10, i64 68, !10, i64 72, !7, i64 80, !8, i64 88, !8, i64 120, !8, i64 152, !8, i64 184, !8, i64 200, !8, i64 216, !10, i64 232, !7, i64 240, !10, i64 248, !10, i64 252, !10, i64 256, !10, i64 260, !10, i64 264, !10, i64 268, !10, i64 272, !10, i64 276, !10, i64 280, !8, i64 284, !12, i64 286, !12, i64 288, !10, i64 292, !10, i64 296, !10, i64 300, !10, i64 304, !10, i64 308, !10, i64 312, !10, i64 316, !8, i64 320, !10, i64 352, !10, i64 356, !10, i64 360, !8, i64 364, !10, i64 404, !10, i64 408, !10, i64 412, !10, i64 416, !7, i64 424, !7, i64 432, !7, i64 440, !7, i64 448, !7, i64 456, !7, i64 464, !7, i64 472, !7, i64 480, !7, i64 488}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"double", !8, i64 0}
!12 = !{!"short", !8, i64 0}
!13 = !{!14, !7, i64 0}
!14 = !{!"jpeg_memory_mgr", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !15, i64 88}
!15 = !{!"long", !8, i64 0}
!16 = !{!6, !7, i64 488}
!17 = !{!18, !7, i64 0}
!18 = !{!"", !19, i64 0, !10, i64 24, !7, i64 32, !15, i64 40, !15, i64 48, !10, i64 56, !7, i64 64, !8, i64 72, !10, i64 88, !10, i64 92, !10, i64 96, !7, i64 104, !10, i64 112, !10, i64 116, !8, i64 120, !8, i64 152}
!19 = !{!"jpeg_entropy_encoder", !7, i64 0, !7, i64 8, !7, i64 16}
!20 = !{!18, !7, i64 104}
!21 = !{!18, !7, i64 64}
!22 = !{!18, !10, i64 24}
!23 = !{!6, !10, i64 404}
!24 = !{!6, !10, i64 412}
!25 = !{!18, !7, i64 8}
!26 = !{!18, !7, i64 16}
!27 = !{!6, !10, i64 316}
!28 = !{!7, !7, i64 0}
!29 = !{!10, !10, i64 0}
!30 = !{!31, !10, i64 20}
!31 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !10, i64 72, !7, i64 80, !7, i64 88}
!32 = !{!31, !10, i64 24}
!33 = !{!18, !10, i64 88}
!34 = !{!6, !7, i64 0}
!35 = !{!36, !10, i64 40}
!36 = !{!"jpeg_error_mgr", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !10, i64 40, !8, i64 44, !10, i64 124, !15, i64 128, !7, i64 136, !10, i64 144, !7, i64 152, !10, i64 160, !10, i64 164}
!37 = !{!8, !8, i64 0}
!38 = !{!36, !7, i64 0}
!39 = distinct !{!39, !40}
!40 = !{!"llvm.loop.unroll.disable"}
!41 = !{!18, !10, i64 92}
!42 = !{!18, !10, i64 96}
!43 = !{!18, !15, i64 48}
!44 = !{!18, !10, i64 56}
!45 = !{!6, !10, i64 272}
!46 = !{!18, !10, i64 112}
!47 = !{!18, !10, i64 116}
!48 = !{!6, !10, i64 416}
!49 = !{!6, !7, i64 32}
!50 = !{!51, !7, i64 0}
!51 = !{!"jpeg_destination_mgr", !7, i64 0, !15, i64 8, !7, i64 16, !7, i64 24, !7, i64 32}
!52 = !{!18, !7, i64 32}
!53 = !{!51, !15, i64 8}
!54 = !{!18, !15, i64 40}
!55 = !{!6, !10, i64 360}
!56 = !{!12, !12, i64 0}
!57 = distinct !{!57, !40}
!58 = !{!15, !15, i64 0}
!59 = distinct !{!59, !40}
!60 = !{!6, !10, i64 408}
!61 = distinct !{!61, !40}
!62 = distinct !{!62, !40}
!63 = distinct !{!63, !40}
!64 = !{!51, !7, i64 24}
!65 = distinct !{!65, !40}
!66 = distinct !{!66, !40}
!67 = distinct !{!67, !40}
!68 = distinct !{!68, !40}
!69 = distinct !{!69, !40}
!70 = distinct !{!70, !40}
!71 = distinct !{!71, !40}
!72 = distinct !{!72, !40}
