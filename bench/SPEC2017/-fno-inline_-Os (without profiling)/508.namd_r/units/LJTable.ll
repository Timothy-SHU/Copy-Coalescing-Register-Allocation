; ModuleID = 'LJTable.C'
source_filename = "LJTable.C"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.LJTable = type <{ ptr, ptr, i32, [4 x i8] }>
%"struct.LJTable::TableEntry" = type { double, double }

@.str = private unnamed_addr constant [15 x i8] c"LJTABLE_BEGIN\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"%lf %lf %lf %lf\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"LJTABLE_END\0A\00", align 1
@str = private unnamed_addr constant [17 x i8] c"value read error\00", align 1
@str.8 = private unnamed_addr constant [20 x i8] c"Missing LJTABLE_END\00", align 1
@str.9 = private unnamed_addr constant [21 x i8] c"table_dim read error\00", align 1
@str.10 = private unnamed_addr constant [22 x i8] c"Missing LJTABLE_BEGIN\00", align 1

@_ZN7LJTableC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN7LJTableC2Ev
@_ZN7LJTableD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN7LJTableD2Ev

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN7LJTableC2Ev(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(20) %0) unnamed_addr #0 align 2 {
  %2 = getelementptr inbounds %class.LJTable, ptr %0, i64 0, i32 2
  store i32 0, ptr %2, align 8, !tbaa !5
  store ptr null, ptr %0, align 8, !tbaa !11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN7LJTable8readfileEP8_IO_FILE(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef %1) local_unnamed_addr #1 align 2 {
  %3 = alloca [1024 x i8], align 16
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #12
  %8 = call ptr @fgets(ptr noundef nonnull %3, i32 noundef 1024, ptr noundef %1) #13
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = call i32 @bcmp(ptr noundef nonnull dereferenceable(15) %3, ptr noundef nonnull dereferenceable(15) @.str, i64 15)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %10, %2
  %14 = call i32 @puts(ptr nonnull dereferenceable(1) @str.10)
  br label %81

15:                                               ; preds = %10
  %16 = getelementptr inbounds %class.LJTable, ptr %0, i64 0, i32 2
  %17 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef nonnull %16) #13
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = call i32 @puts(ptr nonnull dereferenceable(1) @str.9)
  br label %81

21:                                               ; preds = %15
  %22 = load i32, ptr %16, align 8, !tbaa !5
  %23 = shl nsw i32 %22, 1
  %24 = mul nsw i32 %23, %22
  %25 = sext i32 %24 to i64
  %26 = shl nsw i64 %25, 4
  %27 = or disjoint i64 %26, 31
  %28 = call noalias noundef nonnull ptr @_Znam(i64 noundef %27) #14
  %29 = ptrtoint ptr %28 to i64
  store ptr %28, ptr %0, align 8, !tbaa !11
  %30 = sub i64 0, %29
  %31 = and i64 %30, 31
  %32 = getelementptr i8, ptr %28, i64 %31
  %33 = getelementptr inbounds %class.LJTable, ptr %0, i64 0, i32 1
  store ptr %32, ptr %33, align 8, !tbaa !12
  %34 = icmp sgt i32 %22, 0
  br i1 %34, label %35, label %73

35:                                               ; preds = %21, %67
  %36 = phi i32 [ %68, %67 ], [ %22, %21 ]
  %37 = phi i32 [ %69, %67 ], [ 0, %21 ]
  %38 = icmp slt i32 %37, %36
  br i1 %38, label %39, label %67

39:                                               ; preds = %35, %45
  %40 = phi i32 [ %65, %45 ], [ %36, %35 ]
  %41 = phi i32 [ %64, %45 ], [ %37, %35 ]
  %42 = load ptr, ptr %33, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #12
  %43 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %1, ptr noundef nonnull @.str.4, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #13
  %44 = icmp eq i32 %43, 4
  br i1 %44, label %45, label %71

