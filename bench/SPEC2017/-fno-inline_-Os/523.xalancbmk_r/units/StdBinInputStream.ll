; ModuleID = 'StdBinInputStream.cpp'
source_filename = "StdBinInputStream.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.xalanc_1_10::StdBinInputStream" = type { %"class.xercesc_2_7::BinInputStream", ptr }
%"class.xercesc_2_7::BinInputStream" = type { ptr }
%"class.std::fpos" = type { i64, %struct.__mbstate_t }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }

$_ZNKSt4fposI11__mbstate_tEcvlEv = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZTVN11xalanc_1_1017StdBinInputStreamE = dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1017StdBinInputStreamE, ptr @_ZN11xalanc_1_1017StdBinInputStreamD2Ev, ptr @_ZN11xalanc_1_1017StdBinInputStreamD0Ev, ptr @_ZNK11xalanc_1_1017StdBinInputStream6curPosEv, ptr @_ZN11xalanc_1_1017StdBinInputStream9readBytesEPhj] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1017StdBinInputStreamE = dso_local constant [35 x i8] c"N11xalanc_1_1017StdBinInputStreamE\00", align 1
@_ZTIN11xercesc_2_714BinInputStreamE = external constant ptr
@_ZTIN11xalanc_1_1017StdBinInputStreamE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1017StdBinInputStreamE, ptr @_ZTIN11xercesc_2_714BinInputStreamE }, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_StdBinInputStream.cpp, ptr null }]

@_ZN11xalanc_1_1017StdBinInputStreamC1ERSi = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xalanc_1_1017StdBinInputStreamC2ERSi
@_ZN11xalanc_1_1017StdBinInputStreamD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1017StdBinInputStreamD2Ev

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit) #7
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #8
  ret void
}

; Function Attrs: optsize
declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1017StdBinInputStreamC2ERSi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #4 align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_714BinInputStreamC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xalanc_1_1017StdBinInputStreamE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %3 = getelementptr inbounds %"class.xalanc_1_10::StdBinInputStream", ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !38
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_714BinInputStreamC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_714BinInputStreamD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1017StdBinInputStreamD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_714BinInputStreamD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1017StdBinInputStreamD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 align 2 {
  tail call void @_ZN11xalanc_1_1017StdBinInputStreamD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #9
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_1017StdBinInputStream6curPosEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0) unnamed_addr #4 align 2 !prof !34 {
  %2 = alloca %"class.std::fpos", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #8
  %3 = getelementptr inbounds %"class.xalanc_1_10::StdBinInputStream", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !41
  %5 = tail call { i64, i64 } @_ZNSi5tellgEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #7
  %6 = extractvalue { i64, i64 } %5, 0
  store i64 %6, ptr %2, align 8
  %7 = getelementptr inbounds { i64, i64 }, ptr %2, i64 0, i32 1
  %8 = extractvalue { i64, i64 } %5, 1
  store i64 %8, ptr %7, align 8
  %9 = call noundef i64 @_ZNKSt4fposI11__mbstate_tEcvlEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #7
  %10 = trunc i64 %9 to i32
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #8
  ret i32 %10
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: optsize
declare { i64, i64 } @_ZNSi5tellgEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt4fposI11__mbstate_tEcvlEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #5 comdat align 2 !prof !34 {
  %2 = load i64, ptr %0, align 8, !tbaa !44
  ret i64 %2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xalanc_1_1017StdBinInputStream9readBytesEPhj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #4 align 2 !prof !34 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::StdBinInputStream", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !41
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = getelementptr i8, ptr %6, i64 -24
  %8 = load i64, ptr %7, align 8
  %9 = getelementptr inbounds i8, ptr %5, i64 %8
  %10 = tail call noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEEntEv(ptr noundef nonnull align 8 dereferenceable(264) %9) #7
  br i1 %10, label %18, label %11

11:                                               ; preds = %3
  %12 = load ptr, ptr %4, align 8, !tbaa !41
  %13 = zext i32 %2 to i64
  %14 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef %1, i64 noundef %13) #7
  %15 = load ptr, ptr %4, align 8, !tbaa !41
  %16 = tail call noundef i64 @_ZNKSi6gcountEv(ptr noundef nonnull align 8 dereferenceable(16) %15) #7
  %17 = trunc i64 %16 to i32
  br label %18

18:                                               ; preds = %3, %11
  %19 = phi i32 [ %17, %11 ], [ 0, %3 ]
  ret i32 %19
}

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEEntEv(ptr noundef nonnull align 8 dereferenceable(264)) local_unnamed_addr #4 align 2

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef i64 @_ZNKSi6gcountEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #5 align 2

; Function Attrs: noinline optsize uwtable
define internal void @_GLOBAL__sub_I_StdBinInputStream.cpp() #0 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { optsize }
attributes #8 = { nounwind }
attributes #9 = { nounwind optsize }

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
!38 = !{!39, !39, i64 0}
!39 = !{!"any pointer", !40, i64 0}
!40 = !{!"omnipotent char", !37, i64 0}
!41 = !{!42, !39, i64 8}
!42 = !{!"_ZTSN11xalanc_1_1017StdBinInputStreamE", !43, i64 0, !39, i64 8}
!43 = !{!"_ZTSN11xercesc_2_714BinInputStreamE"}
!44 = !{!45, !46, i64 0}
!45 = !{!"_ZTSSt4fposI11__mbstate_tE", !46, i64 0, !47, i64 8}
!46 = !{!"long", !40, i64 0}
!47 = !{!"_ZTS11__mbstate_t", !48, i64 0, !40, i64 4}
!48 = !{!"int", !40, i64 0}
