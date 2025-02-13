; ModuleID = 'params.c'
source_filename = "params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }

@compiler_params = dso_local local_unnamed_addr global ptr null, align 8
@num_compiler_params = internal unnamed_addr global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"params.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"minimum value of parameter %qs is %u\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"maximum value of parameter %qs is %u\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"invalid parameter %qs\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @add_params(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #0 !prof !40 {
  %3 = load ptr, ptr @compiler_params, align 8, !tbaa !41
  %4 = load i64, ptr @num_compiler_params, align 8, !tbaa !45
  %5 = add i64 %4, %1
  %6 = shl i64 %5, 5
  %7 = tail call ptr @xrealloc(ptr noundef %3, i64 noundef %6) #5
  store ptr %7, ptr @compiler_params, align 8, !tbaa !41
  %8 = load i64, ptr @num_compiler_params, align 8, !tbaa !45
  %9 = getelementptr inbounds %struct.param_info, ptr %7, i64 %8
  %10 = shl i64 %1, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %9, ptr align 8 %0, i64 %10, i1 false)
  %11 = add i64 %8, %1
  store i64 %11, ptr @num_compiler_params, align 8, !tbaa !45
  ret void
}

; Function Attrs: optsize
declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @set_param_value(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !47 {
  %3 = icmp eq i32 %1, -1
  br i1 %3, label %4, label %5, !prof !48

4:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 61, ptr noundef nonnull @.str.1) #5
  br label %5

5:                                                ; preds = %2, %4
  %6 = load i64, ptr @num_compiler_params, align 8, !tbaa !45
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %34, label %8, !prof !49

8:                                                ; preds = %5
  %9 = load ptr, ptr @compiler_params, align 8, !tbaa !41
  br label %10

10:                                               ; preds = %8, %31
  %11 = phi i64 [ 0, %8 ], [ %32, %31 ]
  %12 = getelementptr inbounds %struct.param_info, ptr %9, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !50
  %14 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %0) #6
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %31, !prof !53

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.param_info, ptr %9, i64 %11, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !54
  %19 = icmp sgt i32 %18, %1
  br i1 %19, label %20, label %21, !prof !48

20:                                               ; preds = %16
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.2, ptr noundef %13, i32 noundef %18) #5
  br label %35

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.param_info, ptr %9, i64 %11, i32 4
  %23 = load i32, ptr %22, align 4, !tbaa !55
  %24 = icmp sgt i32 %23, %18
  %25 = icmp slt i32 %23, %1
  %26 = and i1 %24, %25
  br i1 %26, label %27, label %28, !prof !56

27:                                               ; preds = %21
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.3, ptr noundef %13, i32 noundef %23) #5
  br label %35

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.param_info, ptr %9, i64 %11, i32 1
  store i32 %1, ptr %29, align 8, !tbaa !57
  %30 = getelementptr inbounds %struct.param_info, ptr %9, i64 %11, i32 2
  store i8 1, ptr %30, align 4, !tbaa !58
  br label %35

31:                                               ; preds = %10
  %32 = add nuw i64 %11, 1
  %33 = icmp eq i64 %32, %6
  br i1 %33, label %34, label %10, !prof !59, !llvm.loop !60

34:                                               ; preds = %31, %5
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.4, ptr noundef %0) #5
  br label %35

35:                                               ; preds = %20, %28, %27, %34
  ret void
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @error(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i64 @get_num_compiler_params() local_unnamed_addr #4 !prof !62 {
  %1 = load i64, ptr @num_compiler_params, align 8, !tbaa !45
  ret i64 %1
}

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!39}

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
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38}
!35 = !{ptr @add_params, ptr @xrealloc, i64 1}
!36 = !{ptr @set_param_value, ptr @fancy_abort, i64 1}
!37 = !{ptr @set_param_value, ptr @strcmp, i64 666}
!38 = !{ptr @set_param_value, ptr @error, i64 2}
!39 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!40 = !{!"function_entry_count", i64 1}
!41 = !{!42, !42, i64 0}
!42 = !{!"any pointer", !43, i64 0}
!43 = !{!"omnipotent char", !44, i64 0}
!44 = !{!"Simple C/C++ TBAA"}
!45 = !{!46, !46, i64 0}
!46 = !{!"long", !43, i64 0}
!47 = !{!"function_entry_count", i64 9}
!48 = !{!"branch_weights", i32 1, i32 10}
!49 = !{!"branch_weights", i32 1, i32 127}
!50 = !{!51, !42, i64 0}
!51 = !{!"param_info", !42, i64 0, !52, i64 8, !43, i64 12, !52, i64 16, !52, i64 20, !42, i64 24}
!52 = !{!"int", !43, i64 0}
!53 = !{!"branch_weights", i32 10, i32 809}
!54 = !{!51, !52, i64 16}
!55 = !{!51, !52, i64 20}
!56 = !{!"branch_weights", i32 1, i32 21}
!57 = !{!51, !52, i64 8}
!58 = !{!51, !43, i64 12}
!59 = !{!"branch_weights", i32 127, i32 104577}
!60 = distinct !{!60, !61}
!61 = !{!"llvm.loop.mustprogress"}
!62 = !{!"function_entry_count", i64 0}
