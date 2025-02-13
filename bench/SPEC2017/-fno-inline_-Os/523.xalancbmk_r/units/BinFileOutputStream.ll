; ModuleID = 'BinFileOutputStream.cpp'
source_filename = "BinFileOutputStream.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::BinFileOutputStream" = type { %"class.xercesc_2_7::BinOutputStream", ptr, ptr }
%"class.xercesc_2_7::BinOutputStream" = type { ptr }
%"class.xercesc_2_7::ArrayJanitor" = type { ptr, ptr }

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_712ArrayJanitorItED2Ev = comdat any

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZN11xercesc_2_712ArrayJanitorItE5resetEPt = comdat any

@_ZTVN11xercesc_2_719BinFileOutputStreamE = dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_719BinFileOutputStreamE, ptr @_ZN11xercesc_2_719BinFileOutputStreamD2Ev, ptr @_ZN11xercesc_2_719BinFileOutputStreamD0Ev, ptr @_ZNK11xercesc_2_719BinFileOutputStream6curPosEv, ptr @_ZN11xercesc_2_719BinFileOutputStream10writeBytesEPKhj] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_719BinFileOutputStreamE = dso_local constant [37 x i8] c"N11xercesc_2_719BinFileOutputStreamE\00", align 1
@_ZTIN11xercesc_2_715BinOutputStreamE = external constant ptr
@_ZTIN11xercesc_2_719BinFileOutputStreamE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_719BinFileOutputStreamE, ptr @_ZTIN11xercesc_2_715BinOutputStreamE }, align 8

@_ZN11xercesc_2_719BinFileOutputStreamD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_719BinFileOutputStreamD2Ev
@_ZN11xercesc_2_719BinFileOutputStreamC1EPKtPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xercesc_2_719BinFileOutputStreamC2EPKtPNS_13MemoryManagerE
@_ZN11xercesc_2_719BinFileOutputStreamC1EPKcPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xercesc_2_719BinFileOutputStreamC2EPKcPNS_13MemoryManagerE

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_719BinFileOutputStreamD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !39 {
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_719BinFileOutputStreamE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !40
  %2 = getelementptr inbounds %"class.xercesc_2_7::BinFileOutputStream", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BinFileOutputStream", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  invoke void @_ZN11xercesc_2_716XMLPlatformUtils9closeFileEPvPNS_13MemoryManagerE(ptr noundef nonnull %3, ptr noundef %7) #7
          to label %8 unwind label %9

8:                                                ; preds = %5, %1
  tail call void @_ZN11xercesc_2_715BinOutputStreamD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #8
  ret void

9:                                                ; preds = %5
  %10 = landingpad { ptr, i32 }
          catch ptr null
  %11 = extractvalue { ptr, i32 } %10, 0
  tail call void @__clang_call_terminate(ptr %11) #9
  unreachable
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716XMLPlatformUtils9closeFileEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #2 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #10
  tail call void @_ZSt9terminatev() #9
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_715BinOutputStreamD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_719BinFileOutputStreamD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xercesc_2_719BinFileOutputStreamD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #8
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #8
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_719BinFileOutputStreamC2EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !39 {
  tail call void @_ZN11xercesc_2_715BinOutputStreamC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_719BinFileOutputStreamE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !40
  %4 = getelementptr inbounds %"class.xercesc_2_7::BinFileOutputStream", ptr %0, i64 0, i32 1
  store ptr null, ptr %4, align 8, !tbaa !43
  %5 = getelementptr inbounds %"class.xercesc_2_7::BinFileOutputStream", ptr %0, i64 0, i32 2
  store ptr %2, ptr %5, align 8, !tbaa !48
  %6 = invoke noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils15openFileToWriteEPKtPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %2) #7
          to label %7 unwind label %8

7:                                                ; preds = %3
  store ptr %6, ptr %4, align 8, !tbaa !43
  ret void

8:                                                ; preds = %3
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_715BinOutputStreamD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #8
  resume { ptr, i32 } %9
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_715BinOutputStreamC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils15openFileToWriteEPKtPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_719BinFileOutputStreamC2EPKcPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !39 {
  %4 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  tail call void @_ZN11xercesc_2_715BinOutputStreamC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_719BinFileOutputStreamE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !40
  %5 = getelementptr inbounds %"class.xercesc_2_7::BinFileOutputStream", ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !43
  %6 = getelementptr inbounds %"class.xercesc_2_7::BinFileOutputStream", ptr %0, i64 0, i32 2
  store ptr %2, ptr %6, align 8, !tbaa !48
  %7 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %2) #7
          to label %8 unwind label %12

8:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #10
  invoke void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %7, ptr noundef %2) #7
          to label %9 unwind label %14

9:                                                ; preds = %8
  %10 = invoke noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils15openFileToWriteEPKtPNS_13MemoryManagerE(ptr noundef %7, ptr noundef %2) #7
          to label %11 unwind label %16

