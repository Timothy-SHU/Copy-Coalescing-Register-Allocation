; ModuleID = 'BinFileInputStream.cpp'
source_filename = "BinFileInputStream.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::BinFileInputStream" = type { %"class.xercesc_2_7::BinInputStream", ptr, ptr }
%"class.xercesc_2_7::BinInputStream" = type { ptr }
%"class.xercesc_2_7::ArrayJanitor" = type { ptr, ptr }

$_ZN11xercesc_2_712ArrayJanitorItED2Ev = comdat any

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

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_718BinFileInputStreamC2EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  tail call void @_ZN11xercesc_2_714BinInputStreamC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_718BinFileInputStreamE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !44
  %4 = getelementptr inbounds %"class.xercesc_2_7::BinFileInputStream", ptr %0, i64 0, i32 1
  store ptr null, ptr %4, align 8, !tbaa !47
  %5 = getelementptr inbounds %"class.xercesc_2_7::BinFileInputStream", ptr %0, i64 0, i32 2
  store ptr %2, ptr %5, align 8, !tbaa !52
  %6 = invoke noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils8openFileEPKtPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %2)
          to label %7 unwind label %8, !prof !53

7:                                                ; preds = %3
  store ptr %6, ptr %4, align 8, !tbaa !47
  ret void

8:                                                ; preds = %3
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_714BinInputStreamD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #10
  resume { ptr, i32 } %9
}

declare void @_ZN11xercesc_2_714BinInputStreamC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils8openFileEPKtPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_714BinInputStreamD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_718BinFileInputStreamC2EPKcPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !54 {
  %4 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  tail call void @_ZN11xercesc_2_714BinInputStreamC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_718BinFileInputStreamE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !44
  %5 = getelementptr inbounds %"class.xercesc_2_7::BinFileInputStream", ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !47
  %6 = getelementptr inbounds %"class.xercesc_2_7::BinFileInputStream", ptr %0, i64 0, i32 2
  store ptr %2, ptr %6, align 8, !tbaa !52
  %7 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %2)
          to label %8 unwind label %12

8:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #10
  store ptr %7, ptr %4, align 8, !tbaa !55
  %9 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %4, i64 0, i32 1
  store ptr %2, ptr %9, align 8, !tbaa !57
  %10 = invoke noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils8openFileEPKtPNS_13MemoryManagerE(ptr noundef %7, ptr noundef %2)
          to label %11 unwind label %14

11:                                               ; preds = %8
  store ptr %10, ptr %5, align 8, !tbaa !47
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #10
  ret void

12:                                               ; preds = %3
  %13 = landingpad { ptr, i32 }
          cleanup
  br label %16

14:                                               ; preds = %8
  %15 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #10
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi { ptr, i32 } [ %15, %14 ], [ %13, %12 ]
  call void @_ZN11xercesc_2_714BinInputStreamD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #10
  resume { ptr, i32 } %17
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !58 {
  %2 = load ptr, ptr %0, align 8, !tbaa !55
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4, !prof !59

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8, !prof !60

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !44
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %2)
          to label %13 unwind label %14, !prof !61

12:                                               ; preds = %4
  tail call void @_ZdaPv(ptr noundef %2) #11
  br label %13

13:                                               ; preds = %8, %1, %12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void

14:                                               ; preds = %8
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  tail call void @__clang_call_terminate(ptr %16) #12
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_718BinFileInputStreamC2EPvPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 !prof !54 {
  tail call void @_ZN11xercesc_2_714BinInputStreamC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_718BinFileInputStreamE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !44
  %4 = getelementptr inbounds %"class.xercesc_2_7::BinFileInputStream", ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !47
  %5 = getelementptr inbounds %"class.xercesc_2_7::BinFileInputStream", ptr %0, i64 0, i32 2
  store ptr %2, ptr %5, align 8, !tbaa !52
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_718BinFileInputStreamD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_718BinFileInputStreamE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !44
  %2 = getelementptr inbounds %"class.xercesc_2_7::BinFileInputStream", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5, !prof !62

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BinFileInputStream", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !52
  invoke void @_ZN11xercesc_2_716XMLPlatformUtils9closeFileEPvPNS_13MemoryManagerE(ptr noundef nonnull %3, ptr noundef %7)
          to label %8 unwind label %9, !prof !53

8:                                                ; preds = %5, %1
  tail call void @_ZN11xercesc_2_714BinInputStreamD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #10
  ret void

9:                                                ; preds = %5
  %10 = landingpad { ptr, i32 }
          catch ptr null
  %11 = extractvalue { ptr, i32 } %10, 0
  tail call void @__clang_call_terminate(ptr %11) #12
  unreachable
}

declare void @_ZN11xercesc_2_716XMLPlatformUtils9closeFileEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat !prof !54 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #10
  tail call void @_ZSt9terminatev() #12
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_718BinFileInputStreamD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 align 2 !prof !43 {
  tail call void @_ZN11xercesc_2_718BinFileInputStreamD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #10
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_718BinFileInputStream7getSizeEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0) local_unnamed_addr #0 align 2 !prof !54 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BinFileInputStream", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %"class.xercesc_2_7::BinFileInputStream", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !52
  %6 = tail call noundef i32 @_ZN11xercesc_2_716XMLPlatformUtils8fileSizeEPvPNS_13MemoryManagerE(ptr noundef %3, ptr noundef %5)
  ret i32 %6
}

