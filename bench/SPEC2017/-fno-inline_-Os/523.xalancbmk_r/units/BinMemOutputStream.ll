; ModuleID = 'BinMemOutputStream.cpp'
source_filename = "BinMemOutputStream.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::BinMemOutputStream" = type { %"class.xercesc_2_7::BinOutputStream", ptr, ptr, i32, i32 }
%"class.xercesc_2_7::BinOutputStream" = type { ptr }

$__clang_call_terminate = comdat any

@_ZTVN11xercesc_2_718BinMemOutputStreamE = dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_718BinMemOutputStreamE, ptr @_ZN11xercesc_2_718BinMemOutputStreamD2Ev, ptr @_ZN11xercesc_2_718BinMemOutputStreamD0Ev, ptr @_ZNK11xercesc_2_718BinMemOutputStream6curPosEv, ptr @_ZN11xercesc_2_718BinMemOutputStream10writeBytesEPKhj] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_718BinMemOutputStreamE = dso_local constant [36 x i8] c"N11xercesc_2_718BinMemOutputStreamE\00", align 1
@_ZTIN11xercesc_2_715BinOutputStreamE = external constant ptr
@_ZTIN11xercesc_2_718BinMemOutputStreamE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_718BinMemOutputStreamE, ptr @_ZTIN11xercesc_2_715BinOutputStreamE }, align 8

@_ZN11xercesc_2_718BinMemOutputStreamC1EiPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, i32, ptr), ptr @_ZN11xercesc_2_718BinMemOutputStreamC2EiPNS_13MemoryManagerE
@_ZN11xercesc_2_718BinMemOutputStreamD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_718BinMemOutputStreamD2Ev

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_718BinMemOutputStreamC2EiPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11xercesc_2_715BinOutputStreamC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #10
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_718BinMemOutputStreamE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds %"class.xercesc_2_7::BinMemOutputStream", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !38
  %5 = getelementptr inbounds %"class.xercesc_2_7::BinMemOutputStream", ptr %0, i64 0, i32 2
  store ptr null, ptr %5, align 8, !tbaa !44
  %6 = getelementptr inbounds %"class.xercesc_2_7::BinMemOutputStream", ptr %0, i64 0, i32 3
  store i32 0, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %"class.xercesc_2_7::BinMemOutputStream", ptr %0, i64 0, i32 4
  store i32 %1, ptr %7, align 4, !tbaa !46
  %8 = add i32 %1, 4
  %9 = zext i32 %8 to i64
  %10 = load ptr, ptr %2, align 8, !tbaa !35
  %11 = getelementptr inbounds ptr, ptr %10, i64 2
  %12 = load ptr, ptr %11, align 8
  %13 = invoke noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %9) #10
          to label %14 unwind label %15

14:                                               ; preds = %3
  store ptr %13, ptr %5, align 8, !tbaa !44
  store i8 0, ptr %13, align 1, !tbaa !47
  ret void

15:                                               ; preds = %3
  %16 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_715BinOutputStreamD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  resume { ptr, i32 } %16
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_715BinOutputStreamC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_715BinOutputStreamD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_718BinMemOutputStreamD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_718BinMemOutputStreamE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %"class.xercesc_2_7::BinMemOutputStream", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !38
  %4 = getelementptr inbounds %"class.xercesc_2_7::BinMemOutputStream", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = load ptr, ptr %3, align 8, !tbaa !35
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5) #10
          to label %9 unwind label %10

9:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_715BinOutputStreamD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #12
  unreachable
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #13
  tail call void @_ZSt9terminatev() #12
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_718BinMemOutputStreamD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 align 2 {
  tail call void @_ZN11xercesc_2_718BinMemOutputStreamD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #11
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_718BinMemOutputStream10writeBytesEPKhj(ptr nocapture noundef nonnull align 8 dereferenceable(32) %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 align 2 !prof !34 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %15, label %5

5:                                                ; preds = %3
  tail call void @_ZN11xercesc_2_718BinMemOutputStream14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %2) #10
  %6 = getelementptr inbounds %"class.xercesc_2_7::BinMemOutputStream", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !44
  %8 = getelementptr inbounds %"class.xercesc_2_7::BinMemOutputStream", ptr %0, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !45
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds i8, ptr %7, i64 %10
  %12 = zext i32 %2 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %11, ptr align 1 %1, i64 %12, i1 false)
  %13 = load i32, ptr %8, align 8, !tbaa !45
  %14 = add i32 %13, %2
  store i32 %14, ptr %8, align 8, !tbaa !45
  br label %15

15:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_718BinMemOutputStream14insureCapacityEj(ptr nocapture noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #0 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BinMemOutputStream", ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !45
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BinMemOutputStream", ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !46
  %8 = icmp ult i32 %5, %7
  br i1 %8, label %29, label %9

9:                                                ; preds = %2
  %10 = shl i32 %5, 1
  %11 = getelementptr inbounds %"class.xercesc_2_7::BinMemOutputStream", ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !38
  %13 = add i32 %10, 4
  %14 = zext i32 %13 to i64
  %15 = load ptr, ptr %12, align 8, !tbaa !35
  %16 = getelementptr inbounds ptr, ptr %15, i64 2
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef %14) #10
  tail call void @llvm.memset.p0.i64(ptr align 1 %18, i8 0, i64 %14, i1 false)
  %19 = getelementptr inbounds %"class.xercesc_2_7::BinMemOutputStream", ptr %0, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !44
  %21 = load i32, ptr %6, align 4, !tbaa !46
  %22 = zext i32 %21 to i64
  %23 = add nuw nsw i64 %22, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %18, ptr noundef nonnull align 1 dereferenceable(1) %20, i64 %23, i1 false)
  %24 = load ptr, ptr %11, align 8, !tbaa !38
  %25 = load ptr, ptr %19, align 8, !tbaa !44
  %26 = load ptr, ptr %24, align 8, !tbaa !35
  %27 = getelementptr inbounds ptr, ptr %26, i64 3
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef %25) #10
  store ptr %18, ptr %19, align 8, !tbaa !44
  store i32 %10, ptr %6, align 4, !tbaa !46
  br label %29

