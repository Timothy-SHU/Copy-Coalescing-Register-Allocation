; ModuleID = 'liblzma/simple/ia64.c'
source_filename = "liblzma/simple/ia64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@ia64_code.BRANCH_TABLE = internal unnamed_addr constant [32 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 6, i32 6, i32 0, i32 0, i32 7, i32 7, i32 4, i32 4, i32 0, i32 0, i32 4, i32 4, i32 0, i32 0], align 16

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @lzma_simple_ia64_encoder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !34 {
  %4 = tail call fastcc i32 @ia64_coder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext true) #3
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @ia64_coder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #0 !prof !34 !PGOFuncName !35 {
  %5 = tail call i32 @lzma_simple_coder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @ia64_code, i64 noundef 0, i64 noundef 16, i32 noundef 16, i1 noundef zeroext %3) #4
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @lzma_simple_ia64_decoder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !34 {
  %4 = tail call fastcc i32 @ia64_coder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext false) #3
  ret i32 %4
}

; Function Attrs: optsize
declare i32 @lzma_simple_coder_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal i64 @ia64_code(ptr nocapture readnone %0, i32 noundef %1, i1 noundef zeroext %2, ptr nocapture noundef %3, i64 noundef %4) #2 !prof !34 !PGOFuncName !36 {
  %6 = icmp ult i64 %4, 16
  br i1 %6, label %104, label %10

7:                                                ; preds = %100
  %8 = add nuw i64 %11, 16
  %9 = icmp ugt i64 %8, %4
  br i1 %9, label %104, label %10, !llvm.loop !37

10:                                               ; preds = %5, %7
  %11 = phi i64 [ %8, %7 ], [ 16, %5 ]
  %12 = phi i64 [ %11, %7 ], [ 0, %5 ]
  %13 = getelementptr inbounds i8, ptr %3, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !39
  %15 = and i8 %14, 31
  %16 = zext nneg i8 %15 to i64
  %17 = getelementptr inbounds [32 x i32], ptr @ia64_code.BRANCH_TABLE, i64 0, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !42
  %19 = trunc i64 %12 to i32
  %20 = add i32 %19, %1
  %21 = sub i32 0, %20
  %22 = select i1 %2, i32 %20, i32 %21
  %23 = lshr i32 %22, 4
  br label %24

24:                                               ; preds = %10, %100
  %25 = phi i64 [ 5, %10 ], [ %102, %100 ]
  %26 = phi i64 [ 0, %10 ], [ %101, %100 ]
  %27 = trunc i64 %26 to i32
  %28 = shl nuw nsw i32 1, %27
  %29 = and i32 %28, %18
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %100, label %31

31:                                               ; preds = %24
  %32 = lshr i64 %25, 3
  %33 = and i64 %32, 536870911
  %34 = getelementptr i8, ptr %3, i64 %33
  br label %40

35:                                               ; preds = %40
  %36 = and i64 %25, 7
  %37 = lshr i64 %49, %36
  %38 = and i64 %37, 2061584305664
  %39 = icmp eq i64 %38, 687194767360
  br i1 %39, label %52, label %100

40:                                               ; preds = %31, %40
  %41 = phi i64 [ 0, %31 ], [ %50, %40 ]
  %42 = phi i64 [ 0, %31 ], [ %49, %40 ]
  %43 = or disjoint i64 %41, %12
  %44 = getelementptr i8, ptr %34, i64 %43
  %45 = load i8, ptr %44, align 1, !tbaa !39
  %46 = zext i8 %45 to i64
  %47 = shl nuw nsw i64 %41, 3
  %48 = shl nuw nsw i64 %46, %47
  %49 = add i64 %48, %42
  %50 = add nuw nsw i64 %41, 1
  %51 = icmp eq i64 %50, 6
  br i1 %51, label %35, label %40, !llvm.loop !44

52:                                               ; preds = %35
  %53 = lshr i64 %37, 13
  %54 = and i64 %53, 1048575
  %55 = lshr i64 %37, 16
  %56 = and i64 %55, 1048576
  %57 = or disjoint i64 %54, %56
  %58 = trunc i64 %57 to i32
  %59 = add nuw nsw i32 %23, %58
  %60 = and i64 %37, -1451698941441
  %61 = and i32 %59, 1048575
  %62 = zext nneg i32 %61 to i64
  %63 = shl nuw nsw i64 %62, 13
  %64 = or disjoint i64 %63, %60
  %65 = and i32 %59, 1048576
  %66 = zext nneg i32 %65 to i64
  %67 = shl nuw nsw i64 %66, 16
  %68 = or disjoint i64 %64, %67
  %69 = trunc i64 %36 to i32
  %70 = shl nsw i32 -1, %69
  %71 = xor i32 %70, -1
  %72 = zext nneg i32 %71 to i64
  %73 = and i64 %49, %72
  %74 = shl i64 %68, %36
  %75 = or i64 %74, %73
  br label %76

76:                                               ; preds = %96, %52
  %77 = phi i64 [ 0, %52 ], [ %97, %96 ]
  %78 = phi <2 x i64> [ <i64 0, i64 1>, %52 ], [ %98, %96 ]
  %79 = icmp ult <2 x i64> %78, <i64 6, i64 6>
  %80 = extractelement <2 x i1> %79, i64 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %76
  %82 = shl nuw nsw i64 %77, 3
  %83 = or disjoint i64 %77, %12
  %84 = lshr i64 %75, %82
  %85 = getelementptr i8, ptr %34, i64 %83
  %86 = trunc i64 %84 to i8
  store i8 %86, ptr %85, align 1, !tbaa !39
  br label %87

87:                                               ; preds = %81, %76
  %88 = extractelement <2 x i1> %79, i64 1
  br i1 %88, label %89, label %96

89:                                               ; preds = %87
  %90 = or disjoint i64 %77, 1
  %91 = shl nuw nsw i64 %90, 3
  %92 = or disjoint i64 %90, %12
  %93 = lshr i64 %75, %91
  %94 = getelementptr i8, ptr %34, i64 %92
  %95 = trunc i64 %93 to i8
  store i8 %95, ptr %94, align 1, !tbaa !39
  br label %96

96:                                               ; preds = %89, %87
  %97 = add i64 %77, 2
  %98 = add <2 x i64> %78, <i64 2, i64 2>
  %99 = icmp eq i64 %97, 6
  br i1 %99, label %100, label %76, !llvm.loop !45

100:                                              ; preds = %96, %35, %24
  %101 = add nuw nsw i64 %26, 1
  %102 = add nuw nsw i64 %25, 41
  %103 = icmp eq i64 %101, 3
  br i1 %103, label %7, label %24, !llvm.loop !48

104:                                              ; preds = %7, %5
  %105 = phi i64 [ 0, %5 ], [ %11, %7 ]
  ret i64 %105
}

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize }
attributes #4 = { nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

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
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!"ia64.c:ia64_coder_init"}
!36 = !{!"ia64.c:ia64_code"}
!37 = distinct !{!37, !38}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{!40, !40, i64 0}
!40 = !{!"omnipotent char", !41, i64 0}
!41 = !{!"Simple C/C++ TBAA"}
!42 = !{!43, !43, i64 0}
!43 = !{!"int", !40, i64 0}
!44 = distinct !{!44, !38}
!45 = distinct !{!45, !38, !46, !47}
!46 = !{!"llvm.loop.isvectorized", i32 1}
!47 = !{!"llvm.loop.unroll.runtime.disable"}
!48 = distinct !{!48, !38}
