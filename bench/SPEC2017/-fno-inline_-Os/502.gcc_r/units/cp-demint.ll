; ModuleID = 'cp-demint.c'
source_filename = "cp-demint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.demangle_builtin_type_info = type { ptr, i32, ptr, i32, i32 }
%struct.demangle_operator_info = type { ptr, ptr, i32, i32 }
%struct.demangle_component = type { i32, %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, i32 }
%struct.d_info = type { ptr, ptr, i32, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, i32 }

@cplus_demangle_builtin_types = external constant [32 x %struct.demangle_builtin_type_info], align 16
@cplus_demangle_operators = external constant [0 x %struct.demangle_operator_info], align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @cplus_demangle_fill_component(ptr noundef writeonly %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 !prof !34 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %4
  switch i32 %1, label %12 [
    i32 1, label %9
    i32 2, label %9
    i32 3, label %9
    i32 4, label %9
    i32 11, label %9
    i32 29, label %9
    i32 37, label %9
    i32 38, label %9
    i32 39, label %9
    i32 42, label %9
    i32 43, label %9
    i32 47, label %9
    i32 48, label %9
    i32 49, label %9
    i32 50, label %9
    i32 51, label %9
    i32 52, label %9
    i32 53, label %9
    i32 54, label %9
    i32 9, label %7
    i32 10, label %7
    i32 12, label %7
    i32 13, label %7
    i32 14, label %7
    i32 15, label %7
    i32 16, label %7
    i32 17, label %7
    i32 18, label %7
    i32 19, label %7
    i32 20, label %7
    i32 23, label %7
    i32 24, label %7
    i32 25, label %7
    i32 26, label %7
    i32 27, label %7
    i32 28, label %7
    i32 30, label %7
    i32 31, label %7
    i32 33, label %7
    i32 34, label %7
    i32 36, label %7
    i32 46, label %7
  ]

7:                                                ; preds = %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6
  %8 = icmp eq ptr %3, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %7, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6
  store i32 %1, ptr %0, align 8, !tbaa !35
  %10 = getelementptr inbounds %struct.demangle_component, ptr %0, i64 0, i32 1
  store ptr %2, ptr %10, align 8, !tbaa !40
  %11 = getelementptr inbounds %struct.demangle_component, ptr %0, i64 0, i32 1, i32 0, i32 1
  store ptr %3, ptr %11, align 8, !tbaa !40
  br label %12

12:                                               ; preds = %6, %7, %4, %9
  %13 = phi i32 [ 1, %9 ], [ 0, %4 ], [ 0, %7 ], [ 0, %6 ]
  ret i32 %13
}

; Function Attrs: nofree noinline nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @cplus_demangle_fill_builtin_type(ptr noundef writeonly %0, ptr noundef readonly %1) local_unnamed_addr #1 !prof !34 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %24, label %6

6:                                                ; preds = %2
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #8
  %8 = trunc i64 %7 to i32
  br label %9

9:                                                ; preds = %6, %21
  %10 = phi i64 [ 0, %6 ], [ %22, %21 ]
  %11 = getelementptr inbounds [32 x %struct.demangle_builtin_type_info], ptr @cplus_demangle_builtin_types, i64 0, i64 %10, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !41
  %13 = icmp eq i32 %12, %8
  br i1 %13, label %14, label %21

14:                                               ; preds = %9
  %15 = getelementptr inbounds [32 x %struct.demangle_builtin_type_info], ptr @cplus_demangle_builtin_types, i64 0, i64 %10
  %16 = load ptr, ptr %15, align 16, !tbaa !44
  %17 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %16) #8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  store i32 35, ptr %0, align 8, !tbaa !35
  %20 = getelementptr inbounds %struct.demangle_component, ptr %0, i64 0, i32 1
  store ptr %15, ptr %20, align 8, !tbaa !40
  br label %24

21:                                               ; preds = %9, %14
  %22 = add nuw nsw i64 %10, 1
  %23 = icmp eq i64 %22, 32
  br i1 %23, label %24, label %9, !llvm.loop !45

24:                                               ; preds = %21, %2, %19
  %25 = phi i32 [ 1, %19 ], [ 0, %2 ], [ 0, %21 ]
  ret i32 %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree noinline nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @cplus_demangle_fill_operator(ptr noundef writeonly %0, ptr noundef readonly %1, i32 noundef %2) local_unnamed_addr #1 !prof !34 {
  %4 = icmp eq ptr %0, null
  %5 = icmp eq ptr %1, null
  %6 = or i1 %4, %5
  br i1 %6, label %35, label %7