11:                                               ; preds = %9
  store ptr %10, ptr %5, align 8, !tbaa !43
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #10
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
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #8
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi { ptr, i32 } [ %17, %16 ], [ %15, %14 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #10
  br label %20

20:                                               ; preds = %18, %12
  %21 = phi { ptr, i32 } [ %19, %18 ], [ %13, %12 ]
  call void @_ZN11xercesc_2_715BinOutputStreamD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #8
  resume { ptr, i32 } %21
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #4 comdat align 2 !prof !49 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #7
  store ptr %1, ptr %0, align 8, !tbaa !50
  %4 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !52
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !53 {
  invoke void @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null) #7
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #9
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_719BinFileOutputStream7getSizeEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0) local_unnamed_addr #4 align 2 !prof !39 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BinFileOutputStream", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = getelementptr inbounds %"class.xercesc_2_7::BinFileOutputStream", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = tail call noundef i32 @_ZN11xercesc_2_716XMLPlatformUtils8fileSizeEPvPNS_13MemoryManagerE(ptr noundef %3, ptr noundef %5) #7
  ret i32 %6
}

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_716XMLPlatformUtils8fileSizeEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_719BinFileOutputStream5resetEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0) local_unnamed_addr #4 align 2 !prof !39 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BinFileOutputStream", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = getelementptr inbounds %"class.xercesc_2_7::BinFileOutputStream", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  tail call void @_ZN11xercesc_2_716XMLPlatformUtils9resetFileEPvPNS_13MemoryManagerE(ptr noundef %3, ptr noundef %5) #7
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716XMLPlatformUtils9resetFileEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_719BinFileOutputStream6curPosEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0) unnamed_addr #4 align 2 !prof !39 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BinFileOutputStream", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = getelementptr inbounds %"class.xercesc_2_7::BinFileOutputStream", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = tail call noundef i32 @_ZN11xercesc_2_716XMLPlatformUtils10curFilePosEPvPNS_13MemoryManagerE(ptr noundef %3, ptr noundef %5) #7
  ret i32 %6
}

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_716XMLPlatformUtils10curFilePosEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_719BinFileOutputStream10writeBytesEPKhj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #4 align 2 !prof !39 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BinFileOutputStream", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !43
  %6 = zext i32 %2 to i64
  %7 = getelementptr inbounds %"class.xercesc_2_7::BinFileOutputStream", ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !48
  tail call void @_ZN11xercesc_2_716XMLPlatformUtils17writeBufferToFileEPvlPKhPNS_13MemoryManagerE(ptr noundef %5, i64 noundef %6, ptr noundef %1, ptr noundef %8) #7
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716XMLPlatformUtils17writeBufferToFileEPvlPKhPNS_13MemoryManagerE(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #0 comdat align 2 !prof !54 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !53 {
  %3 = load ptr, ptr %0, align 8, !tbaa !50
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5, !prof !55

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !52
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9, !prof !56

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !40
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %3) #7
  br label %14

13:                                               ; preds = %5
  tail call void @_ZdaPv(ptr noundef nonnull %3) #11
  br label %14

14:                                               ; preds = %9, %13, %2
  store ptr %1, ptr %0, align 8, !tbaa !50
  %15 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr null, ptr %15, align 8, !tbaa !52
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #6

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { optsize }
attributes #8 = { nounwind optsize }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind }
attributes #11 = { builtin nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!38}

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
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37}
!35 = !{ptr @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 52059}
!36 = !{ptr @_ZN11xercesc_2_712ArrayJanitorItED2Ev, ptr @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt, i64 243874}
!37 = !{ptr @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt, ptr @_ZdaPv, i64 1}
!38 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!39 = !{!"function_entry_count", i64 0}
!40 = !{!41, !41, i64 0}
!41 = !{!"vtable pointer", !42, i64 0}
!42 = !{!"Simple C++ TBAA"}
!43 = !{!44, !46, i64 8}
!44 = !{!"_ZTSN11xercesc_2_719BinFileOutputStreamE", !45, i64 0, !46, i64 8, !46, i64 16}
!45 = !{!"_ZTSN11xercesc_2_715BinOutputStreamE"}
!46 = !{!"any pointer", !47, i64 0}
!47 = !{!"omnipotent char", !42, i64 0}
!48 = !{!44, !46, i64 16}
!49 = !{!"function_entry_count", i64 52059}
!50 = !{!51, !46, i64 0}
!51 = !{!"_ZTSN11xercesc_2_712ArrayJanitorItEE", !46, i64 0, !46, i64 8}
!52 = !{!51, !46, i64 8}
!53 = !{!"function_entry_count", i64 243874}
!54 = !{!"function_entry_count", i64 5836268}
!55 = !{!"branch_weights", i32 191816, i32 52060}
!56 = !{!"branch_weights", i32 1, i32 52060}