declare noundef i32 @_ZN11xercesc_2_716XMLPlatformUtils8fileSizeEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_718BinFileInputStream5resetEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0) local_unnamed_addr #0 align 2 !prof !54 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BinFileInputStream", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %"class.xercesc_2_7::BinFileInputStream", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !52
  tail call void @_ZN11xercesc_2_716XMLPlatformUtils9resetFileEPvPNS_13MemoryManagerE(ptr noundef %3, ptr noundef %5)
  ret void
}

declare void @_ZN11xercesc_2_716XMLPlatformUtils9resetFileEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_718BinFileInputStream6curPosEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0) unnamed_addr #0 align 2 !prof !54 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BinFileInputStream", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %"class.xercesc_2_7::BinFileInputStream", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !52
  %6 = tail call noundef i32 @_ZN11xercesc_2_716XMLPlatformUtils10curFilePosEPvPNS_13MemoryManagerE(ptr noundef %3, ptr noundef %5)
  ret i32 %6
}

declare noundef i32 @_ZN11xercesc_2_716XMLPlatformUtils10curFilePosEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN11xercesc_2_718BinFileInputStream9readBytesEPhj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #7 align 2 !prof !63 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BinFileInputStream", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  %6 = getelementptr inbounds %"class.xercesc_2_7::BinFileInputStream", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !52
  %8 = tail call noundef i32 @_ZN11xercesc_2_716XMLPlatformUtils14readFileBufferEPvjPhPNS_13MemoryManagerE(ptr noundef %5, i32 noundef %2, ptr noundef %1, ptr noundef %7)
  ret i32 %8
}

declare noundef i32 @_ZN11xercesc_2_716XMLPlatformUtils14readFileBufferEPvjPhPNS_13MemoryManagerE(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind }
attributes #11 = { builtin nounwind }
attributes #12 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!42}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 291165203993}
!8 = !{!"MaxCount", i64 30012997636}
!9 = !{!"MaxInternalCount", i64 22313335011}
!10 = !{!"MaxFunctionCount", i64 30012997636}
!11 = !{!"NumCounts", i64 82185}
!12 = !{!"NumFunctions", i64 15169}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 30012997636, i32 1}
!18 = !{i32 100000, i64 30012997636, i32 1}
!19 = !{i32 200000, i64 28750937236, i32 2}
!20 = !{i32 300000, i64 22313335011, i32 4}
!21 = !{i32 400000, i64 22313318476, i32 5}
!22 = !{i32 500000, i64 22291044611, i32 6}
!23 = !{i32 600000, i64 16685493830, i32 8}
!24 = !{i32 700000, i64 11836361228, i32 10}
!25 = !{i32 800000, i64 1835010489, i32 17}
!26 = !{i32 900000, i64 917973775, i32 41}
!27 = !{i32 950000, i64 89504425, i32 134}
!28 = !{i32 990000, i64 22419101, i32 349}
!29 = !{i32 999000, i64 832910, i32 928}
!30 = !{i32 999900, i64 93159, i32 1814}
!31 = !{i32 999990, i64 19206, i32 2310}
!32 = !{i32 999999, i64 550, i32 2997}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41}
!35 = !{ptr @_ZN11xercesc_2_718BinFileInputStreamC2EPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_714BinInputStreamC2Ev, i64 3}
!36 = !{ptr @_ZN11xercesc_2_718BinFileInputStreamC2EPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_716XMLPlatformUtils8openFileEPKtPNS_13MemoryManagerE, i64 3}
!37 = !{ptr @_ZN11xercesc_2_718BinFileInputStreamD2Ev, ptr @_ZN11xercesc_2_716XMLPlatformUtils9closeFileEPvPNS_13MemoryManagerE, i64 3}
!38 = !{ptr @_ZN11xercesc_2_718BinFileInputStreamD2Ev, ptr @_ZN11xercesc_2_714BinInputStreamD2Ev, i64 3}
!39 = !{ptr @_ZN11xercesc_2_718BinFileInputStreamD0Ev, ptr @_ZN11xercesc_2_718BinFileInputStreamD2Ev, i64 3}
!40 = !{ptr @_ZN11xercesc_2_718BinFileInputStreamD0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 3}
!41 = !{ptr @_ZN11xercesc_2_718BinFileInputStream9readBytesEPhj, ptr @_ZN11xercesc_2_716XMLPlatformUtils14readFileBufferEPvjPhPNS_13MemoryManagerE, i64 1186}
!42 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!43 = !{!"function_entry_count", i64 3}
!44 = !{!45, !45, i64 0}
!45 = !{!"vtable pointer", !46, i64 0}
!46 = !{!"Simple C++ TBAA"}
!47 = !{!48, !50, i64 8}
!48 = !{!"_ZTSN11xercesc_2_718BinFileInputStreamE", !49, i64 0, !50, i64 8, !50, i64 16}
!49 = !{!"_ZTSN11xercesc_2_714BinInputStreamE"}
!50 = !{!"any pointer", !51, i64 0}
!51 = !{!"omnipotent char", !46, i64 0}
!52 = !{!48, !50, i64 16}
!53 = !{!"branch_weights", i32 3, i32 0}
!54 = !{!"function_entry_count", i64 0}
!55 = !{!56, !50, i64 0}
!56 = !{!"_ZTSN11xercesc_2_712ArrayJanitorItEE", !50, i64 0, !50, i64 8}
!57 = !{!56, !50, i64 8}
!58 = !{!"function_entry_count", i64 243874}
!59 = !{!"branch_weights", i32 191815, i32 52059}
!60 = !{!"branch_weights", i32 0, i32 52059}
!61 = !{!"VP", i32 0, i64 52059, i64 -7405368087501025645, i64 52059}
!62 = !{!"branch_weights", i32 0, i32 3}
!63 = !{!"function_entry_count", i64 1186}
