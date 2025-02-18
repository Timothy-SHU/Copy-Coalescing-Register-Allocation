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

; Function Attrs: cold nounwind uwtable
define dso_local noundef i64 @global_opt() local_unnamed_addr #0 !prof !51 {
  br label %1

1:                                                ; preds = %31, %0
  %2 = phi i64 [ -1, %0 ], [ %27, %31 ]
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %35, label %4, !prof !52

4:                                                ; preds = %1
  %5 = load i64, ptr getelementptr inbounds (%struct.network, ptr @net, i64 0, i32 5), align 8, !tbaa !53
  %6 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i64 noundef %5)
  %7 = tail call i64 @primal_net_simplex(ptr noundef nonnull @net) #9
  %8 = load i64, ptr getelementptr inbounds (%struct.network, ptr @net, i64 0, i32 28), align 8, !tbaa !60
  %9 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i64 noundef %8)
  %10 = tail call double @flow_cost(ptr noundef nonnull @net) #9
  %11 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %10)
  %12 = load i64, ptr getelementptr inbounds (%struct.network, ptr @net, i64 0, i32 7), align 8, !tbaa !61
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %23, label %14, !prof !62

14:                                               ; preds = %4
  %15 = tail call i64 @suspend_impl(ptr noundef nonnull @net, i64 noundef -1, i64 noundef 0) #9
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %19, !prof !63

17:                                               ; preds = %14
  %18 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.18)
  tail call void @exit(i32 noundef -1) #10
  unreachable

19:                                               ; preds = %14
  %20 = icmp eq i64 %15, 0
  br i1 %20, label %26, label %21, !prof !63

21:                                               ; preds = %19
  %22 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i64 noundef %15)
  br label %26

23:                                               ; preds = %4
  %24 = load i64, ptr getelementptr inbounds (%struct.network, ptr @net, i64 0, i32 5), align 8, !tbaa !53
  %25 = tail call i64 @refreshPositions(ptr noundef nonnull @net, ptr noundef nonnull @getOriginalArcPosition, i64 noundef %24) #9
  br label %26

26:                                               ; preds = %19, %21, %23
  %27 = tail call i64 @price_out_impl(ptr noundef nonnull @net) #9
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %31, label %29, !prof !62

29:                                               ; preds = %26
  %30 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i64 noundef %27)
  br label %31

31:                                               ; preds = %29, %26
  %32 = icmp slt i64 %27, 0
  br i1 %32, label %33, label %1, !prof !64, !llvm.loop !65

33:                                               ; preds = %31
  %34 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.18)
  tail call void @exit(i32 noundef -1) #10
  unreachable

35:                                               ; preds = %1
  %36 = tail call double @flow_cost(ptr noundef nonnull @net) #9
  store double %36, ptr getelementptr inbounds (%struct.network, ptr @net, i64 0, i32 19), align 8, !tbaa !68
  %37 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %36)
  ret i64 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

declare i64 @primal_net_simplex(ptr noundef) local_unnamed_addr #3

declare double @flow_cost(ptr noundef) local_unnamed_addr #3

declare i64 @suspend_impl(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #4

declare i64 @refreshPositions(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i64 @getOriginalArcPosition(ptr noundef, i64 noundef) #3

declare i64 @price_out_impl(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !51 {
  %3 = alloca [80 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #9
  %4 = icmp slt i32 %0, 2
  br i1 %4, label %39, label %5, !prof !69

5:                                                ; preds = %2
  %6 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.19)
  %7 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.20)
  %8 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.21)
  %9 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.22)
  %10 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.23)
  %11 = tail call i32 @putchar(i32 10)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(648) @net, i8 0, i64 648, i1 false)
  store i64 10000000, ptr getelementptr inbounds (%struct.network, ptr @net, i64 0, i32 18), align 8, !tbaa !70
  %12 = getelementptr inbounds ptr, ptr %1, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !71
  %14 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @net, ptr noundef nonnull dereferenceable(1) %13) #9
  %15 = icmp eq i32 %0, 3
  br i1 %15, label %16, label %22, !prof !69

16:                                               ; preds = %5
  %17 = getelementptr inbounds ptr, ptr %1, i64 2
  %18 = load ptr, ptr %17, align 8, !tbaa !71
  %19 = tail call i64 @strtol(ptr nocapture noundef nonnull %18, ptr noundef null, i32 noundef 10) #9
  %20 = trunc i64 %19 to i32
  %21 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %20) #9
  br label %23

22:                                               ; preds = %5
  store i64 32780217678717805, ptr %3, align 16
  br label %23

23:                                               ; preds = %22, %16
  %24 = tail call i64 @read_min(ptr noundef nonnull @net) #9
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %29, label %26, !prof !72

26:                                               ; preds = %23
  %27 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.25)
  %28 = tail call i64 @getfree(ptr noundef nonnull @net) #9
  br label %39

29:                                               ; preds = %23
  %30 = load i64, ptr getelementptr inbounds (%struct.network, ptr @net, i64 0, i32 3), align 8, !tbaa !73
  %31 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i64 noundef %30)
  %32 = tail call i64 @primal_start_artificial(ptr noundef nonnull @net) #9
  %33 = tail call i64 @global_opt()
  %34 = call i64 @write_objective_value(ptr noundef nonnull %3, ptr noundef nonnull @net) #9
  %35 = icmp eq i64 %34, 0
  %36 = call i64 @getfree(ptr noundef nonnull @net) #9
  br i1 %35, label %37, label %39, !prof !72