7:                                                ; preds = %3
  %8 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #8
  %9 = trunc i64 %8 to i32
  %10 = load ptr, ptr getelementptr inbounds ([0 x %struct.demangle_operator_info], ptr @cplus_demangle_operators, i64 0, i64 0, i32 1), align 8, !tbaa !47
  %11 = icmp eq ptr %10, null
  br i1 %11, label %35, label %12

12:                                               ; preds = %7, %29
  %13 = phi ptr [ %33, %29 ], [ %10, %7 ]
  %14 = phi i64 [ %31, %29 ], [ 0, %7 ]
  %15 = phi i32 [ %30, %29 ], [ 0, %7 ]
  %16 = getelementptr inbounds [0 x %struct.demangle_operator_info], ptr @cplus_demangle_operators, i64 0, i64 %14, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !49
  %18 = icmp eq i32 %17, %9
  br i1 %18, label %19, label %29

19:                                               ; preds = %12
  %20 = getelementptr inbounds [0 x %struct.demangle_operator_info], ptr @cplus_demangle_operators, i64 0, i64 %14, i32 3
  %21 = load i32, ptr %20, align 4, !tbaa !50
  %22 = icmp eq i32 %21, %2
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %13) #8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = getelementptr inbounds [0 x %struct.demangle_operator_info], ptr @cplus_demangle_operators, i64 0, i64 %14
  store i32 44, ptr %0, align 8, !tbaa !35
  %28 = getelementptr inbounds %struct.demangle_component, ptr %0, i64 0, i32 1
  store ptr %27, ptr %28, align 8, !tbaa !40
  br label %35

29:                                               ; preds = %12, %19, %23
  %30 = add i32 %15, 1
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds [0 x %struct.demangle_operator_info], ptr @cplus_demangle_operators, i64 0, i64 %31, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !47
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %12, !llvm.loop !51

35:                                               ; preds = %29, %7, %3, %26
  %36 = phi i32 [ 1, %26 ], [ 0, %3 ], [ 0, %7 ], [ 0, %29 ]
  ret i32 %36
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @cplus_demangle_v3_components(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #4 !prof !34 {
  %4 = alloca %struct.d_info, align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %4) #9
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #8
  %6 = load i8, ptr %0, align 1, !tbaa !40
  %7 = icmp eq i8 %6, 95
  br i1 %7, label %8, label %12

8:                                                ; preds = %3
  %9 = getelementptr inbounds i8, ptr %0, i64 1
  %10 = load i8, ptr %9, align 1, !tbaa !40
  %11 = icmp eq i8 %10, 90
  br i1 %11, label %15, label %12

12:                                               ; preds = %8, %3
  %13 = and i32 %1, 16
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %59, label %15

15:                                               ; preds = %12, %8
  %16 = phi i1 [ true, %8 ], [ false, %12 ]
  call void @cplus_demangle_init_info(ptr noundef nonnull %0, i32 noundef %1, i64 noundef %5, ptr noundef nonnull %4) #10
  %17 = getelementptr inbounds %struct.d_info, ptr %4, i64 0, i32 6
  %18 = load i32, ptr %17, align 4, !tbaa !52
  %19 = sext i32 %18 to i64
  %20 = mul nsw i64 %19, 24
  %21 = call ptr @malloc(i64 noundef %20) #11
  %22 = getelementptr inbounds %struct.d_info, ptr %4, i64 0, i32 4
  store ptr %21, ptr %22, align 8, !tbaa !54
  %23 = getelementptr inbounds %struct.d_info, ptr %4, i64 0, i32 9
  %24 = load i32, ptr %23, align 4, !tbaa !55
  %25 = sext i32 %24 to i64
  %26 = shl nsw i64 %25, 3
  %27 = call ptr @malloc(i64 noundef %26) #11
  %28 = getelementptr inbounds %struct.d_info, ptr %4, i64 0, i32 7
  store ptr %27, ptr %28, align 8, !tbaa !56
  %29 = icmp eq ptr %21, null
  %30 = icmp eq ptr %27, null
  %31 = or i1 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %15
  br i1 %29, label %34, label %33

33:                                               ; preds = %32
  call void @free(ptr noundef nonnull %21) #8
  br label %34

34:                                               ; preds = %33, %32
  br i1 %30, label %59, label %35

35:                                               ; preds = %34
  call void @free(ptr noundef nonnull %27) #8
  br label %59

