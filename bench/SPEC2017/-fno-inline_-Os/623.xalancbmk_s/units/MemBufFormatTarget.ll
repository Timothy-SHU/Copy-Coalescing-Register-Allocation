; ModuleID = 'MemBufFormatTarget.cpp'
source_filename = "MemBufFormatTarget.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::MemBufFormatTarget" = type { %"class.xercesc_2_7::XMLFormatTarget", ptr, ptr, i32, i32 }
%"class.xercesc_2_7::XMLFormatTarget" = type { ptr }

$_ZN11xercesc_2_715XMLFormatTarget5flushEv = comdat any

$_ZN11xercesc_2_715XMLFormatTargetC2Ev = comdat any

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZN11xercesc_2_715XMLFormatTargetD2Ev = comdat any

$_ZN11xercesc_2_715XMLFormatTargetD0Ev = comdat any

$__clang_call_terminate = comdat any

$_ZTSN11xercesc_2_715XMLFormatTargetE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_715XMLFormatTargetE = comdat any

$_ZTVN11xercesc_2_715XMLFormatTargetE = comdat any

@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN11xercesc_2_718MemBufFormatTargetE = dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_718MemBufFormatTargetE, ptr @_ZN11xercesc_2_718MemBufFormatTargetD2Ev, ptr @_ZN11xercesc_2_718MemBufFormatTargetD0Ev, ptr @_ZN11xercesc_2_718MemBufFormatTarget10writeCharsEPKhjPNS_12XMLFormatterE, ptr @_ZN11xercesc_2_715XMLFormatTarget5flushEv] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_718MemBufFormatTargetE = dso_local constant [36 x i8] c"N11xercesc_2_718MemBufFormatTargetE\00", align 1
@_ZTSN11xercesc_2_715XMLFormatTargetE = linkonce_odr dso_local constant [33 x i8] c"N11xercesc_2_715XMLFormatTargetE\00", comdat, align 1
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_715XMLFormatTargetE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715XMLFormatTargetE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_718MemBufFormatTargetE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_718MemBufFormatTargetE, ptr @_ZTIN11xercesc_2_715XMLFormatTargetE }, align 8
@_ZTVN11xercesc_2_715XMLFormatTargetE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715XMLFormatTargetE, ptr @_ZN11xercesc_2_715XMLFormatTargetD2Ev, ptr @_ZN11xercesc_2_715XMLFormatTargetD0Ev, ptr @__cxa_pure_virtual, ptr @_ZN11xercesc_2_715XMLFormatTarget5flushEv] }, comdat, align 8

@_ZN11xercesc_2_718MemBufFormatTargetC1EiPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, i32, ptr), ptr @_ZN11xercesc_2_718MemBufFormatTargetC2EiPNS_13MemoryManagerE
@_ZN11xercesc_2_718MemBufFormatTargetD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_718MemBufFormatTargetD2Ev

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_718MemBufFormatTargetD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xercesc_2_718MemBufFormatTargetD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #7
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_718MemBufFormatTarget10writeCharsEPKhjPNS_12XMLFormatterE(ptr nocapture noundef nonnull align 8 dereferenceable(32) %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture readnone %3) unnamed_addr #1 align 2 !prof !35 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %16, label %6

6:                                                ; preds = %4
  tail call void @_ZN11xercesc_2_718MemBufFormatTarget14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %2) #8
  %7 = getelementptr inbounds %"class.xercesc_2_7::MemBufFormatTarget", ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !36
  %9 = getelementptr inbounds %"class.xercesc_2_7::MemBufFormatTarget", ptr %0, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !43
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds i8, ptr %8, i64 %11
  %13 = zext i32 %2 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %12, ptr align 1 %1, i64 %13, i1 false)
  %14 = load i32, ptr %9, align 8, !tbaa !43
  %15 = add i32 %14, %2
  store i32 %15, ptr %9, align 8, !tbaa !43
  br label %16

16:                                               ; preds = %6, %4
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715XMLFormatTarget5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !35 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_718MemBufFormatTargetC2EiPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  tail call void @_ZN11xercesc_2_715XMLFormatTargetC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #8
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_718MemBufFormatTargetE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !44
  %4 = getelementptr inbounds %"class.xercesc_2_7::MemBufFormatTarget", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !46
  %5 = getelementptr inbounds %"class.xercesc_2_7::MemBufFormatTarget", ptr %0, i64 0, i32 2
  store ptr null, ptr %5, align 8, !tbaa !36
  %6 = getelementptr inbounds %"class.xercesc_2_7::MemBufFormatTarget", ptr %0, i64 0, i32 3
  store i32 0, ptr %6, align 8, !tbaa !43
  %7 = getelementptr inbounds %"class.xercesc_2_7::MemBufFormatTarget", ptr %0, i64 0, i32 4
  store i32 %1, ptr %7, align 4, !tbaa !47
  %8 = add i32 %1, 4
  %9 = zext i32 %8 to i64
  %10 = load ptr, ptr %2, align 8, !tbaa !44
  %11 = getelementptr inbounds ptr, ptr %10, i64 2
  %12 = load ptr, ptr %11, align 8
  %13 = invoke noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %9) #8
          to label %14 unwind label %15

14:                                               ; preds = %3
  store ptr %13, ptr %5, align 8, !tbaa !36
  store i8 0, ptr %13, align 1, !tbaa !48
  ret void

15:                                               ; preds = %3
  %16 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_715XMLFormatTargetD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  resume { ptr, i32 } %16
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715XMLFormatTargetC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 !prof !35 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #8
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_715XMLFormatTargetE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !44
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #0 comdat align 2 !prof !49 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715XMLFormatTargetD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !35 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715XMLFormatTargetD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
  tail call void @llvm.trap() #9
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_718MemBufFormatTargetD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_718MemBufFormatTargetE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !44
  %2 = getelementptr inbounds %"class.xercesc_2_7::MemBufFormatTarget", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %"class.xercesc_2_7::MemBufFormatTarget", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !36
  %6 = load ptr, ptr %3, align 8, !tbaa !44
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5) #8
          to label %9 unwind label %10

9:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_715XMLFormatTargetD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #9
  unreachable
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #3 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #10
  tail call void @_ZSt9terminatev() #9
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_718MemBufFormatTarget14insureCapacityEj(ptr nocapture noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #1 align 2 !prof !35 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::MemBufFormatTarget", ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !43
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::MemBufFormatTarget", ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !47
  %8 = icmp ult i32 %5, %7
  br i1 %8, label %29, label %9

9:                                                ; preds = %2
  %10 = shl i32 %5, 1
  %11 = getelementptr inbounds %"class.xercesc_2_7::MemBufFormatTarget", ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = add i32 %10, 4
  %14 = zext i32 %13 to i64
  %15 = load ptr, ptr %12, align 8, !tbaa !44
  %16 = getelementptr inbounds ptr, ptr %15, i64 2
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef %14) #8
  %19 = getelementptr inbounds %"class.xercesc_2_7::MemBufFormatTarget", ptr %0, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !36
  %21 = load i32, ptr %6, align 4, !tbaa !47
  %22 = zext i32 %21 to i64
  %23 = add nuw nsw i64 %22, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %18, ptr noundef nonnull align 1 dereferenceable(1) %20, i64 %23, i1 false)
  %24 = load ptr, ptr %11, align 8, !tbaa !46
  %25 = load ptr, ptr %19, align 8, !tbaa !36
  %26 = load ptr, ptr %24, align 8, !tbaa !44
  %27 = getelementptr inbounds ptr, ptr %26, i64 3
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef %25) #8
  store ptr %18, ptr %19, align 8, !tbaa !36
  store i32 %10, ptr %6, align 4, !tbaa !47
  br label %29

29:                                               ; preds = %2, %9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_718MemBufFormatTarget12getRawBufferEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0) local_unnamed_addr #6 align 2 !prof !35 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::MemBufFormatTarget", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !36
  %4 = getelementptr inbounds %"class.xercesc_2_7::MemBufFormatTarget", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !43
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds i8, ptr %3, i64 %6
  store i8 0, ptr %7, align 1, !tbaa !48
  %8 = load ptr, ptr %2, align 8, !tbaa !36
  %9 = load i32, ptr %4, align 8, !tbaa !43
  %10 = add i32 %9, 1
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds i8, ptr %8, i64 %11
  store i8 0, ptr %12, align 1, !tbaa !48
  %13 = load ptr, ptr %2, align 8, !tbaa !36
  %14 = load i32, ptr %4, align 8, !tbaa !43
  %15 = add i32 %14, 2
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i8, ptr %13, i64 %16
  store i8 0, ptr %17, align 1, !tbaa !48
  %18 = load ptr, ptr %2, align 8, !tbaa !36
  %19 = load i32, ptr %4, align 8, !tbaa !43
  %20 = add i32 %19, 3
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i8, ptr %18, i64 %21
  store i8 0, ptr %22, align 1, !tbaa !48
  %23 = load ptr, ptr %2, align 8, !tbaa !36
  ret ptr %23
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_718MemBufFormatTarget5resetEv(ptr nocapture noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #6 align 2 !prof !35 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::MemBufFormatTarget", ptr %0, i64 0, i32 3
  store i32 0, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %"class.xercesc_2_7::MemBufFormatTarget", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !36
  store i8 0, ptr %4, align 1, !tbaa !48
  %5 = load ptr, ptr %3, align 8, !tbaa !36
  %6 = load i32, ptr %2, align 8, !tbaa !43
  %7 = add i32 %6, 1
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds i8, ptr %5, i64 %8
  store i8 0, ptr %9, align 1, !tbaa !48
  %10 = load ptr, ptr %3, align 8, !tbaa !36
  %11 = load i32, ptr %2, align 8, !tbaa !43
  %12 = add i32 %11, 2
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds i8, ptr %10, i64 %13
  store i8 0, ptr %14, align 1, !tbaa !48
  %15 = load ptr, ptr %3, align 8, !tbaa !36
  %16 = load i32, ptr %2, align 8, !tbaa !43
  %17 = add i32 %16, 3
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i8, ptr %15, i64 %18
  store i8 0, ptr %19, align 1, !tbaa !48
  ret void
}

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #3 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 545138346841}
!4 = !{!"MaxCount", i64 89343718472}
!5 = !{!"MaxInternalCount", i64 30012997642}
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
!16 = !{i32 300000, i64 30137156670, i32 4}
!17 = !{i32 400000, i64 28792558693, i32 6}
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
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!35 = !{!"function_entry_count", i64 0}
!36 = !{!37, !39, i64 16}
!37 = !{!"_ZTSN11xercesc_2_718MemBufFormatTargetE", !38, i64 0, !39, i64 8, !39, i64 16, !42, i64 24, !42, i64 28}
!38 = !{!"_ZTSN11xercesc_2_715XMLFormatTargetE"}
!39 = !{!"any pointer", !40, i64 0}
!40 = !{!"omnipotent char", !41, i64 0}
!41 = !{!"Simple C++ TBAA"}
!42 = !{!"int", !40, i64 0}
!43 = !{!37, !42, i64 24}
!44 = !{!45, !45, i64 0}
!45 = !{!"vtable pointer", !41, i64 0}
!46 = !{!37, !39, i64 8}
!47 = !{!37, !42, i64 28}
!48 = !{!40, !40, i64 0}
!49 = !{!"function_entry_count", i64 5836268}
