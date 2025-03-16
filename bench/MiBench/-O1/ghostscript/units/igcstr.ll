; ModuleID = 'igcstr.c'
source_filename = "igcstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.chunk_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i16, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.gs_string_s = type { ptr, i32 }

@count_zero_bits_table = internal unnamed_addr constant [256 x i8] c"\08\07\07\06\07\06\06\05\07\06\06\05\06\05\05\04\07\06\06\05\06\05\05\04\06\05\05\04\05\04\04\03\07\06\06\05\06\05\05\04\06\05\05\04\05\04\04\03\06\05\05\04\05\04\04\03\05\04\04\03\04\03\03\02\07\06\06\05\06\05\05\04\06\05\05\04\05\04\04\03\06\05\05\04\05\04\04\03\05\04\04\03\04\03\03\02\06\05\05\04\05\04\04\03\05\04\04\03\04\03\03\02\05\04\04\03\04\03\03\02\04\03\03\02\03\02\02\01\07\06\06\05\06\05\05\04\06\05\05\04\05\04\04\03\06\05\05\04\05\04\04\03\05\04\04\03\04\03\03\02\06\05\05\04\05\04\04\03\05\04\04\03\04\03\03\02\05\04\04\03\04\03\03\02\04\03\03\02\03\02\02\01\06\05\05\04\05\04\04\03\05\04\04\03\04\03\03\02\05\04\04\03\04\03\03\02\04\03\03\02\03\02\02\01\05\04\04\03\04\03\03\02\04\03\03\02\03\02\02\01\04\03\03\02\03\02\02\01\03\02\02\01\02\01\01\00", align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @gc_strings_set_marks(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.chunk_s, ptr %0, i64 0, i32 16
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %51, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.chunk_s, ptr %0, i64 0, i32 17
  %8 = load i32, ptr %7, align 8, !tbaa !12
  %9 = zext i32 %8 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %4, i8 0, i64 %9, i1 false)
  %10 = icmp eq i32 %1, 0
  br i1 %10, label %51, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.chunk_s, ptr %0, i64 0, i32 18
  %13 = load ptr, ptr %12, align 8, !tbaa !13
  %14 = getelementptr inbounds %struct.chunk_s, ptr %0, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !14
  %16 = ptrtoint ptr %15 to i64
  %17 = ptrtoint ptr %13 to i64
  %18 = sub i64 %16, %17
  %19 = trunc i64 %18 to i32
  %20 = load ptr, ptr %3, align 8, !tbaa !5
  %21 = icmp ugt i32 %19, 31
  br i1 %21, label %22, label %42

22:                                               ; preds = %11
  store i32 -1, ptr %20, align 4, !tbaa !15
  %23 = add i32 %19, -32
  %24 = getelementptr i32, ptr %20, i64 1
  %25 = icmp ugt i32 %23, 31
  br i1 %25, label %26, label %42

26:                                               ; preds = %22
  %27 = add i64 %16, 4294967232
  %28 = sub i64 %27, %17
  %29 = lshr i64 %28, 3
  %30 = and i64 %29, 536870908
  %31 = add nuw nsw i64 %30, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %24, i8 -1, i64 %31, i1 false), !tbaa !15
  %32 = trunc i64 %16 to i32
  %33 = add i32 %32, -64
  %34 = trunc i64 %17 to i32
  %35 = sub i32 %33, %34
  %36 = lshr i32 %35, 3
  %37 = and i32 %36, 536870908
  %38 = and i32 %35, 31
  %39 = zext nneg i32 %37 to i64
  %40 = getelementptr i8, ptr %20, i64 %39
  %41 = getelementptr i8, ptr %40, i64 8
  br label %42

42:                                               ; preds = %26, %22, %11
  %43 = phi ptr [ %20, %11 ], [ %24, %22 ], [ %41, %26 ]
  %44 = phi i32 [ %19, %11 ], [ %23, %22 ], [ %38, %26 ]
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %42
  %47 = shl nsw i32 -1, %44
  %48 = xor i32 %47, -1
  %49 = load i32, ptr %43, align 4, !tbaa !15
  %50 = or i32 %49, %48
  store i32 %50, ptr %43, align 4, !tbaa !15
  br label %51