36:                                               ; preds = %15
  br i1 %16, label %37, label %39

37:                                               ; preds = %36
  %38 = call ptr @cplus_demangle_mangled_name(ptr noundef nonnull %4, i32 noundef 1) #10
  br label %41

39:                                               ; preds = %36
  %40 = call ptr @cplus_demangle_type(ptr noundef nonnull %4) #10
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi ptr [ %40, %39 ], [ %38, %37 ]
  %43 = and i32 %1, 1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.d_info, ptr %4, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !57
  %48 = load i8, ptr %47, align 1, !tbaa !40
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %45
  %51 = load ptr, ptr %28, align 8, !tbaa !56
  call void @free(ptr noundef %51) #8
  br label %57

52:                                               ; preds = %45, %41
  %53 = load ptr, ptr %28, align 8, !tbaa !56
  call void @free(ptr noundef %53) #8
  %54 = icmp eq ptr %42, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %52
  %56 = load ptr, ptr %22, align 8, !tbaa !54
  store ptr %56, ptr %2, align 8, !tbaa !58
  br label %59

57:                                               ; preds = %50, %52
  %58 = load ptr, ptr %22, align 8, !tbaa !54
  call void @free(ptr noundef %58) #8
  br label %59

59:                                               ; preds = %55, %57, %34, %35, %12
  %60 = phi ptr [ null, %12 ], [ null, %35 ], [ null, %34 ], [ null, %57 ], [ %42, %55 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %4) #9
  ret ptr %60
}

; Function Attrs: optsize
declare void @cplus_demangle_init_info(ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @cplus_demangle_mangled_name(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @cplus_demangle_type(ptr noundef) local_unnamed_addr #5

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { optsize }
attributes #9 = { nounwind }
attributes #10 = { nounwind optsize }
attributes #11 = { optsize allocsize(0) }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 41384367471}
!4 = !{!"MaxCount", i64 1634498074}
!5 = !{!"MaxInternalCount", i64 547036138}
!6 = !{!"MaxFunctionCount", i64 1634498074}
!7 = !{!"NumCounts", i64 195328}
!8 = !{!"NumFunctions", i64 22513}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1634498074, i32 1}
!14 = !{i32 100000, i64 272534181, i32 9}
!15 = !{i32 200000, i64 109006700, i32 29}
!16 = !{i32 300000, i64 55802042, i32 85}
!17 = !{i32 400000, i64 37542678, i32 177}
!18 = !{i32 500000, i64 23214123, i32 321}
!19 = !{i32 600000, i64 14141732, i32 538}
!20 = !{i32 700000, i64 7343732, i32 948}
!21 = !{i32 800000, i64 3522590, i32 1768}
!22 = !{i32 900000, i64 1189516, i32 3798}
!23 = !{i32 950000, i64 537165, i32 6437}
!24 = !{i32 990000, i64 138704, i32 12217}
!25 = !{i32 999000, i64 22717, i32 17399}
!26 = !{i32 999900, i64 2200, i32 21474}
!27 = !{i32 999990, i64 190, i32 26113}
!28 = !{i32 999999, i64 38, i32 30999}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !37, i64 0}
!36 = !{!"demangle_component", !37, i64 0, !38, i64 8}
!37 = !{!"int", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!38, !38, i64 0}
!41 = !{!42, !37, i64 8}
!42 = !{!"demangle_builtin_type_info", !43, i64 0, !37, i64 8, !43, i64 16, !37, i64 24, !37, i64 28}
!43 = !{!"any pointer", !38, i64 0}
!44 = !{!42, !43, i64 0}
!45 = distinct !{!45, !46}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!48, !43, i64 8}
!48 = !{!"demangle_operator_info", !43, i64 0, !43, i64 8, !37, i64 16, !37, i64 20}
!49 = !{!48, !37, i64 16}
!50 = !{!48, !37, i64 20}
!51 = distinct !{!51, !46}
!52 = !{!53, !37, i64 44}
!53 = !{!"d_info", !43, i64 0, !43, i64 8, !37, i64 16, !43, i64 24, !43, i64 32, !37, i64 40, !37, i64 44, !43, i64 48, !37, i64 56, !37, i64 60, !37, i64 64, !43, i64 72, !37, i64 80}
!54 = !{!53, !43, i64 32}
!55 = !{!53, !37, i64 60}
!56 = !{!53, !43, i64 48}
!57 = !{!53, !43, i64 24}
!58 = !{!43, !43, i64 0}
