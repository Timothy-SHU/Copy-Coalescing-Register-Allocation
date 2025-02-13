; ModuleID = 'BinFileInputStream.cpp'
source_filename = "BinFileInputStream.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::BinFileInputStream" = type { %"class.xercesc_2_7::BinInputStream", ptr, ptr }
%"class.xercesc_2_7::BinInputStream" = type { ptr }
%"class.xercesc_2_7::ArrayJanitor" = type { ptr, ptr }

$_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_712ArrayJanitorItED2Ev = comdat any

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZN11xercesc_2_712ArrayJanitorItE5resetEPt = comdat any

$__clang_call_terminate = comdat any

@_ZTVN11xercesc_2_718BinFileInputStreamE = dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_718BinFileInputStreamE, ptr @_ZN11xercesc_2_718BinFileInputStreamD2Ev, ptr @_ZN11xercesc_2_718BinFileInputStreamD0Ev, ptr @_ZNK11xercesc_2_718BinFileInputStream6curPosEv, ptr @_ZN11xercesc_2_718BinFileInputStream9readBytesEPhj] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_718BinFileInputStreamE = dso_local constant [36 x i8] c"N11xercesc_2_718BinFileInputStreamE\00", align 1
@_ZTIN11xercesc_2_714BinInputStreamE = external constant ptr
@_ZTIN11xercesc_2_718BinFileInputStreamE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_718BinFileInputStreamE, ptr @_ZTIN11xercesc_2_714BinInputStreamE }, align 8

@_ZN11xercesc_2_718BinFileInputStreamC1EPKtPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xercesc_2_718BinFileInputStreamC2EPKtPNS_13MemoryManagerE
@_ZN11xercesc_2_718BinFileInputStreamC1EPKcPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xercesc_2_718BinFileInputStreamC2EPKcPNS_13MemoryManagerE
@_ZN11xercesc_2_718BinFileInputStreamC1EPvPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xercesc_2_718BinFileInputStreamC2EPvPNS_13MemoryManagerE
@_ZN11xercesc_2_718BinFileInputStreamD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_718BinFileInputStreamD2Ev

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_718BinFileInputStreamD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xercesc_2_718BinFileInputStreamD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #7
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_718BinFileInputStream6curPosEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0) unnamed_addr #1 align 2 !prof !45 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BinFileInputStream", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %"class.xercesc_2_7::BinFileInputStream", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !52
  %6 = tail call noundef i32 @_ZN11xercesc_2_716XMLPlatformUtils10curFilePosEPvPNS_13MemoryManagerE(ptr noundef %3, ptr noundef %5) #8
  ret i32 %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_718BinFileInputStream9readBytesEPhj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 align 2 !prof !53 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BinFileInputStream", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = getelementptr inbounds %"class.xercesc_2_7::BinFileInputStream", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !52
  %8 = tail call noundef i32 @_ZN11xercesc_2_716XMLPlatformUtils14readFileBufferEPvjPhPNS_13MemoryManagerE(ptr noundef %5, i32 noundef %2, ptr noundef %1, ptr noundef %7) #8
  ret i32 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_718BinFileInputStreamC2EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !54 {
  tail call void @_ZN11xercesc_2_714BinInputStreamC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #8
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_718BinFileInputStreamE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !55
  %4 = getelementptr inbounds %"class.xercesc_2_7::BinFileInputStream", ptr %0, i64 0, i32 1
  store ptr null, ptr %4, align 8, !tbaa !46
  %5 = getelementptr inbounds %"class.xercesc_2_7::BinFileInputStream", ptr %0, i64 0, i32 2
  store ptr %2, ptr %5, align 8, !tbaa !52
  %6 = invoke noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils8openFileEPKtPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %2) #8
          to label %7 unwind label %8

7:                                                ; preds = %3
  store ptr %6, ptr %4, align 8, !tbaa !46
  ret void

8:                                                ; preds = %3
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_714BinInputStreamD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  resume { ptr, i32 } %9
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_714BinInputStreamC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils8openFileEPKtPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_714BinInputStreamD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_718BinFileInputStreamC2EPKcPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  %4 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  tail call void @_ZN11xercesc_2_714BinInputStreamC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #8
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_718BinFileInputStreamE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !55
  %5 = getelementptr inbounds %"class.xercesc_2_7::BinFileInputStream", ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !46
  %6 = getelementptr inbounds %"class.xercesc_2_7::BinFileInputStream", ptr %0, i64 0, i32 2
  store ptr %2, ptr %6, align 8, !tbaa !52
  %7 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %2) #8
          to label %8 unwind label %12

8:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  invoke void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %7, ptr noundef %2) #8
          to label %9 unwind label %14

9:                                                ; preds = %8
  %10 = invoke noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils8openFileEPKtPNS_13MemoryManagerE(ptr noundef %7, ptr noundef %2) #8
          to label %11 unwind label %16

11:                                               ; preds = %9
  store ptr %10, ptr %5, align 8, !tbaa !46
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  ret void

12:                                               ; preds = %3
  %13 = landingpad { ptr, i32 }
          cleanup
  br label %20

14:                                               ; preds = %8
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %18

16:                                               ; preds = %9
  %17 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #7
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi { ptr, i32 } [ %17, %16 ], [ %15, %14 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  br label %20

20:                                               ; preds = %18, %12
  %21 = phi { ptr, i32 } [ %19, %18 ], [ %13, %12 ]
  call void @_ZN11xercesc_2_714BinInputStreamD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  resume { ptr, i32 } %21
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 comdat align 2 !prof !57 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #8
  store ptr %1, ptr %0, align 8, !tbaa !58
  %4 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !60
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !61 {
  invoke void @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null) #8
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #10
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #0 comdat align 2 !prof !62 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !61 {
  %3 = load ptr, ptr %0, align 8, !tbaa !58
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5, !prof !63

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !60
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9, !prof !64

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !55
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %3) #8
  br label %14