51:                                               ; preds = %46, %42, %6, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @gc_string_mark(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #2 {
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %106, label %6

6:                                                ; preds = %4
  %7 = tail call ptr @gc_locate(ptr noundef %0, ptr noundef %3) #5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %106, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.chunk_s, ptr %7, i64 0, i32 16
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  %12 = icmp eq ptr %11, null
  br i1 %12, label %106, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.chunk_s, ptr %7, i64 0, i32 18
  %15 = load ptr, ptr %14, align 8, !tbaa !13
  %16 = ptrtoint ptr %0 to i64
  %17 = ptrtoint ptr %15 to i64
  %18 = sub i64 %16, %17
  %19 = trunc i64 %18 to i32
  %20 = lshr i64 %18, 3
  %21 = and i64 %20, 536870908
  %22 = getelementptr i8, ptr %11, i64 %21
  %23 = and i32 %19, 31
  %24 = shl nsw i32 -1, %23
  %25 = icmp eq i32 %2, 0
  %26 = add i32 %23, %1
  %27 = icmp ugt i32 %26, 31
  br i1 %25, label %62, label %28

28:                                               ; preds = %13
  br i1 %27, label %29, label %48

29:                                               ; preds = %28
  %30 = load i32, ptr %22, align 4, !tbaa !15
  %31 = xor i32 %30, -1
  %32 = and i32 %24, %31
  %33 = or i32 %30, %24
  store i32 %33, ptr %22, align 4, !tbaa !15
  %34 = or i32 %19, -32
  %35 = add i32 %34, %1
  %36 = getelementptr i32, ptr %22, i64 1
  %37 = icmp ugt i32 %35, 31
  br i1 %37, label %38, label %48

38:                                               ; preds = %29, %38
  %39 = phi ptr [ %46, %38 ], [ %36, %29 ]
  %40 = phi i32 [ %44, %38 ], [ %32, %29 ]
  %41 = phi i32 [ %45, %38 ], [ %35, %29 ]
  %42 = load i32, ptr %39, align 4, !tbaa !15
  %43 = xor i32 %42, -1
  %44 = or i32 %40, %43
  store i32 -1, ptr %39, align 4, !tbaa !15
  %45 = add i32 %41, -32
  %46 = getelementptr inbounds i32, ptr %39, i64 1
  %47 = icmp ugt i32 %45, 31
  br i1 %47, label %38, label %48, !llvm.loop !16

48:                                               ; preds = %38, %29, %28
  %49 = phi ptr [ %22, %28 ], [ %36, %29 ], [ %46, %38 ]
  %50 = phi i32 [ %24, %28 ], [ -1, %29 ], [ -1, %38 ]
  %51 = phi i32 [ %1, %28 ], [ %35, %29 ], [ %45, %38 ]
  %52 = phi i32 [ 0, %28 ], [ %32, %29 ], [ %44, %38 ]
  %53 = icmp eq i32 %51, 0
  br i1 %53, label %102, label %54

54:                                               ; preds = %48
  %55 = shl i32 %50, %51
  %56 = sub i32 %50, %55
  %57 = load i32, ptr %49, align 4, !tbaa !15
  %58 = xor i32 %57, -1
  %59 = and i32 %56, %58
  %60 = or i32 %59, %52
  %61 = or i32 %57, %56
  store i32 %61, ptr %49, align 4, !tbaa !15
  br label %102

62:                                               ; preds = %13
  br i1 %27, label %63, label %91

63:                                               ; preds = %62
  %64 = xor i32 %24, -1
  %65 = load i32, ptr %22, align 4, !tbaa !15
  %66 = and i32 %65, %64
  store i32 %66, ptr %22, align 4, !tbaa !15
  %67 = or i32 %19, -32
  %68 = add i32 %67, %1
  %69 = getelementptr i32, ptr %22, i64 1
  %70 = icmp ugt i32 %68, 159
  br i1 %70, label %83, label %71

71:                                               ; preds = %63
  %72 = icmp ugt i32 %68, 31
  br i1 %72, label %73, label %91

73:                                               ; preds = %71
  %74 = add nsw i32 %68, -32
  %75 = lshr i32 %74, 3
  %76 = and i32 %75, 536870908
  %77 = add nuw nsw i32 %76, 4
  %78 = zext nneg i32 %77 to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %69, i8 0, i64 %78, i1 false), !tbaa !15
  %79 = zext nneg i32 %76 to i64
  %80 = and i32 %68, 31
  %81 = getelementptr i8, ptr %22, i64 %79
  %82 = getelementptr i8, ptr %81, i64 8
  br label %91

83:                                               ; preds = %63
  %84 = lshr i32 %68, 3
  %85 = and i32 %84, 536870908
  %86 = zext nneg i32 %85 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %69, i8 0, i64 %86, i1 false)
  %87 = lshr i32 %68, 5
  %88 = zext nneg i32 %87 to i64
  %89 = getelementptr inbounds i32, ptr %69, i64 %88
  %90 = and i32 %68, 31
  br label %91

91:                                               ; preds = %83, %73, %71, %62
  %92 = phi ptr [ %89, %83 ], [ %22, %62 ], [ %69, %71 ], [ %82, %73 ]
  %93 = phi i32 [ -1, %83 ], [ %24, %62 ], [ -1, %71 ], [ -1, %73 ]
  %94 = phi i32 [ %90, %83 ], [ %1, %62 ], [ %68, %71 ], [ %80, %73 ]
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %102, label %96

96:                                               ; preds = %91
  %97 = shl i32 %93, %94
  %98 = xor i32 %93, -1
  %99 = add i32 %97, %98
  %100 = load i32, ptr %92, align 4, !tbaa !15
  %101 = and i32 %100, %99
  store i32 %101, ptr %92, align 4, !tbaa !15
  br label %102

102:                                              ; preds = %48, %54, %91, %96
  %103 = phi i32 [ %60, %54 ], [ %52, %48 ], [ 0, %96 ], [ 0, %91 ]
  %104 = icmp ne i32 %103, 0
  %105 = zext i1 %104 to i32
  br label %106

