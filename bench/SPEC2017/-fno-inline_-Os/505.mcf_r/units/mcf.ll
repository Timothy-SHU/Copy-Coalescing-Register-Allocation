; ModuleID = 'mcf.c'
source_filename = "mcf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.network = type { [200 x i8], [200 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [34 x i8] c"active arcs                : %ld\0A\00", align 1
@net = dso_local global %struct.network zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"simplex iterations         : %ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"objective value            : %0.0f\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"erased arcs                : %ld\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"new implicit arcs          : %ld\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"checksum                   : %0.0f\0A\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"mcf.%d.out\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"nodes                      : %ld\0A\00", align 1
@str.18 = private unnamed_addr constant [28 x i8] c"not enough memory, exit(-1)\00", align 1
@str.19 = private unnamed_addr constant [27 x i8] c"\0AMCF SPEC CPU version 1.11\00", align 1
@str.20 = private unnamed_addr constant [51 x i8] c"Copyright (c) 1998-2000 Zuse Institut Berlin (ZIB)\00", align 1
@str.21 = private unnamed_addr constant [45 x i8] c"Copyright (c) 2000-2002 Andreas Loebel & ZIB\00", align 1
@str.22 = private unnamed_addr constant [39 x i8] c"Copyright (c) 2003-2005 Andreas Loebel\00", align 1
@str.23 = private unnamed_addr constant [69 x i8] c"Copyright (c) 2006-2010 Dres. Loebel, Borndoerfer & Weider GbR (LBW)\00", align 1
@str.24 = private unnamed_addr constant [5 x i8] c"done\00", align 1
@str.25 = private unnamed_addr constant [17 x i8] c"read error, exit\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i64 @global_opt() local_unnamed_addr #0 !prof !45 {
  br label %1

1:                                                ; preds = %31, %0
  %2 = phi i64 [ -1, %0 ], [ %27, %31 ]
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %35, label %4, !prof !46

4:                                                ; preds = %1
  %5 = load i64, ptr getelementptr inbounds (%struct.network, ptr @net, i64 0, i32 5), align 8, !tbaa !47
  %6 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i64 noundef %5) #9
  %7 = tail call i64 @primal_net_simplex(ptr noundef nonnull @net) #10
  %8 = load i64, ptr getelementptr inbounds (%struct.network, ptr @net, i64 0, i32 28), align 8, !tbaa !54
  %9 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i64 noundef %8) #9
  %10 = tail call double @flow_cost(ptr noundef nonnull @net) #10
  %11 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %10) #9
  %12 = load i64, ptr getelementptr inbounds (%struct.network, ptr @net, i64 0, i32 7), align 8, !tbaa !55
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %23, label %14, !prof !56

14:                                               ; preds = %4
  %15 = tail call i64 @suspend_impl(ptr noundef nonnull @net, i64 noundef -1, i64 noundef 0) #10
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %19, !prof !57

17:                                               ; preds = %14
  %18 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.18)
  tail call void @exit(i32 noundef -1) #11
  unreachable

19:                                               ; preds = %14
  %20 = icmp eq i64 %15, 0
  br i1 %20, label %26, label %21, !prof !57

21:                                               ; preds = %19
  %22 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i64 noundef %15) #9
  br label %26

23:                                               ; preds = %4
  %24 = load i64, ptr getelementptr inbounds (%struct.network, ptr @net, i64 0, i32 5), align 8, !tbaa !47
  %25 = tail call i64 @refreshPositions(ptr noundef nonnull @net, ptr noundef nonnull @getOriginalArcPosition, i64 noundef %24) #10
  br label %26

26:                                               ; preds = %19, %21, %23
  %27 = tail call i64 @price_out_impl(ptr noundef nonnull @net) #10
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %31, label %29, !prof !56

29:                                               ; preds = %26
  %30 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i64 noundef %27) #9
  br label %31

31:                                               ; preds = %29, %26
  %32 = icmp slt i64 %27, 0
  br i1 %32, label %33, label %1, !prof !58, !llvm.loop !59

33:                                               ; preds = %31
  %34 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.18)
  tail call void @exit(i32 noundef -1) #11
  unreachable

35:                                               ; preds = %1
  %36 = tail call double @flow_cost(ptr noundef nonnull @net) #10
  store double %36, ptr getelementptr inbounds (%struct.network, ptr @net, i64 0, i32 19), align 8, !tbaa !61
  %37 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %36) #9
  ret i64 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @primal_net_simplex(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare double @flow_cost(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @suspend_impl(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i64 @refreshPositions(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @getOriginalArcPosition(ptr noundef, i64 noundef) #3

; Function Attrs: optsize
declare i64 @price_out_impl(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !45 {
  %3 = alloca [80 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #12
  %4 = icmp slt i32 %0, 2
  br i1 %4, label %38, label %5, !prof !62

5:                                                ; preds = %2
  %6 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.19)
  %7 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.20)
  %8 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.21)
  %9 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.22)
  %10 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.23)
  %11 = tail call i32 @putchar(i32 10)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(648) @net, i8 0, i64 648, i1 false)
  store i64 10000000, ptr getelementptr inbounds (%struct.network, ptr @net, i64 0, i32 18), align 8, !tbaa !63
  %12 = getelementptr inbounds ptr, ptr %1, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !64
  %14 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @net, ptr noundef nonnull dereferenceable(1) %13) #10
  %15 = icmp eq i32 %0, 3
  br i1 %15, label %16, label %21, !prof !62

16:                                               ; preds = %5
  %17 = getelementptr inbounds ptr, ptr %1, i64 2
  %18 = load ptr, ptr %17, align 8, !tbaa !64
  %19 = tail call i32 @atoi(ptr nocapture noundef %18) #13
  %20 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %19) #10
  br label %22