45:                                               ; preds = %39
  %46 = mul nsw i32 %40, %41
  %47 = add nsw i32 %46, %37
  %48 = shl nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %"struct.LJTable::TableEntry", ptr %42, i64 %49
  %51 = mul nsw i32 %40, %37
  %52 = add nsw i32 %51, %41
  %53 = shl nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %"struct.LJTable::TableEntry", ptr %42, i64 %54
  %56 = load double, ptr %4, align 8, !tbaa !13
  store double %56, ptr %55, align 8, !tbaa !15
  %57 = load double, ptr %5, align 8, !tbaa !13
  %58 = getelementptr inbounds %"struct.LJTable::TableEntry", ptr %42, i64 %54, i32 1
  store double %57, ptr %58, align 8, !tbaa !17
  %59 = load double, ptr %6, align 8, !tbaa !13
  %60 = getelementptr inbounds %"struct.LJTable::TableEntry", ptr %55, i64 1
  store double %59, ptr %60, align 8, !tbaa !15
  %61 = load double, ptr %7, align 8, !tbaa !13
  %62 = getelementptr inbounds %"struct.LJTable::TableEntry", ptr %55, i64 1, i32 1
  store double %61, ptr %62, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %50, ptr noundef nonnull align 8 dereferenceable(16) %55, i64 16, i1 false), !tbaa.struct !18
  %63 = getelementptr inbounds %"struct.LJTable::TableEntry", ptr %50, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %63, ptr noundef nonnull align 8 dereferenceable(16) %60, i64 16, i1 false), !tbaa.struct !18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  %64 = add nuw nsw i32 %41, 1
  %65 = load i32, ptr %16, align 8, !tbaa !5
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %39, label %67, !llvm.loop !19

67:                                               ; preds = %45, %35
  %68 = phi i32 [ %36, %35 ], [ %65, %45 ]
  %69 = add nuw nsw i32 %37, 1
  %70 = icmp slt i32 %69, %68
  br i1 %70, label %35, label %73, !llvm.loop !21

71:                                               ; preds = %39
  %72 = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  br label %81

73:                                               ; preds = %67, %21
  %74 = call ptr @fgets(ptr noundef nonnull %3, i32 noundef 1024, ptr noundef %1) #13
  %75 = icmp eq ptr %74, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %73
  %77 = call i32 @bcmp(ptr noundef nonnull dereferenceable(13) %3, ptr noundef nonnull dereferenceable(13) @.str.6, i64 13)
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %76, %73
  %80 = call i32 @puts(ptr nonnull dereferenceable(1) @str.8)
  br label %81

81:                                               ; preds = %71, %79, %76, %19, %13
  %82 = phi i32 [ -1, %13 ], [ -2, %19 ], [ -4, %79 ], [ -3, %71 ], [ 0, %76 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #12
  ret i32 %82
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree nounwind optsize
declare noundef ptr @fgets(ptr noundef, i32 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN7LJTableD2Ev(ptr nocapture noundef nonnull readonly align 8 dereferenceable(20) %0) unnamed_addr #7 align 2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !11
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @_ZdaPv(ptr noundef nonnull %2) #15
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN7LJTable18compute_vdw_paramsEiiPNS_10TableEntryES1_(ptr nocapture noundef nonnull readnone align 8 dereferenceable(20) %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3, ptr nocapture noundef readnone %4) local_unnamed_addr #9 align 2 {
  ret void
}

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #11

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind willreturn memory(argmem: read) }
attributes #11 = { nofree nounwind }
attributes #12 = { nounwind }
attributes #13 = { optsize }
attributes #14 = { builtin optsize allocsize(0) }
attributes #15 = { builtin nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !10, i64 16}
!6 = !{!"_ZTS7LJTable", !7, i64 0, !7, i64 8, !10, i64 16}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!6, !7, i64 0}
!12 = !{!6, !7, i64 8}
!13 = !{!14, !14, i64 0}
!14 = !{!"double", !8, i64 0}
!15 = !{!16, !14, i64 0}
!16 = !{!"_ZTSN7LJTable10TableEntryE", !14, i64 0, !14, i64 8}
!17 = !{!16, !14, i64 8}
!18 = !{i64 0, i64 8, !13, i64 8, i64 8, !13}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.mustprogress"}
!21 = distinct !{!21, !20}