106:                                              ; preds = %9, %6, %4, %102
  %107 = phi i32 [ %105, %102 ], [ 0, %4 ], [ 0, %6 ], [ 0, %9 ]
  ret i32 %107
}

declare ptr @gc_locate(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @gc_strings_clear_reloc(ptr nocapture noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.chunk_s, ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !18
  %4 = icmp eq ptr %3, null
  br i1 %4, label %147, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.chunk_s, ptr %0, i64 0, i32 16
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %52, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.chunk_s, ptr %0, i64 0, i32 17
  %11 = load i32, ptr %10, align 8, !tbaa !12
  %12 = zext i32 %11 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %7, i8 0, i64 %12, i1 false)
  %13 = getelementptr inbounds %struct.chunk_s, ptr %0, i64 0, i32 18
  %14 = load ptr, ptr %13, align 8, !tbaa !13
  %15 = getelementptr inbounds %struct.chunk_s, ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !14
  %17 = ptrtoint ptr %16 to i64
  %18 = ptrtoint ptr %14 to i64
  %19 = sub i64 %17, %18
  %20 = trunc i64 %19 to i32
  %21 = load ptr, ptr %6, align 8, !tbaa !5
  %22 = icmp ugt i32 %20, 31
  br i1 %22, label %23, label %43

23:                                               ; preds = %9
  store i32 -1, ptr %21, align 4, !tbaa !15
  %24 = add i32 %20, -32
  %25 = getelementptr i32, ptr %21, i64 1
  %26 = icmp ugt i32 %24, 31
  br i1 %26, label %27, label %43

27:                                               ; preds = %23
  %28 = sub i64 %17, %18
  %29 = add i64 %28, 4294967232
  %30 = lshr i64 %29, 3
  %31 = and i64 %30, 536870908
  %32 = add nuw nsw i64 %31, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %25, i8 -1, i64 %32, i1 false), !tbaa !15
  %33 = trunc i64 %17 to i32
  %34 = trunc i64 %18 to i32
  %35 = sub i32 %33, %34
  %36 = add i32 %35, -64
  %37 = lshr i32 %36, 3
  %38 = and i32 %37, 536870908
  %39 = and i32 %35, 31
  %40 = zext nneg i32 %38 to i64
  %41 = getelementptr i8, ptr %21, i64 %40
  %42 = getelementptr i8, ptr %41, i64 8
  br label %43

43:                                               ; preds = %27, %23, %9
  %44 = phi ptr [ %21, %9 ], [ %25, %23 ], [ %42, %27 ]
  %45 = phi i32 [ %20, %9 ], [ %24, %23 ], [ %39, %27 ]
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %43
  %48 = shl nsw i32 -1, %45
  %49 = xor i32 %48, -1
  %50 = load i32, ptr %44, align 4, !tbaa !15
  %51 = or i32 %50, %49
  store i32 %51, ptr %44, align 4, !tbaa !15
  br label %52

52:                                               ; preds = %5, %43, %47
  %53 = load ptr, ptr %2, align 8, !tbaa !18
  %54 = icmp eq ptr %53, null
  br i1 %54, label %143, label %55

55:                                               ; preds = %52
  %56 = load ptr, ptr %6, align 8, !tbaa !5
  %57 = icmp eq ptr %56, null
  br i1 %57, label %143, label %58

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.chunk_s, ptr %0, i64 0, i32 5
  %60 = load ptr, ptr %59, align 8, !tbaa !19
  %61 = getelementptr inbounds %struct.chunk_s, ptr %0, i64 0, i32 6
  %62 = load ptr, ptr %61, align 8, !tbaa !14
  %63 = ptrtoint ptr %62 to i64
  %64 = ptrtoint ptr %60 to i64
  %65 = sub i64 %63, %64
  %66 = add i64 %65, 63
  %67 = lshr i64 %66, 6
  %68 = trunc i64 %67 to i32
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %143, label %70

70:                                               ; preds = %58
  %71 = getelementptr inbounds %struct.chunk_s, ptr %0, i64 0, i32 17
  %72 = load i32, ptr %71, align 8, !tbaa !12
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i8, ptr %56, i64 %73
  %75 = lshr i32 %72, 3
  %76 = zext nneg i32 %75 to i64
  %77 = getelementptr inbounds i32, ptr %53, i64 %76
  br label %78

