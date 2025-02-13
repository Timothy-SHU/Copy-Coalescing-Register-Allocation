; ModuleID = 'liblzma/common/block_header_encoder.c'
source_filename = "liblzma/common/block_header_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lzma_block = type { i32, i32, i32, i64, i64, ptr, [64 x i8], ptr, ptr, ptr, i32, i32, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.lzma_filter = type { i64, ptr }

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @lzma_block_header_size(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !37 {
  %2 = alloca i32, align 4
  %3 = load i32, ptr %0, align 8, !tbaa !38
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %53, !prof !45

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.lzma_block, ptr %0, i64 0, i32 3
  %7 = load i64, ptr %6, align 8, !tbaa !46
  %8 = icmp eq i64 %7, -1
  br i1 %8, label %16, label %9, !prof !45

9:                                                ; preds = %5
  %10 = tail call i32 @lzma_vli_size(i64 noundef %7) #5
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %53, label %12

12:                                               ; preds = %9
  %13 = load i64, ptr %6, align 8, !tbaa !46
  %14 = icmp eq i64 %13, 0
  %15 = add i32 %10, 6
  br i1 %14, label %53, label %16

16:                                               ; preds = %12, %5
  %17 = phi i32 [ %15, %12 ], [ 6, %5 ]
  %18 = getelementptr inbounds %struct.lzma_block, ptr %0, i64 0, i32 4
  %19 = load i64, ptr %18, align 8, !tbaa !47
  %20 = icmp eq i64 %19, -1
  br i1 %20, label %25, label %21, !prof !45

21:                                               ; preds = %16
  %22 = tail call i32 @lzma_vli_size(i64 noundef %19) #5
  %23 = icmp eq i32 %22, 0
  %24 = add i32 %22, %17
  br i1 %23, label %53, label %25

25:                                               ; preds = %21, %16
  %26 = phi i32 [ %24, %21 ], [ %17, %16 ]
  %27 = getelementptr inbounds %struct.lzma_block, ptr %0, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !48
  %29 = icmp eq ptr %28, null
  br i1 %29, label %53, label %30, !prof !49

30:                                               ; preds = %25
  %31 = load i64, ptr %28, align 8, !tbaa !50
  %32 = icmp eq i64 %31, -1
  br i1 %32, label %53, label %33, !prof !49

33:                                               ; preds = %30, %42
  %34 = phi ptr [ %46, %42 ], [ %28, %30 ]
  %35 = phi i64 [ %44, %42 ], [ 0, %30 ]
  %36 = phi i32 [ %43, %42 ], [ %26, %30 ]
  %37 = icmp eq i64 %35, 4
  br i1 %37, label %53, label %38, !prof !49

38:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  %39 = call i32 @lzma_filter_flags_size(ptr noundef nonnull %2, ptr noundef nonnull %34) #5
  %40 = icmp eq i32 %39, 0
  %41 = load i32, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  br i1 %40, label %42, label %53

42:                                               ; preds = %38
  %43 = add i32 %41, %36
  %44 = add nuw nsw i64 %35, 1
  %45 = load ptr, ptr %27, align 8, !tbaa !48
  %46 = getelementptr inbounds %struct.lzma_filter, ptr %45, i64 %44
  %47 = load i64, ptr %46, align 8, !tbaa !50
  %48 = icmp eq i64 %47, -1
  br i1 %48, label %49, label %33, !prof !52, !llvm.loop !53

49:                                               ; preds = %42
  %50 = add i32 %43, 3
  %51 = and i32 %50, -4
  %52 = getelementptr inbounds %struct.lzma_block, ptr %0, i64 0, i32 1
  store i32 %51, ptr %52, align 4, !tbaa !55
  br label %53

53:                                               ; preds = %38, %33, %9, %49, %21, %12, %30, %25, %1
  %54 = phi i32 [ 8, %1 ], [ 0, %49 ], [ 11, %21 ], [ 11, %12 ], [ 11, %30 ], [ 11, %25 ], [ 11, %9 ], [ %39, %38 ], [ 11, %33 ]
  ret i32 %54
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @lzma_vli_size(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @lzma_filter_flags_size(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @lzma_block_header_encode(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !37 {
  %3 = alloca i64, align 8
  %4 = tail call i64 @lzma_block_unpadded_size(ptr noundef %0) #5
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %68, label %6, !prof !49

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.lzma_block, ptr %0, i64 0, i32 4
  %8 = load i64, ptr %7, align 8, !tbaa !47
  %9 = icmp sgt i64 %8, -2
  br i1 %9, label %10, label %68, !prof !56

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.lzma_block, ptr %0, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !55
  %13 = add i32 %12, -4
  %14 = zext i32 %13 to i64
  %15 = lshr i32 %13, 2
  %16 = trunc i32 %15 to i8
  store i8 %16, ptr %1, align 1, !tbaa !57
  %17 = getelementptr inbounds i8, ptr %1, i64 1
  store i8 0, ptr %17, align 1, !tbaa !57
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  store i64 2, ptr %3, align 8, !tbaa !58
  %18 = getelementptr inbounds %struct.lzma_block, ptr %0, i64 0, i32 3
  %19 = load i64, ptr %18, align 8, !tbaa !46
  %20 = icmp eq i64 %19, -1
  br i1 %20, label %27, label %21, !prof !45

21:                                               ; preds = %10
  %22 = call i32 @lzma_vli_encode(i64 noundef %19, ptr noundef null, ptr noundef nonnull %1, ptr noundef nonnull %3, i64 noundef %14) #5
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %66

24:                                               ; preds = %21
  %25 = load i8, ptr %17, align 1, !tbaa !57
  %26 = or i8 %25, 64
  store i8 %26, ptr %17, align 1, !tbaa !57
  br label %27

27:                                               ; preds = %24, %10
  %28 = load i64, ptr %7, align 8, !tbaa !47
  %29 = icmp eq i64 %28, -1
  br i1 %29, label %36, label %30, !prof !45

30:                                               ; preds = %27
  %31 = call i32 @lzma_vli_encode(i64 noundef %28, ptr noundef null, ptr noundef nonnull %1, ptr noundef nonnull %3, i64 noundef %14) #5
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %66

33:                                               ; preds = %30
  %34 = load i8, ptr %17, align 1, !tbaa !57
  %35 = or i8 %34, -128
  store i8 %35, ptr %17, align 1, !tbaa !57
  br label %36

36:                                               ; preds = %33, %27
  %37 = getelementptr inbounds %struct.lzma_block, ptr %0, i64 0, i32 5
  %38 = load ptr, ptr %37, align 8, !tbaa !48
  %39 = icmp eq ptr %38, null
  br i1 %39, label %66, label %40, !prof !49

40:                                               ; preds = %36
  %41 = load i64, ptr %38, align 8, !tbaa !50
  %42 = icmp eq i64 %41, -1
  br i1 %42, label %66, label %43, !prof !49

43:                                               ; preds = %40, %51
  %44 = phi ptr [ %52, %51 ], [ %38, %40 ]
  %45 = phi i64 [ %53, %51 ], [ 0, %40 ]
  %46 = icmp eq i64 %45, 4
  br i1 %46, label %66, label %47, !prof !49

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.lzma_filter, ptr %44, i64 %45
  %49 = call i32 @lzma_filter_flags_encode(ptr noundef %48, ptr noundef nonnull %1, ptr noundef nonnull %3, i64 noundef %14) #5
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %66

51:                                               ; preds = %47
  %52 = load ptr, ptr %37, align 8, !tbaa !48
  %53 = add nuw nsw i64 %45, 1
  %54 = getelementptr inbounds %struct.lzma_filter, ptr %52, i64 %53
  %55 = load i64, ptr %54, align 8, !tbaa !50
  %56 = icmp eq i64 %55, -1
  br i1 %56, label %57, label %43, !prof !45, !llvm.loop !59

57:                                               ; preds = %51
  %58 = load i8, ptr %17, align 1, !tbaa !57
  %59 = trunc i64 %45 to i8
  %60 = or i8 %58, %59
  store i8 %60, ptr %17, align 1, !tbaa !57
  %61 = load i64, ptr %3, align 8, !tbaa !58
  %62 = getelementptr inbounds i8, ptr %1, i64 %61
  %63 = sub i64 %14, %61
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %62, i8 0, i64 %63, i1 false)
  %64 = getelementptr inbounds i8, ptr %1, i64 %14
  %65 = call i32 @lzma_crc32(ptr noundef nonnull %1, i64 noundef %14, i32 noundef 0) #5
  call fastcc void @unaligned_write32le(ptr noundef nonnull %64, i32 noundef %65) #7
  br label %66

66:                                               ; preds = %47, %43, %57, %36, %40, %21, %30
  %67 = phi i32 [ %31, %30 ], [ %22, %21 ], [ 11, %40 ], [ 11, %36 ], [ 0, %57 ], [ 11, %43 ], [ %49, %47 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  br label %68

68:                                               ; preds = %2, %6, %66
  %69 = phi i32 [ %67, %66 ], [ 11, %6 ], [ 11, %2 ]
  ret i32 %69
}

; Function Attrs: optsize
declare i64 @lzma_block_unpadded_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @lzma_vli_encode(i64 noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @lzma_filter_flags_encode(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @unaligned_write32le(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #4 !prof !37 !PGOFuncName !60 {
  %3 = trunc i32 %1 to i8
  store i8 %3, ptr %0, align 1, !tbaa !57
  %4 = lshr i32 %1, 8
  %5 = trunc i32 %4 to i8
  %6 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %5, ptr %6, align 1, !tbaa !57
  %7 = lshr i32 %1, 16
  %8 = trunc i32 %7 to i8
  %9 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %8, ptr %9, align 1, !tbaa !57
  %10 = lshr i32 %1, 24
  %11 = trunc i32 %10 to i8
  %12 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %11, ptr %12, align 1, !tbaa !57
  ret void
}

; Function Attrs: optsize
declare i32 @lzma_crc32(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind optsize }
attributes #6 = { nounwind }
attributes #7 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!36}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 42596457582}
!4 = !{!"MaxCount", i64 3509320374}
!5 = !{!"MaxInternalCount", i64 1880543368}
!6 = !{!"MaxFunctionCount", i64 3509320374}
!7 = !{!"NumCounts", i64 1899}
!8 = !{!"NumFunctions", i64 428}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 3509320374, i32 1}
!14 = !{i32 100000, i64 3323890816, i32 2}
!15 = !{i32 200000, i64 2354835913, i32 3}
!16 = !{i32 300000, i64 1717654358, i32 5}
!17 = !{i32 400000, i64 1697273389, i32 8}
!18 = !{i32 500000, i64 1349259993, i32 11}
!19 = !{i32 600000, i64 759326020, i32 16}
!20 = !{i32 700000, i64 575792475, i32 22}
!21 = !{i32 800000, i64 285720408, i32 36}
!22 = !{i32 900000, i64 154264530, i32 55}
!23 = !{i32 950000, i64 86561411, i32 73}
!24 = !{i32 990000, i64 20049460, i32 113}
!25 = !{i32 999000, i64 3293392, i32 158}
!26 = !{i32 999900, i64 80863, i32 231}
!27 = !{i32 999990, i64 33328, i32 274}
!28 = !{i32 999999, i64 3584, i32 298}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35}
!35 = !{ptr @lzma_block_header_encode, ptr @lzma_block_unpadded_size, i64 1}
!36 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!37 = !{!"function_entry_count", i64 1}
!38 = !{!39, !40, i64 0}
!39 = !{!"", !40, i64 0, !40, i64 4, !40, i64 8, !43, i64 16, !43, i64 24, !44, i64 32, !41, i64 40, !44, i64 104, !44, i64 112, !44, i64 120, !40, i64 128, !40, i64 132, !43, i64 136, !43, i64 144, !43, i64 152, !43, i64 160, !43, i64 168, !43, i64 176, !40, i64 184, !40, i64 188, !40, i64 192, !40, i64 196, !41, i64 200, !41, i64 201, !41, i64 202, !41, i64 203, !41, i64 204, !41, i64 205, !41, i64 206, !41, i64 207}
!40 = !{!"int", !41, i64 0}
!41 = !{!"omnipotent char", !42, i64 0}
!42 = !{!"Simple C/C++ TBAA"}
!43 = !{!"long", !41, i64 0}
!44 = !{!"any pointer", !41, i64 0}
!45 = !{!"branch_weights", i32 2, i32 1}
!46 = !{!39, !43, i64 16}
!47 = !{!39, !43, i64 24}
!48 = !{!39, !44, i64 32}
!49 = !{!"branch_weights", i32 1, i32 2}
!50 = !{!51, !43, i64 0}
!51 = !{!"", !43, i64 0, !44, i64 8}
!52 = !{!"branch_weights", i32 127, i32 1}
!53 = distinct !{!53, !54}
!54 = !{!"llvm.loop.mustprogress"}
!55 = !{!39, !40, i64 4}
!56 = !{!"branch_weights", i32 7, i32 2}
!57 = !{!41, !41, i64 0}
!58 = !{!43, !43, i64 0}
!59 = distinct !{!59, !54}
!60 = !{!"block_header_encoder.c:unaligned_write32le"}