21:                                               ; preds = %5
  store i64 32780217678717805, ptr %3, align 16
  br label %22

22:                                               ; preds = %21, %16
  %23 = tail call i64 @read_min(ptr noundef nonnull @net) #10
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %28, label %25, !prof !65

25:                                               ; preds = %22
  %26 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.25)
  %27 = tail call i64 @getfree(ptr noundef nonnull @net) #10
  br label %38

28:                                               ; preds = %22
  %29 = load i64, ptr getelementptr inbounds (%struct.network, ptr @net, i64 0, i32 3), align 8, !tbaa !66
  %30 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i64 noundef %29) #9
  %31 = tail call i64 @primal_start_artificial(ptr noundef nonnull @net) #10
  %32 = tail call i64 @global_opt() #9
  %33 = call i64 @write_objective_value(ptr noundef nonnull %3, ptr noundef nonnull @net) #10
  %34 = icmp eq i64 %33, 0
  %35 = call i64 @getfree(ptr noundef nonnull @net) #10
  br i1 %34, label %36, label %38, !prof !65

36:                                               ; preds = %28
  %37 = call i32 @puts(ptr nonnull dereferenceable(1) @str.24)
  br label %38

38:                                               ; preds = %28, %2, %36, %25
  %39 = phi i32 [ -1, %25 ], [ 0, %36 ], [ -1, %2 ], [ -1, %28 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #12
  ret i32 %39
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @atoi(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @read_min(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @getfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @primal_start_artificial(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @write_objective_value(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #8

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { optsize }
attributes #10 = { nounwind optsize }
attributes #11 = { noreturn nounwind optsize }
attributes #12 = { nounwind }
attributes #13 = { nounwind optsize willreturn memory(read) }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!44}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 85502453929}
!4 = !{!"MaxCount", i64 17199625996}
!5 = !{!"MaxInternalCount", i64 7388838583}
!6 = !{!"MaxFunctionCount", i64 17199625996}
!7 = !{!"NumCounts", i64 220}
!8 = !{!"NumFunctions", i64 31}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 17199625996, i32 1}
!14 = !{i32 100000, i64 17199625996, i32 1}
!15 = !{i32 200000, i64 17199625996, i32 1}
!16 = !{i32 300000, i64 8939527315, i32 2}
!17 = !{i32 400000, i64 6848194679, i32 4}
!18 = !{i32 500000, i64 5961032710, i32 5}
!19 = !{i32 600000, i64 5547644419, i32 6}
!20 = !{i32 700000, i64 3854402676, i32 9}
!21 = !{i32 800000, i64 3712252500, i32 11}
!22 = !{i32 900000, i64 1613262769, i32 14}
!23 = !{i32 950000, i64 336885004, i32 20}
!24 = !{i32 990000, i64 90533666, i32 46}
!25 = !{i32 999000, i64 51748451, i32 55}
!26 = !{i32 999900, i64 733625, i32 81}
!27 = !{i32 999990, i64 246962, i32 97}
!28 = !{i32 999999, i64 38371, i32 104}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43}
!35 = !{ptr @global_opt, ptr @printf, i64 44}
!36 = !{ptr @global_opt, ptr @primal_net_simplex, i64 9}
!37 = !{ptr @global_opt, ptr @flow_cost, i64 10}
!38 = !{ptr @global_opt, ptr @suspend_impl, i64 8}
!39 = !{ptr @global_opt, ptr @price_out_impl, i64 9}
!40 = !{ptr @main, ptr @puts, i64 5}
!41 = !{ptr @main, ptr @putchar, i64 1}
!42 = !{ptr @main, ptr @strcpy, i64 1}
!43 = !{ptr @main, ptr @read_min, i64 1}
!44 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!45 = !{!"function_entry_count", i64 1}
!46 = !{!"branch_weights", i32 2, i32 34}
!47 = !{!48, !51, i64 424}
!48 = !{!"network", !49, i64 0, !49, i64 200, !51, i64 400, !51, i64 408, !51, i64 416, !51, i64 424, !51, i64 432, !51, i64 440, !51, i64 448, !51, i64 456, !51, i64 464, !51, i64 472, !51, i64 480, !51, i64 488, !51, i64 496, !51, i64 504, !51, i64 512, !51, i64 520, !51, i64 528, !52, i64 536, !51, i64 544, !53, i64 552, !53, i64 560, !53, i64 568, !53, i64 576, !53, i64 584, !53, i64 592, !53, i64 600, !51, i64 608, !51, i64 616, !51, i64 624, !51, i64 632, !51, i64 640}
!49 = !{!"omnipotent char", !50, i64 0}
!50 = !{!"Simple C/C++ TBAA"}
!51 = !{!"long", !49, i64 0}
!52 = !{!"double", !49, i64 0}
!53 = !{!"any pointer", !49, i64 0}
!54 = !{!48, !51, i64 608}
!55 = !{!48, !51, i64 440}
!56 = !{!"branch_weights", i32 2, i32 33}
!57 = !{!"branch_weights", i32 1, i32 33}
!58 = !{!"branch_weights", i32 1, i32 34}
!59 = distinct !{!59, !60}
!60 = !{!"llvm.loop.mustprogress"}
!61 = !{!48, !52, i64 536}
!62 = !{!"branch_weights", i32 1, i32 2}
!63 = !{!48, !51, i64 528}
!64 = !{!53, !53, i64 0}
!65 = !{!"branch_weights", i32 2, i32 1}
!66 = !{!48, !51, i64 408}