78:                                               ; preds = %78, %70
  %79 = phi i32 [ %140, %78 ], [ 0, %70 ]
  %80 = phi ptr [ %84, %78 ], [ %74, %70 ]
  %81 = phi ptr [ %141, %78 ], [ %77, %70 ]
  %82 = phi i32 [ %83, %78 ], [ %68, %70 ]
  %83 = add i32 %82, -1
  %84 = getelementptr inbounds i8, ptr %80, i64 -8
  %85 = load i8, ptr %84, align 1, !tbaa !20
  %86 = zext i8 %85 to i64
  %87 = getelementptr inbounds [256 x i8], ptr @count_zero_bits_table, i64 0, i64 %86
  %88 = load i8, ptr %87, align 1, !tbaa !20
  %89 = zext i8 %88 to i32
  %90 = getelementptr inbounds i8, ptr %80, i64 -7
  %91 = load i8, ptr %90, align 1, !tbaa !20
  %92 = zext i8 %91 to i64
  %93 = getelementptr inbounds [256 x i8], ptr @count_zero_bits_table, i64 0, i64 %92
  %94 = load i8, ptr %93, align 1, !tbaa !20
  %95 = zext i8 %94 to i32
  %96 = getelementptr inbounds i8, ptr %80, i64 -6
  %97 = load i8, ptr %96, align 1, !tbaa !20
  %98 = zext i8 %97 to i64
  %99 = getelementptr inbounds [256 x i8], ptr @count_zero_bits_table, i64 0, i64 %98
  %100 = load i8, ptr %99, align 1, !tbaa !20
  %101 = zext i8 %100 to i32
  %102 = getelementptr inbounds i8, ptr %80, i64 -5
  %103 = load i8, ptr %102, align 1, !tbaa !20
  %104 = zext i8 %103 to i64
  %105 = getelementptr inbounds [256 x i8], ptr @count_zero_bits_table, i64 0, i64 %104
  %106 = load i8, ptr %105, align 1, !tbaa !20
  %107 = zext i8 %106 to i32
  %108 = getelementptr inbounds i8, ptr %80, i64 -4
  %109 = load i8, ptr %108, align 1, !tbaa !20
  %110 = zext i8 %109 to i64
  %111 = getelementptr inbounds [256 x i8], ptr @count_zero_bits_table, i64 0, i64 %110
  %112 = load i8, ptr %111, align 1, !tbaa !20
  %113 = zext i8 %112 to i32
  %114 = getelementptr inbounds i8, ptr %80, i64 -3
  %115 = load i8, ptr %114, align 1, !tbaa !20
  %116 = zext i8 %115 to i64
  %117 = getelementptr inbounds [256 x i8], ptr @count_zero_bits_table, i64 0, i64 %116
  %118 = load i8, ptr %117, align 1, !tbaa !20
  %119 = zext i8 %118 to i32
  %120 = getelementptr inbounds i8, ptr %80, i64 -2
  %121 = load i8, ptr %120, align 1, !tbaa !20
  %122 = zext i8 %121 to i64
  %123 = getelementptr inbounds [256 x i8], ptr @count_zero_bits_table, i64 0, i64 %122
  %124 = load i8, ptr %123, align 1, !tbaa !20
  %125 = zext i8 %124 to i32
  %126 = getelementptr inbounds i8, ptr %80, i64 -1
  %127 = load i8, ptr %126, align 1, !tbaa !20
  %128 = zext i8 %127 to i64
  %129 = getelementptr inbounds [256 x i8], ptr @count_zero_bits_table, i64 0, i64 %128
  %130 = load i8, ptr %129, align 1, !tbaa !20
  %131 = zext i8 %130 to i32
  %132 = add i32 %79, 64
  %133 = add nuw nsw i32 %89, %95
  %134 = add nuw nsw i32 %133, %101
  %135 = add nuw nsw i32 %134, %107
  %136 = add nuw nsw i32 %135, %113
  %137 = add nuw nsw i32 %136, %119
  %138 = add nuw nsw i32 %137, %125
  %139 = add nuw nsw i32 %138, %131
  %140 = sub i32 %132, %139
  %141 = getelementptr inbounds i32, ptr %81, i64 -1
  store i32 %140, ptr %141, align 4, !tbaa !15
  %142 = icmp eq i32 %83, 0
  br i1 %142, label %143, label %78, !llvm.loop !21

143:                                              ; preds = %78, %52, %55, %58
  %144 = getelementptr inbounds %struct.chunk_s, ptr %0, i64 0, i32 6
  %145 = load ptr, ptr %144, align 8, !tbaa !14
  %146 = getelementptr inbounds %struct.chunk_s, ptr %0, i64 0, i32 20
  store ptr %145, ptr %146, align 8, !tbaa !22
  br label %147

