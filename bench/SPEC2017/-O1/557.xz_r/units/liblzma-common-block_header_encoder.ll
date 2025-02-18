; ModuleID = 'liblzma/common/block_header_encoder.c'
source_filename = "liblzma/common/block_header_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lzma_block = type { i32, i32, i32, i64, i64, ptr, [64 x i8], ptr, ptr, ptr, i32, i32, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.lzma_filter = type { i64, ptr }

; Function Attrs: cold nounwind uwtable
define dso_local i32 @lzma_block_header_size(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !40 {
  %2 = alloca i32, align 4
  %3 = load i32, ptr %0, align 8, !tbaa !41
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %69, !prof !48

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.lzma_block, ptr %0, i64 0, i32 3
  %7 = load i64, ptr %6, align 8, !tbaa !49
  %8 = icmp eq i64 %7, -1
  br i1 %8, label %20, label %9, !prof !48

9:                                                ; preds = %5
  %10 = tail call i32 @lzma_vli_size(i64 noundef %7) #4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %9
  %13 = load i64, ptr %6, align 8, !tbaa !49
  %14 = icmp ne i64 %13, 0
  %15 = add i32 %10, 6
  %16 = select i1 %14, i32 %15, i32 6
  br label %17

17:                                               ; preds = %12, %9
  %18 = phi i1 [ false, %9 ], [ %14, %12 ]
  %19 = phi i32 [ 6, %9 ], [ %16, %12 ]
  br i1 %18, label %20, label %69

20:                                               ; preds = %17, %5
  %21 = phi i32 [ %19, %17 ], [ 6, %5 ]
  %22 = getelementptr inbounds %struct.lzma_block, ptr %0, i64 0, i32 4
  %23 = load i64, ptr %22, align 8, !tbaa !50
  %24 = icmp eq i64 %23, -1
  br i1 %24, label %29, label %25, !prof !48

25:                                               ; preds = %20
  %26 = tail call i32 @lzma_vli_size(i64 noundef %23) #4
  %27 = icmp eq i32 %26, 0
  %28 = add i32 %26, %21
  br i1 %27, label %69, label %29

29:                                               ; preds = %25, %20
  %30 = phi i32 [ %28, %25 ], [ %21, %20 ]
  %31 = getelementptr inbounds %struct.lzma_block, ptr %0, i64 0, i32 5
  %32 = load ptr, ptr %31, align 8, !tbaa !51
  %33 = icmp eq ptr %32, null
  br i1 %33, label %69, label %34, !prof !52

34:                                               ; preds = %29
  %35 = load i64, ptr %32, align 8, !tbaa !53
  %36 = icmp eq i64 %35, -1
  br i1 %36, label %69, label %37, !prof !52

37:                                               ; preds = %34
  %38 = load ptr, ptr %31, align 8, !tbaa !51
  %39 = load i64, ptr %38, align 8, !tbaa !53
  %40 = icmp eq i64 %39, -1
  br i1 %40, label %61, label %49, !prof !55

41:                                               ; preds = %49
  %42 = add nuw nsw i64 %51, 1
  %43 = load ptr, ptr %31, align 8, !tbaa !51
  %44 = getelementptr inbounds %struct.lzma_filter, ptr %43, i64 %42
  %45 = load i64, ptr %44, align 8, !tbaa !53
  %46 = icmp eq i64 %45, -1
  br i1 %46, label %61, label %47, !prof !56, !llvm.loop !57

47:                                               ; preds = %41
  %48 = icmp eq i64 %42, 4
  br i1 %48, label %61, label %49, !prof !52, !llvm.loop !57

49:                                               ; preds = %37, %47
  %50 = phi i32 [ %60, %47 ], [ %30, %37 ]
  %51 = phi i64 [ %42, %47 ], [ 0, %37 ]
  %52 = phi i32 [ %57, %47 ], [ 11, %37 ]
  %53 = phi ptr [ %44, %47 ], [ %38, %37 ]
  %54 = phi i1 [ %46, %47 ], [ %40, %37 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #4
  %55 = call i32 @lzma_filter_flags_size(ptr noundef nonnull %2, ptr noundef nonnull %53) #4
  %56 = icmp eq i32 %55, 0
  %57 = select i1 %56, i32 %52, i32 %55, !prof !48
  %58 = load i32, ptr %2, align 4
  %59 = select i1 %56, i32 %58, i32 0, !prof !48
  %60 = add i32 %59, %50
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #4
  br i1 %56, label %41, label %61, !prof !48

61:                                               ; preds = %49, %47, %41, %37
  %62 = phi i1 [ %40, %37 ], [ %54, %49 ], [ %46, %47 ], [ %46, %41 ]
  %63 = phi i32 [ %30, %37 ], [ %60, %41 ], [ %60, %47 ], [ %60, %49 ]
  %64 = phi i32 [ 11, %37 ], [ %57, %49 ], [ 11, %47 ], [ %57, %41 ]
  br i1 %62, label %65, label %69, !prof !48

65:                                               ; preds = %61
  %66 = add i32 %63, 3
  %67 = and i32 %66, -4
  %68 = getelementptr inbounds %struct.lzma_block, ptr %0, i64 0, i32 1
  store i32 %67, ptr %68, align 4, !tbaa !60
  br label %69

69:                                               ; preds = %29, %25, %65, %61, %17, %34, %1
  %70 = phi i32 [ 8, %1 ], [ 0, %65 ], [ %64, %61 ], [ 11, %17 ], [ 11, %34 ], [ 11, %25 ], [ 11, %29 ]
  ret i32 %70
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @lzma_vli_size(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @lzma_filter_flags_size(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local i32 @lzma_block_header_encode(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !40 {
  %3 = alloca i64, align 8
  %4 = tail call i64 @lzma_block_unpadded_size(ptr noundef %0) #4
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %83, label %6, !prof !52

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.lzma_block, ptr %0, i64 0, i32 4
  %8 = load i64, ptr %7, align 8, !tbaa !50
  %9 = icmp sgt i64 %8, -2
  br i1 %9, label %10, label %83, !prof !48

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.lzma_block, ptr %0, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !60
  %13 = add i32 %12, -4
  %14 = zext i32 %13 to i64
  %15 = lshr i64 %14, 2
  %16 = trunc i64 %15 to i8
  store i8 %16, ptr %1, align 1, !tbaa !61
  %17 = getelementptr inbounds i8, ptr %1, i64 1
  store i8 0, ptr %17, align 1, !tbaa !61
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #4
  store i64 2, ptr %3, align 8, !tbaa !62
  %18 = getelementptr inbounds %struct.lzma_block, ptr %0, i64 0, i32 3
  %19 = load i64, ptr %18, align 8, !tbaa !49
  %20 = icmp eq i64 %19, -1
  br i1 %20, label %27, label %21, !prof !48

21:                                               ; preds = %10
  %22 = call i32 @lzma_vli_encode(i64 noundef %19, ptr noundef null, ptr noundef nonnull %1, ptr noundef nonnull %3, i64 noundef %14) #4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %81

24:                                               ; preds = %21
  %25 = load i8, ptr %17, align 1, !tbaa !61
  %26 = or i8 %25, 64
  store i8 %26, ptr %17, align 1, !tbaa !61
  br label %27

27:                                               ; preds = %24, %10
  %28 = phi i32 [ %22, %24 ], [ undef, %10 ]
  %29 = load i64, ptr %7, align 8, !tbaa !50
  %30 = icmp eq i64 %29, -1
  br i1 %30, label %38, label %31, !prof !48

31:                                               ; preds = %27
  %32 = call i32 @lzma_vli_encode(i64 noundef %29, ptr noundef null, ptr noundef nonnull %1, ptr noundef nonnull %3, i64 noundef %14) #4
  %33 = icmp eq i32 %32, 0
  %34 = select i1 %33, i32 %28, i32 %32
  br i1 %33, label %35, label %81

35:                                               ; preds = %31
  %36 = load i8, ptr %17, align 1, !tbaa !61
  %37 = or i8 %36, -128
  store i8 %37, ptr %17, align 1, !tbaa !61
  br label %38

38:                                               ; preds = %35, %27
  %39 = phi i32 [ %34, %35 ], [ %28, %27 ]
  %40 = getelementptr inbounds %struct.lzma_block, ptr %0, i64 0, i32 5
  %41 = load ptr, ptr %40, align 8, !tbaa !51
  %42 = icmp eq ptr %41, null
  br i1 %42, label %81, label %43, !prof !52

43:                                               ; preds = %38
  %44 = load i64, ptr %41, align 8, !tbaa !53
  %45 = icmp eq i64 %44, -1
  br i1 %45, label %81, label %46, !prof !52

46:                                               ; preds = %43, %56
  %47 = phi i64 [ %58, %56 ], [ 0, %43 ]
  %48 = phi i32 [ %55, %56 ], [ %39, %43 ]
  %49 = icmp eq i64 %47, 4
  br i1 %49, label %81, label %50, !prof !52

50:                                               ; preds = %46
  %51 = load ptr, ptr %40, align 8, !tbaa !51
  %52 = getelementptr inbounds %struct.lzma_filter, ptr %51, i64 %47
  %53 = call i32 @lzma_filter_flags_encode(ptr noundef %52, ptr noundef nonnull %1, ptr noundef nonnull %3, i64 noundef %14) #4
  %54 = icmp eq i32 %53, 0
  %55 = select i1 %54, i32 %48, i32 %53, !prof !48
  br i1 %54, label %56, label %81, !prof !48

56:                                               ; preds = %50
  %57 = load ptr, ptr %40, align 8, !tbaa !51
  %58 = add nuw nsw i64 %47, 1
  %59 = getelementptr inbounds %struct.lzma_filter, ptr %57, i64 %58
  %60 = load i64, ptr %59, align 8, !tbaa !53
  %61 = icmp eq i64 %60, -1
  br i1 %61, label %62, label %46, !prof !48, !llvm.loop !63

62:                                               ; preds = %56
  %63 = load i8, ptr %17, align 1, !tbaa !61
  %64 = trunc i64 %47 to i8
  %65 = or i8 %63, %64
  store i8 %65, ptr %17, align 1, !tbaa !61
  %66 = load i64, ptr %3, align 8, !tbaa !62
  %67 = getelementptr inbounds i8, ptr %1, i64 %66
  %68 = sub i64 %14, %66
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %67, i8 0, i64 %68, i1 false), !prof !64
  %69 = getelementptr inbounds i8, ptr %1, i64 %14
  %70 = call i32 @lzma_crc32(ptr noundef nonnull %1, i64 noundef %14, i32 noundef 0) #4
  %71 = trunc i32 %70 to i8
  store i8 %71, ptr %69, align 1, !tbaa !61
  %72 = lshr i32 %70, 8
  %73 = trunc i32 %72 to i8
  %74 = getelementptr inbounds i8, ptr %69, i64 1
  store i8 %73, ptr %74, align 1, !tbaa !61
  %75 = lshr i32 %70, 16
  %76 = trunc i32 %75 to i8
  %77 = getelementptr inbounds i8, ptr %69, i64 2
  store i8 %76, ptr %77, align 1, !tbaa !61
  %78 = lshr i32 %70, 24
  %79 = trunc i32 %78 to i8
  %80 = getelementptr inbounds i8, ptr %69, i64 3
  store i8 %79, ptr %80, align 1, !tbaa !61
  br label %81

81:                                               ; preds = %46, %50, %62, %38, %43, %21, %31
  %82 = phi i32 [ %34, %31 ], [ %22, %21 ], [ 11, %43 ], [ 11, %38 ], [ 0, %62 ], [ %55, %50 ], [ 11, %46 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #4
  br label %83

83:                                               ; preds = %2, %6, %81
  %84 = phi i32 [ %82, %81 ], [ 11, %6 ], [ 11, %2 ]
  ret i32 %84
}

declare i64 @lzma_block_unpadded_size(ptr noundef) local_unnamed_addr #2

declare i32 @lzma_vli_encode(i64 noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @lzma_filter_flags_encode(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

declare i32 @lzma_crc32(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!39}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 47149273342}
!8 = !{!"MaxCount", i64 6329676010}
!9 = !{!"MaxInternalCount", i64 6329676010}
!10 = !{!"MaxFunctionCount", i64 1717654358}
!11 = !{!"NumCounts", i64 2810}
!12 = !{!"NumFunctions", i64 379}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 6329676010, i32 1}
!18 = !{i32 100000, i64 6329676010, i32 1}
!19 = !{i32 200000, i64 5133904873, i32 2}
!20 = !{i32 300000, i64 1880543368, i32 4}
!21 = !{i32 400000, i64 1717654358, i32 6}
!22 = !{i32 500000, i64 1179118894, i32 9}
!23 = !{i32 600000, i64 845267354, i32 14}
!24 = !{i32 700000, i64 611059789, i32 20}
!25 = !{i32 800000, i64 289033984, i32 32}
!26 = !{i32 900000, i64 144512423, i32 55}
!27 = !{i32 950000, i64 47630439, i32 82}
!28 = !{i32 990000, i64 5873050, i32 171}
!29 = !{i32 999000, i64 869247, i32 334}
!30 = !{i32 999900, i64 80863, i32 461}
!31 = !{i32 999990, i64 32025, i32 533}
!32 = !{i32 999999, i64 3325, i32 567}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38}
!35 = !{ptr @lzma_block_header_size, ptr @lzma_filter_flags_size, i64 1}
!36 = !{ptr @lzma_block_header_encode, ptr @lzma_block_unpadded_size, i64 1}
!37 = !{ptr @lzma_block_header_encode, ptr @lzma_filter_flags_encode, i64 1}
!38 = !{ptr @lzma_block_header_encode, ptr @lzma_crc32, i64 1}
!39 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!40 = !{!"function_entry_count", i64 1}
!41 = !{!42, !43, i64 0}
!42 = !{!"", !43, i64 0, !43, i64 4, !43, i64 8, !46, i64 16, !46, i64 24, !47, i64 32, !44, i64 40, !47, i64 104, !47, i64 112, !47, i64 120, !43, i64 128, !43, i64 132, !46, i64 136, !46, i64 144, !46, i64 152, !46, i64 160, !46, i64 168, !46, i64 176, !43, i64 184, !43, i64 188, !43, i64 192, !43, i64 196, !44, i64 200, !44, i64 201, !44, i64 202, !44, i64 203, !44, i64 204, !44, i64 205, !44, i64 206, !44, i64 207}
!43 = !{!"int", !44, i64 0}
!44 = !{!"omnipotent char", !45, i64 0}
!45 = !{!"Simple C/C++ TBAA"}
!46 = !{!"long", !44, i64 0}
!47 = !{!"any pointer", !44, i64 0}
!48 = !{!"branch_weights", i32 1, i32 0}
!49 = !{!42, !46, i64 16}
!50 = !{!42, !46, i64 24}
!51 = !{!42, !47, i64 32}
!52 = !{!"branch_weights", i32 0, i32 1}
!53 = !{!54, !46, i64 0}
!54 = !{!"", !46, i64 0, !47, i64 8}
!55 = !{!"branch_weights", i32 1, i32 127}
!56 = !{!"branch_weights", i32 127, i32 1}
!57 = distinct !{!57, !58, !59}
!58 = !{!"llvm.loop.mustprogress"}
!59 = !{!"llvm.loop.unroll.disable"}
!60 = !{!42, !43, i64 4}
!61 = !{!44, !44, i64 0}
!62 = !{!46, !46, i64 0}
!63 = distinct !{!63, !58, !59}
!64 = !{!"VP", i32 1, i64 1, i64 3, i64 1}