37:                                               ; preds = %29
  %38 = call i32 @puts(ptr nonnull dereferenceable(1) @str.24)
  br label %39

39:                                               ; preds = %29, %2, %37, %26
  %40 = phi i32 [ -1, %26 ], [ 0, %37 ], [ -1, %2 ], [ -1, %29 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #9
  ret i32 %40
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

declare i64 @read_min(ptr noundef) local_unnamed_addr #3

declare i64 @getfree(ptr noundef) local_unnamed_addr #3

declare i64 @primal_start_artificial(ptr noundef) local_unnamed_addr #3

declare i64 @write_objective_value(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #8

attributes #0 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!50}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 135822698359}
!8 = !{!"MaxCount", i64 17199625996}
!9 = !{!"MaxInternalCount", i64 11238593286}
!10 = !{!"MaxFunctionCount", i64 17199625996}
!11 = !{!"NumCounts", i64 388}
!12 = !{!"NumFunctions", i64 38}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 17199625996, i32 1}
!18 = !{i32 100000, i64 17199625996, i32 1}
!19 = !{i32 200000, i64 11238593286, i32 2}
!20 = !{i32 300000, i64 8939527315, i32 4}
!21 = !{i32 400000, i64 8160331559, i32 5}
!22 = !{i32 500000, i64 6848194679, i32 7}
!23 = !{i32 600000, i64 4703930260, i32 10}
!24 = !{i32 700000, i64 3754953164, i32 13}
!25 = !{i32 800000, i64 2790238363, i32 18}
!26 = !{i32 900000, i64 825639170, i32 26}
!27 = !{i32 950000, i64 336885004, i32 38}
!28 = !{i32 990000, i64 90508259, i32 76}
!29 = !{i32 999000, i64 9513862, i32 104}
!30 = !{i32 999900, i64 960032, i32 152}
!31 = !{i32 999990, i64 162202, i32 175}
!32 = !{i32 999999, i64 29993, i32 190}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49}
!35 = !{ptr @global_opt, ptr @printf, i64 164}
!36 = !{ptr @global_opt, ptr @primal_net_simplex, i64 33}
!37 = !{ptr @global_opt, ptr @flow_cost, i64 34}
!38 = !{ptr @global_opt, ptr @suspend_impl, i64 32}
!39 = !{ptr @global_opt, ptr @refreshPositions, i64 1}
!40 = !{ptr @global_opt, ptr @price_out_impl, i64 33}
!41 = !{ptr @main, ptr @puts, i64 6}
!42 = !{ptr @main, ptr @putchar, i64 1}
!43 = !{ptr @main, ptr @strcpy, i64 1}
!44 = !{ptr @main, ptr @read_min, i64 1}
!45 = !{ptr @main, ptr @printf, i64 1}
!46 = !{ptr @main, ptr @primal_start_artificial, i64 1}
!47 = !{ptr @main, ptr @global_opt, i64 1}
!48 = !{ptr @main, ptr @write_objective_value, i64 1}
!49 = !{ptr @main, ptr @getfree, i64 1}
!50 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!51 = !{!"function_entry_count", i64 1}
!52 = !{!"branch_weights", i32 1, i32 33}
!53 = !{!54, !57, i64 424}
!54 = !{!"network", !55, i64 0, !55, i64 200, !57, i64 400, !57, i64 408, !57, i64 416, !57, i64 424, !57, i64 432, !57, i64 440, !57, i64 448, !57, i64 456, !57, i64 464, !57, i64 472, !57, i64 480, !57, i64 488, !57, i64 496, !57, i64 504, !57, i64 512, !57, i64 520, !57, i64 528, !58, i64 536, !57, i64 544, !59, i64 552, !59, i64 560, !59, i64 568, !59, i64 576, !59, i64 584, !59, i64 592, !59, i64 600, !57, i64 608, !57, i64 616, !57, i64 624, !57, i64 632, !57, i64 640}
!55 = !{!"omnipotent char", !56, i64 0}
!56 = !{!"Simple C/C++ TBAA"}
!57 = !{!"long", !55, i64 0}
!58 = !{!"double", !55, i64 0}
!59 = !{!"any pointer", !55, i64 0}
!60 = !{!54, !57, i64 608}
!61 = !{!54, !57, i64 440}
!62 = !{!"branch_weights", i32 1, i32 32}
!63 = !{!"branch_weights", i32 0, i32 32}
!64 = !{!"branch_weights", i32 0, i32 33}
!65 = distinct !{!65, !66, !67}
!66 = !{!"llvm.loop.mustprogress"}
!67 = !{!"llvm.loop.unroll.disable"}
!68 = !{!54, !58, i64 536}
!69 = !{!"branch_weights", i32 0, i32 1}
!70 = !{!54, !57, i64 528}
!71 = !{!59, !59, i64 0}
!72 = !{!"branch_weights", i32 1, i32 0}
!73 = !{!54, !57, i64 408}