147:                                              ; preds = %143, %1
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @gc_strings_set_reloc(ptr nocapture noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.chunk_s, ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !18
  %4 = icmp eq ptr %3, null
  br i1 %4, label %94, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.chunk_s, ptr %0, i64 0, i32 16
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %94, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.chunk_s, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !19
  %12 = getelementptr inbounds %struct.chunk_s, ptr %0, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !14
  %14 = ptrtoint ptr %13 to i64
  %15 = ptrtoint ptr %11 to i64
  %16 = sub i64 %14, %15
  %17 = add i64 %16, 63
  %18 = lshr i64 %17, 6
  %19 = trunc i64 %18 to i32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %94, label %21

21:                                               ; preds = %9
  %22 = getelementptr inbounds %struct.chunk_s, ptr %0, i64 0, i32 17
  %23 = load i32, ptr %22, align 8, !tbaa !12
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i8, ptr %7, i64 %24
  %26 = lshr i32 %23, 3
  %27 = zext nneg i32 %26 to i64
  %28 = getelementptr inbounds i32, ptr %3, i64 %27
  br label %29

29:                                               ; preds = %21, %29
  %30 = phi i32 [ %91, %29 ], [ 0, %21 ]
  %31 = phi ptr [ %35, %29 ], [ %25, %21 ]
  %32 = phi ptr [ %92, %29 ], [ %28, %21 ]
  %33 = phi i32 [ %34, %29 ], [ %19, %21 ]
  %34 = add i32 %33, -1
  %35 = getelementptr inbounds i8, ptr %31, i64 -8
  %36 = load i8, ptr %35, align 1, !tbaa !20
  %37 = zext i8 %36 to i64
  %38 = getelementptr inbounds [256 x i8], ptr @count_zero_bits_table, i64 0, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !20
  %40 = zext i8 %39 to i32
  %41 = getelementptr inbounds i8, ptr %31, i64 -7
  %42 = load i8, ptr %41, align 1, !tbaa !20
  %43 = zext i8 %42 to i64
  %44 = getelementptr inbounds [256 x i8], ptr @count_zero_bits_table, i64 0, i64 %43
  %45 = load i8, ptr %44, align 1, !tbaa !20
  %46 = zext i8 %45 to i32
  %47 = getelementptr inbounds i8, ptr %31, i64 -6
  %48 = load i8, ptr %47, align 1, !tbaa !20
  %49 = zext i8 %48 to i64
  %50 = getelementptr inbounds [256 x i8], ptr @count_zero_bits_table, i64 0, i64 %49
  %51 = load i8, ptr %50, align 1, !tbaa !20
  %52 = zext i8 %51 to i32
  %53 = getelementptr inbounds i8, ptr %31, i64 -5
  %54 = load i8, ptr %53, align 1, !tbaa !20
  %55 = zext i8 %54 to i64
  %56 = getelementptr inbounds [256 x i8], ptr @count_zero_bits_table, i64 0, i64 %55
  %57 = load i8, ptr %56, align 1, !tbaa !20
  %58 = zext i8 %57 to i32
  %59 = getelementptr inbounds i8, ptr %31, i64 -4
  %60 = load i8, ptr %59, align 1, !tbaa !20
  %61 = zext i8 %60 to i64
  %62 = getelementptr inbounds [256 x i8], ptr @count_zero_bits_table, i64 0, i64 %61
  %63 = load i8, ptr %62, align 1, !tbaa !20
  %64 = zext i8 %63 to i32
  %65 = getelementptr inbounds i8, ptr %31, i64 -3
  %66 = load i8, ptr %65, align 1, !tbaa !20
  %67 = zext i8 %66 to i64
  %68 = getelementptr inbounds [256 x i8], ptr @count_zero_bits_table, i64 0, i64 %67
  %69 = load i8, ptr %68, align 1, !tbaa !20
  %70 = zext i8 %69 to i32
  %71 = getelementptr inbounds i8, ptr %31, i64 -2
  %72 = load i8, ptr %71, align 1, !tbaa !20
  %73 = zext i8 %72 to i64
  %74 = getelementptr inbounds [256 x i8], ptr @count_zero_bits_table, i64 0, i64 %73
  %75 = load i8, ptr %74, align 1, !tbaa !20
  %76 = zext i8 %75 to i32
  %77 = getelementptr inbounds i8, ptr %31, i64 -1
  %78 = load i8, ptr %77, align 1, !tbaa !20
  %79 = zext i8 %78 to i64
  %80 = getelementptr inbounds [256 x i8], ptr @count_zero_bits_table, i64 0, i64 %79
  %81 = load i8, ptr %80, align 1, !tbaa !20
  %82 = zext i8 %81 to i32
  %83 = add i32 %30, 64
  %84 = add nuw nsw i32 %40, %46
  %85 = add nuw nsw i32 %84, %52
  %86 = add nuw nsw i32 %85, %58
  %87 = add nuw nsw i32 %86, %64
  %88 = add nuw nsw i32 %87, %70
  %89 = add nuw nsw i32 %88, %76
  %90 = add nuw nsw i32 %89, %82
  %91 = sub i32 %83, %90
  %92 = getelementptr inbounds i32, ptr %32, i64 -1
  store i32 %91, ptr %92, align 4, !tbaa !15
  %93 = icmp eq i32 %34, 0
  br i1 %93, label %94, label %29, !llvm.loop !21

94:                                               ; preds = %29, %9, %5, %1
  %95 = getelementptr inbounds %struct.chunk_s, ptr %0, i64 0, i32 6
  %96 = load ptr, ptr %95, align 8, !tbaa !14
  %97 = getelementptr inbounds %struct.chunk_s, ptr %0, i64 0, i32 20
  store ptr %96, ptr %97, align 8, !tbaa !22
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @gs_reloc_string(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.gs_string_s, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !23
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %123, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !25
  %8 = tail call ptr @gc_locate(ptr noundef %7, ptr noundef %1) #5
  %9 = icmp eq ptr %8, null
  br i1 %9, label %125, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.chunk_s, ptr %8, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !18
  %13 = icmp eq ptr %12, null
  br i1 %13, label %125, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.chunk_s, ptr %8, i64 0, i32 16
  %16 = load ptr, ptr %15, align 8, !tbaa !5
  %17 = icmp eq ptr %16, null
  br i1 %17, label %125, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.chunk_s, ptr %8, i64 0, i32 18
  %20 = load ptr, ptr %19, align 8, !tbaa !13
  %21 = ptrtoint ptr %7 to i64
  %22 = ptrtoint ptr %20 to i64
  %23 = sub i64 %21, %22
  %24 = trunc i64 %23 to i32
  %25 = lshr i64 %23, 6
  %26 = and i64 %25, 67108863
  %27 = getelementptr inbounds i32, ptr %12, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !15
  %29 = lshr i64 %23, 3
  %30 = and i64 %29, 536870911
  %31 = getelementptr inbounds i8, ptr %16, i64 %30
  %32 = and i32 %24, 56
  %33 = add nsw i32 %32, -8
  %34 = lshr exact i32 %33, 3
  switch i32 %34, label %104 [
    i32 6, label %35
    i32 5, label %44
    i32 4, label %54
    i32 3, label %64
    i32 2, label %74
    i32 1, label %84
    i32 0, label %94
  ]

35:                                               ; preds = %18
  %36 = getelementptr inbounds i8, ptr %31, i64 -7
  %37 = load i8, ptr %36, align 1, !tbaa !20
  %38 = zext i8 %37 to i64
  %39 = getelementptr inbounds [256 x i8], ptr @count_zero_bits_table, i64 0, i64 %38
  %40 = load i8, ptr %39, align 1, !tbaa !20
  %41 = zext i8 %40 to i32
  %42 = add i32 %28, -8
  %43 = add i32 %42, %41
  br label %44

44:                                               ; preds = %18, %35
  %45 = phi i32 [ %28, %18 ], [ %43, %35 ]
  %46 = getelementptr inbounds i8, ptr %31, i64 -6
  %47 = load i8, ptr %46, align 1, !tbaa !20
  %48 = zext i8 %47 to i64
  %49 = getelementptr inbounds [256 x i8], ptr @count_zero_bits_table, i64 0, i64 %48
  %50 = load i8, ptr %49, align 1, !tbaa !20
  %51 = zext i8 %50 to i32
  %52 = add i32 %45, -8
  %53 = add i32 %52, %51
  br label %54

54:                                               ; preds = %18, %44
  %55 = phi i32 [ %28, %18 ], [ %53, %44 ]
  %56 = getelementptr inbounds i8, ptr %31, i64 -5
  %57 = load i8, ptr %56, align 1, !tbaa !20
  %58 = zext i8 %57 to i64
  %59 = getelementptr inbounds [256 x i8], ptr @count_zero_bits_table, i64 0, i64 %58
  %60 = load i8, ptr %59, align 1, !tbaa !20
  %61 = zext i8 %60 to i32
  %62 = add i32 %55, -8
  %63 = add i32 %62, %61
  br label %64

64:                                               ; preds = %18, %54
  %65 = phi i32 [ %28, %18 ], [ %63, %54 ]
  %66 = getelementptr inbounds i8, ptr %31, i64 -4
  %67 = load i8, ptr %66, align 1, !tbaa !20
  %68 = zext i8 %67 to i64
  %69 = getelementptr inbounds [256 x i8], ptr @count_zero_bits_table, i64 0, i64 %68
  %70 = load i8, ptr %69, align 1, !tbaa !20
  %71 = zext i8 %70 to i32
  %72 = add i32 %65, -8
  %73 = add i32 %72, %71
  br label %74

74:                                               ; preds = %18, %64
  %75 = phi i32 [ %28, %18 ], [ %73, %64 ]
  %76 = getelementptr inbounds i8, ptr %31, i64 -3
  %77 = load i8, ptr %76, align 1, !tbaa !20
  %78 = zext i8 %77 to i64
  %79 = getelementptr inbounds [256 x i8], ptr @count_zero_bits_table, i64 0, i64 %78
  %80 = load i8, ptr %79, align 1, !tbaa !20
  %81 = zext i8 %80 to i32
  %82 = add i32 %75, -8
  %83 = add i32 %82, %81
  br label %84

84:                                               ; preds = %18, %74
  %85 = phi i32 [ %28, %18 ], [ %83, %74 ]
  %86 = getelementptr inbounds i8, ptr %31, i64 -2
  %87 = load i8, ptr %86, align 1, !tbaa !20
  %88 = zext i8 %87 to i64
  %89 = getelementptr inbounds [256 x i8], ptr @count_zero_bits_table, i64 0, i64 %88
  %90 = load i8, ptr %89, align 1, !tbaa !20
  %91 = zext i8 %90 to i32
  %92 = add i32 %85, -8
  %93 = add i32 %92, %91
  br label %94

94:                                               ; preds = %18, %84
  %95 = phi i32 [ %28, %18 ], [ %93, %84 ]
  %96 = getelementptr inbounds i8, ptr %31, i64 -1
  %97 = load i8, ptr %96, align 1, !tbaa !20
  %98 = zext i8 %97 to i64
  %99 = getelementptr inbounds [256 x i8], ptr @count_zero_bits_table, i64 0, i64 %98
  %100 = load i8, ptr %99, align 1, !tbaa !20
  %101 = zext i8 %100 to i32
  %102 = add i32 %95, -8
  %103 = add i32 %102, %101
  br label %104

104:                                              ; preds = %94, %18
  %105 = phi i32 [ %28, %18 ], [ %103, %94 ]
  %106 = load i8, ptr %31, align 1, !tbaa !20
  %107 = and i32 %24, 7
  %108 = sub nuw nsw i32 8, %107
  %109 = lshr i32 255, %108
  %110 = trunc i32 %109 to i8
  %111 = and i8 %106, %110
  %112 = zext nneg i8 %111 to i64
  %113 = getelementptr inbounds [256 x i8], ptr @count_zero_bits_table, i64 0, i64 %112
  %114 = load i8, ptr %113, align 1, !tbaa !20
  %115 = zext i8 %114 to i32
  %116 = add i32 %105, -8
  %117 = add i32 %116, %115
  %118 = getelementptr inbounds %struct.chunk_s, ptr %8, i64 0, i32 20
  %119 = load ptr, ptr %118, align 8, !tbaa !22
  %120 = zext i32 %117 to i64
  %121 = sub nsw i64 0, %120
  %122 = getelementptr inbounds i8, ptr %119, i64 %121
  br label %123

123:                                              ; preds = %2, %104
  %124 = phi ptr [ %122, %104 ], [ null, %2 ]
  store ptr %124, ptr %0, align 8, !tbaa !25
  br label %125

125:                                              ; preds = %123, %10, %14, %6
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @gs_reloc_const_string(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  tail call void @gs_reloc_string(ptr noundef %0, ptr noundef %1)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @gc_strings_compact(ptr nocapture noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.chunk_s, ptr %0, i64 0, i32 16
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %116, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.chunk_s, ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !14
  %8 = getelementptr inbounds %struct.chunk_s, ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !19
  %10 = icmp ugt ptr %7, %9
  br i1 %10, label %11, label %114

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.chunk_s, ptr %0, i64 0, i32 17
  %13 = load i32, ptr %12, align 8, !tbaa !12
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i8, ptr %3, i64 %14
  br label %16

16:                                               ; preds = %11, %111
  %17 = phi ptr [ %22, %111 ], [ %7, %11 ]
  %18 = phi ptr [ %20, %111 ], [ %15, %11 ]
  %19 = phi ptr [ %112, %111 ], [ %7, %11 ]
  %20 = getelementptr inbounds i8, ptr %18, i64 -1
  %21 = load i8, ptr %20, align 1, !tbaa !20
  %22 = getelementptr inbounds i8, ptr %17, i64 -8
  %23 = zext i8 %21 to i32
  switch i8 %21, label %50 [
    i8 -1, label %24
    i8 0, label %111
  ]

24:                                               ; preds = %16
  %25 = getelementptr inbounds i8, ptr %19, i64 -8
  %26 = icmp eq ptr %19, %17
  br i1 %26, label %111, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds i8, ptr %17, i64 -1
  %29 = load i8, ptr %28, align 1, !tbaa !20
  %30 = getelementptr inbounds i8, ptr %19, i64 -1
  store i8 %29, ptr %30, align 1, !tbaa !20
  %31 = getelementptr inbounds i8, ptr %17, i64 -2
  %32 = load i8, ptr %31, align 1, !tbaa !20
  %33 = getelementptr inbounds i8, ptr %19, i64 -2
  store i8 %32, ptr %33, align 1, !tbaa !20
  %34 = getelementptr inbounds i8, ptr %17, i64 -3
  %35 = load i8, ptr %34, align 1, !tbaa !20
  %36 = getelementptr inbounds i8, ptr %19, i64 -3
  store i8 %35, ptr %36, align 1, !tbaa !20
  %37 = getelementptr inbounds i8, ptr %17, i64 -4
  %38 = load i8, ptr %37, align 1, !tbaa !20
  %39 = getelementptr inbounds i8, ptr %19, i64 -4
  store i8 %38, ptr %39, align 1, !tbaa !20
  %40 = getelementptr inbounds i8, ptr %17, i64 -5
  %41 = load i8, ptr %40, align 1, !tbaa !20
  %42 = getelementptr inbounds i8, ptr %19, i64 -5
  store i8 %41, ptr %42, align 1, !tbaa !20
  %43 = getelementptr inbounds i8, ptr %17, i64 -6
  %44 = load i8, ptr %43, align 1, !tbaa !20
  %45 = getelementptr inbounds i8, ptr %19, i64 -6
  store i8 %44, ptr %45, align 1, !tbaa !20
  %46 = getelementptr inbounds i8, ptr %17, i64 -7
  %47 = load i8, ptr %46, align 1, !tbaa !20
  %48 = getelementptr inbounds i8, ptr %19, i64 -7
  store i8 %47, ptr %48, align 1, !tbaa !20
  %49 = load i8, ptr %22, align 1, !tbaa !20
  store i8 %49, ptr %25, align 1, !tbaa !20
  br label %111

50:                                               ; preds = %16
  %51 = icmp sgt i8 %21, -1
  br i1 %51, label %56, label %52

52:                                               ; preds = %50
  %53 = getelementptr inbounds i8, ptr %17, i64 -1
  %54 = load i8, ptr %53, align 1, !tbaa !20
  %55 = getelementptr inbounds i8, ptr %19, i64 -1
  store i8 %54, ptr %55, align 1, !tbaa !20
  br label %56

56:                                               ; preds = %52, %50
  %57 = phi ptr [ %55, %52 ], [ %19, %50 ]
  %58 = and i32 %23, 64
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds i8, ptr %17, i64 -2
  %62 = load i8, ptr %61, align 1, !tbaa !20
  %63 = getelementptr inbounds i8, ptr %57, i64 -1
  store i8 %62, ptr %63, align 1, !tbaa !20
  br label %64

64:                                               ; preds = %60, %56
  %65 = phi ptr [ %63, %60 ], [ %57, %56 ]
  %66 = and i32 %23, 32
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds i8, ptr %17, i64 -3
  %70 = load i8, ptr %69, align 1, !tbaa !20
  %71 = getelementptr inbounds i8, ptr %65, i64 -1
  store i8 %70, ptr %71, align 1, !tbaa !20
  br label %72

72:                                               ; preds = %68, %64
  %73 = phi ptr [ %71, %68 ], [ %65, %64 ]
  %74 = and i32 %23, 16
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds i8, ptr %17, i64 -4
  %78 = load i8, ptr %77, align 1, !tbaa !20
  %79 = getelementptr inbounds i8, ptr %73, i64 -1
  store i8 %78, ptr %79, align 1, !tbaa !20
  br label %80

80:                                               ; preds = %76, %72
  %81 = phi ptr [ %79, %76 ], [ %73, %72 ]
  %82 = and i32 %23, 8
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %80
  %85 = getelementptr inbounds i8, ptr %17, i64 -5
  %86 = load i8, ptr %85, align 1, !tbaa !20
  %87 = getelementptr inbounds i8, ptr %81, i64 -1
  store i8 %86, ptr %87, align 1, !tbaa !20
  br label %88

88:                                               ; preds = %84, %80
  %89 = phi ptr [ %87, %84 ], [ %81, %80 ]
  %90 = and i32 %23, 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %88
  %93 = getelementptr inbounds i8, ptr %17, i64 -6
  %94 = load i8, ptr %93, align 1, !tbaa !20
  %95 = getelementptr inbounds i8, ptr %89, i64 -1
  store i8 %94, ptr %95, align 1, !tbaa !20
  br label %96

96:                                               ; preds = %92, %88
  %97 = phi ptr [ %95, %92 ], [ %89, %88 ]
  %98 = and i32 %23, 2
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %96
  %101 = getelementptr inbounds i8, ptr %17, i64 -7
  %102 = load i8, ptr %101, align 1, !tbaa !20
  %103 = getelementptr inbounds i8, ptr %97, i64 -1
  store i8 %102, ptr %103, align 1, !tbaa !20
  br label %104

104:                                              ; preds = %100, %96
  %105 = phi ptr [ %103, %100 ], [ %97, %96 ]
  %106 = and i32 %23, 1
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %104
  %109 = load i8, ptr %22, align 1, !tbaa !20
  %110 = getelementptr inbounds i8, ptr %105, i64 -1
  store i8 %109, ptr %110, align 1, !tbaa !20
  br label %111

111:                                              ; preds = %16, %108, %104, %24, %27
  %112 = phi ptr [ %110, %108 ], [ %105, %104 ], [ %19, %16 ], [ %25, %27 ], [ %25, %24 ]
  %113 = icmp ugt ptr %22, %9
  br i1 %113, label %16, label %114, !llvm.loop !26

114:                                              ; preds = %111, %5
  %115 = phi ptr [ %7, %5 ], [ %112, %111 ]
  store ptr %115, ptr %8, align 8, !tbaa !19
  br label %116

116:                                              ; preds = %114, %1
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 120}
!6 = !{!"chunk_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !10, i64 88, !10, i64 92, !7, i64 96, !11, i64 104, !7, i64 112, !7, i64 120, !10, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"short", !8, i64 0}
!12 = !{!6, !10, i64 128}
!13 = !{!6, !7, i64 136}
!14 = !{!6, !7, i64 48}
!15 = !{!10, !10, i64 0}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.unroll.disable"}
!18 = !{!6, !7, i64 144}
!19 = !{!6, !7, i64 40}
!20 = !{!8, !8, i64 0}
!21 = distinct !{!21, !17}
!22 = !{!6, !7, i64 152}
!23 = !{!24, !10, i64 8}
!24 = !{!"gs_string_s", !7, i64 0, !10, i64 8}
!25 = !{!24, !7, i64 0}
!26 = distinct !{!26, !17}