13:                                               ; preds = %5
  tail call void @_ZdaPv(ptr noundef nonnull %3) #11
  br label %14

14:                                               ; preds = %9, %13, %2
  store ptr %1, ptr %0, align 8, !tbaa !58
  %15 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr null, ptr %15, align 8, !tbaa !60
  ret void
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #9
  tail call void @_ZSt9terminatev() #10
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_718BinFileInputStreamC2EPvPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 !prof !45 {
  tail call void @_ZN11xercesc_2_714BinInputStreamC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #8
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_718BinFileInputStreamE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !55
  %4 = getelementptr inbounds %"class.xercesc_2_7::BinFileInputStream", ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !46
  %5 = getelementptr inbounds %"class.xercesc_2_7::BinFileInputStream", ptr %0, i64 0, i32 2
  store ptr %2, ptr %5, align 8, !tbaa !52
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_718BinFileInputStreamD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !54 {
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_718BinFileInputStreamE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !55
  %2 = getelementptr inbounds %"class.xercesc_2_7::BinFileInputStream", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5, !prof !65

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BinFileInputStream", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !52
  invoke void @_ZN11xercesc_2_716XMLPlatformUtils9closeFileEPvPNS_13MemoryManagerE(ptr noundef nonnull %3, ptr noundef %7) #8
          to label %8 unwind label %9

8:                                                ; preds = %5, %1
  tail call void @_ZN11xercesc_2_714BinInputStreamD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  ret void

9:                                                ; preds = %5
  %10 = landingpad { ptr, i32 }
          catch ptr null
  %11 = extractvalue { ptr, i32 } %10, 0
  tail call void @__clang_call_terminate(ptr %11) #10
  unreachable
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716XMLPlatformUtils9closeFileEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_718BinFileInputStream7getSizeEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0) local_unnamed_addr #1 align 2 !prof !45 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BinFileInputStream", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %"class.xercesc_2_7::BinFileInputStream", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !52
  %6 = tail call noundef i32 @_ZN11xercesc_2_716XMLPlatformUtils8fileSizeEPvPNS_13MemoryManagerE(ptr noundef %3, ptr noundef %5) #8
  ret i32 %6
}

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_716XMLPlatformUtils8fileSizeEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_718BinFileInputStream5resetEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0) local_unnamed_addr #1 align 2 !prof !45 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BinFileInputStream", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %"class.xercesc_2_7::BinFileInputStream", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !52
  tail call void @_ZN11xercesc_2_716XMLPlatformUtils9resetFileEPvPNS_13MemoryManagerE(ptr noundef %3, ptr noundef %5) #8
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716XMLPlatformUtils9resetFileEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_716XMLPlatformUtils10curFilePosEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_716XMLPlatformUtils14readFileBufferEPvjPhPNS_13MemoryManagerE(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }
attributes #11 = { builtin nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!44}

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
!34 = !{i32 5, !"CG Profile", !35}
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43}
!36 = !{ptr @_ZN11xercesc_2_718BinFileInputStream9readBytesEPhj, ptr @_ZN11xercesc_2_716XMLPlatformUtils14readFileBufferEPvjPhPNS_13MemoryManagerE, i64 1186}
!37 = !{ptr @_ZN11xercesc_2_718BinFileInputStreamC2EPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_714BinInputStreamC2Ev, i64 3}
!38 = !{ptr @_ZN11xercesc_2_718BinFileInputStreamC2EPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_716XMLPlatformUtils8openFileEPKtPNS_13MemoryManagerE, i64 3}
!39 = !{ptr @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 52059}
!40 = !{ptr @_ZN11xercesc_2_712ArrayJanitorItED2Ev, ptr @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt, i64 243874}
!41 = !{ptr @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt, ptr @_ZdaPv, i64 1}
!42 = !{ptr @_ZN11xercesc_2_718BinFileInputStreamD2Ev, ptr @_ZN11xercesc_2_716XMLPlatformUtils9closeFileEPvPNS_13MemoryManagerE, i64 2}
!43 = !{ptr @_ZN11xercesc_2_718BinFileInputStreamD2Ev, ptr @_ZN11xercesc_2_714BinInputStreamD2Ev, i64 3}
!44 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!45 = !{!"function_entry_count", i64 0}
!46 = !{!47, !49, i64 8}
!47 = !{!"_ZTSN11xercesc_2_718BinFileInputStreamE", !48, i64 0, !49, i64 8, !49, i64 16}
!48 = !{!"_ZTSN11xercesc_2_714BinInputStreamE"}
!49 = !{!"any pointer", !50, i64 0}
!50 = !{!"omnipotent char", !51, i64 0}
!51 = !{!"Simple C++ TBAA"}
!52 = !{!47, !49, i64 16}
!53 = !{!"function_entry_count", i64 1186}
!54 = !{!"function_entry_count", i64 3}
!55 = !{!56, !56, i64 0}
!56 = !{!"vtable pointer", !51, i64 0}
!57 = !{!"function_entry_count", i64 52059}
!58 = !{!59, !49, i64 0}
!59 = !{!"_ZTSN11xercesc_2_712ArrayJanitorItEE", !49, i64 0, !49, i64 8}
!60 = !{!59, !49, i64 8}
!61 = !{!"function_entry_count", i64 243874}
!62 = !{!"function_entry_count", i64 5836268}
!63 = !{!"branch_weights", i32 191816, i32 52060}
!64 = !{!"branch_weights", i32 1, i32 52060}
!65 = !{!"branch_weights", i32 1, i32 4}