29:                                               ; preds = %2, %9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_718BinMemOutputStream12getRawBufferEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0) local_unnamed_addr #6 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BinMemOutputStream", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !44
  %4 = getelementptr inbounds %"class.xercesc_2_7::BinMemOutputStream", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !45
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds i8, ptr %3, i64 %6
  store i8 0, ptr %7, align 1, !tbaa !47
  %8 = load ptr, ptr %2, align 8, !tbaa !44
  %9 = load i32, ptr %4, align 8, !tbaa !45
  %10 = add i32 %9, 1
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds i8, ptr %8, i64 %11
  store i8 0, ptr %12, align 1, !tbaa !47
  %13 = load ptr, ptr %2, align 8, !tbaa !44
  %14 = load i32, ptr %4, align 8, !tbaa !45
  %15 = add i32 %14, 2
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i8, ptr %13, i64 %16
  store i8 0, ptr %17, align 1, !tbaa !47
  %18 = load ptr, ptr %2, align 8, !tbaa !44
  %19 = load i32, ptr %4, align 8, !tbaa !45
  %20 = add i32 %19, 3
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i8, ptr %18, i64 %21
  store i8 0, ptr %22, align 1, !tbaa !47
  %23 = load ptr, ptr %2, align 8, !tbaa !44
  ret ptr %23
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_718BinMemOutputStream5resetEv(ptr nocapture noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #7 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BinMemOutputStream", ptr %0, i64 0, i32 3
  store i32 0, ptr %2, align 8, !tbaa !45
  %3 = getelementptr inbounds %"class.xercesc_2_7::BinMemOutputStream", ptr %0, i64 0, i32 2
  br label %5

4:                                                ; preds = %5
  ret void

5:                                                ; preds = %1, %5
  %6 = phi i32 [ 0, %1 ], [ %12, %5 ]
  %7 = load ptr, ptr %3, align 8, !tbaa !44
  %8 = load i32, ptr %2, align 8, !tbaa !45
  %9 = add i32 %8, %6
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds i8, ptr %7, i64 %10
  store i8 0, ptr %11, align 1, !tbaa !47
  %12 = add nuw nsw i32 %6, 1
  %13 = icmp eq i32 %12, 4
  br i1 %13, label %4, label %5, !llvm.loop !48
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_718BinMemOutputStream6curPosEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0) unnamed_addr #8 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BinMemOutputStream", ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !45
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_718BinMemOutputStream7getSizeEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0) local_unnamed_addr #8 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BinMemOutputStream", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !46
  ret i32 %3
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { optsize }
attributes #11 = { nounwind optsize }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 545138344258}
!4 = !{!"MaxCount", i64 89343718472}
!5 = !{!"MaxInternalCount", i64 30012997636}
!6 = !{!"MaxFunctionCount", i64 89343718472}
!7 = !{!"NumCounts", i64 49244}
!8 = !{!"NumFunctions", i64 27305}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 89343718472, i32 1}
!14 = !{i32 100000, i64 89343718472, i32 1}
!15 = !{i32 200000, i64 33857387535, i32 2}
!16 = !{i32 300000, i64 30137156660, i32 4}
!17 = !{i32 400000, i64 28792558684, i32 6}
!18 = !{i32 500000, i64 16886835304, i32 8}
!19 = !{i32 600000, i64 16826917200, i32 11}
!20 = !{i32 700000, i64 13167999625, i32 15}
!21 = !{i32 800000, i64 2443628737, i32 28}
!22 = !{i32 900000, i64 555646850, i32 77}
!23 = !{i32 950000, i64 134227650, i32 195}
!24 = !{i32 990000, i64 30109074, i32 515}
!25 = !{i32 999000, i64 1000482, i32 1252}
!26 = !{i32 999900, i64 150186, i32 2316}
!27 = !{i32 999990, i64 20523, i32 3051}
!28 = !{i32 999999, i64 1160, i32 3778}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"vtable pointer", !37, i64 0}
!37 = !{!"Simple C++ TBAA"}
!38 = !{!39, !41, i64 8}
!39 = !{!"_ZTSN11xercesc_2_718BinMemOutputStreamE", !40, i64 0, !41, i64 8, !41, i64 16, !43, i64 24, !43, i64 28}
!40 = !{!"_ZTSN11xercesc_2_715BinOutputStreamE"}
!41 = !{!"any pointer", !42, i64 0}
!42 = !{!"omnipotent char", !37, i64 0}
!43 = !{!"int", !42, i64 0}
!44 = !{!39, !41, i64 16}
!45 = !{!39, !43, i64 24}
!46 = !{!39, !43, i64 28}
!47 = !{!42, !42, i64 0}
!48 = distinct !{!48, !49}
!49 = !{!"llvm.loop.mustprogress"}
