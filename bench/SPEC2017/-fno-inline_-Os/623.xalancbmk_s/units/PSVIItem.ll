; ModuleID = 'PSVIItem.cpp'
source_filename = "PSVIItem.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::PSVIItem" = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr }
%"class.xercesc_2_7::XSTypeDefinition" = type { %"class.xercesc_2_7::XSObject.base", i32, i16, ptr }
%"class.xercesc_2_7::XSObject.base" = type <{ ptr, i32, [4 x i8], ptr, ptr, i32 }>
%"class.xercesc_2_7::XSSimpleTypeDefinition" = type { %"class.xercesc_2_7::XSTypeDefinition", i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XSComplexTypeDefinition" = type <{ %"class.xercesc_2_7::XSTypeDefinition", ptr, ptr, ptr, ptr, ptr, ptr, i16, [6 x i8] }>
%"class.xercesc_2_7::DatatypeValidator" = type { %"class.xercesc_2_7::XSerializable", i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XSerializable" = type { ptr }

$_ZN11xercesc_2_78PSVIItemD2Ev = comdat any

$_ZN11xercesc_2_78PSVIItemD0Ev = comdat any

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZNK11xercesc_2_716XSTypeDefinition15getTypeCategoryEv = comdat any

$_ZNK11xercesc_2_722XSSimpleTypeDefinition20getDatatypeValidatorEv = comdat any

$_ZNK11xercesc_2_723XSComplexTypeDefinition13getSimpleTypeEv = comdat any

$_ZNK11xercesc_2_717DatatypeValidator16getTypeLocalNameEv = comdat any

$_ZTVN11xercesc_2_78PSVIItemE = comdat any

$_ZTSN11xercesc_2_78PSVIItemE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_78PSVIItemE = comdat any

@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN11xercesc_2_78PSVIItemE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_78PSVIItemE, ptr @_ZN11xercesc_2_78PSVIItemD2Ev, ptr @_ZN11xercesc_2_78PSVIItemD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZNK11xercesc_2_78PSVIItem14getActualValueEv] }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_78PSVIItemE = linkonce_odr dso_local constant [25 x i8] c"N11xercesc_2_78PSVIItemE\00", comdat, align 1
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_78PSVIItemE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_78PSVIItemE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_78PSVIItemD2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_78PSVIItemD0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 comdat align 2 {
  tail call void @llvm.trap() #7
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_78PSVIItem14getActualValueEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0) unnamed_addr #1 align 2 !prof !39 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %"class.xercesc_2_7::PSVIItem", ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 4, !tbaa !40
  %5 = icmp ne i32 %4, 0
  %6 = getelementptr inbounds %"class.xercesc_2_7::PSVIItem", ptr %0, i64 0, i32 6
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 2
  %9 = select i1 %5, i1 %8, i1 false
  br i1 %9, label %10, label %48

10:                                               ; preds = %1
  %11 = getelementptr inbounds %"class.xercesc_2_7::PSVIItem", ptr %0, i64 0, i32 9
  %12 = load ptr, ptr %11, align 8, !tbaa !48
  %13 = icmp eq ptr %12, null
  br i1 %13, label %48, label %14

14:                                               ; preds = %10
  %15 = tail call noundef i32 @_ZNK11xercesc_2_716XSTypeDefinition15getTypeCategoryEv(ptr noundef nonnull align 8 dereferenceable(56) %12) #8
  %16 = icmp eq i32 %15, 15
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load ptr, ptr %11, align 8, !tbaa !48
  %19 = tail call noundef i32 @_ZNK11xercesc_2_723XSComplexTypeDefinition14getContentTypeEv(ptr noundef nonnull align 8 dereferenceable(106) %18) #8
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %48

21:                                               ; preds = %17, %14
  %22 = getelementptr inbounds %"class.xercesc_2_7::PSVIItem", ptr %0, i64 0, i32 10
  %23 = load ptr, ptr %22, align 8, !tbaa !49
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %21
  %26 = load ptr, ptr %11, align 8, !tbaa !48
  %27 = tail call noundef i32 @_ZNK11xercesc_2_716XSTypeDefinition15getTypeCategoryEv(ptr noundef nonnull align 8 dereferenceable(56) %26) #8
  %28 = icmp eq i32 %27, 16
  %29 = load ptr, ptr %11, align 8, !tbaa !48
  br i1 %28, label %33, label %30

30:                                               ; preds = %25
  %31 = tail call noundef ptr @_ZNK11xercesc_2_723XSComplexTypeDefinition13getSimpleTypeEv(ptr noundef nonnull align 8 dereferenceable(106) %29) #8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %48, label %33

33:                                               ; preds = %30, %25, %21
  %34 = phi ptr [ %23, %21 ], [ %29, %25 ], [ %31, %30 ]
  %35 = tail call noundef ptr @_ZNK11xercesc_2_722XSSimpleTypeDefinition20getDatatypeValidatorEv(ptr noundef nonnull align 8 dereferenceable(128) %34) #8
  %36 = icmp eq ptr %35, null
  br i1 %36, label %48, label %37

37:                                               ; preds = %33
  %38 = tail call noundef ptr @_ZN11xercesc_2_724DatatypeValidatorFactory23getBuiltInBaseValidatorEPKNS_17DatatypeValidatorE(ptr noundef nonnull %35) #8
  %39 = icmp eq ptr %38, null
  br i1 %39, label %48, label %40

40:                                               ; preds = %37
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 0, ptr %2, align 4, !tbaa !50
  %41 = getelementptr inbounds %"class.xercesc_2_7::PSVIItem", ptr %0, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !52
  %43 = tail call noundef ptr @_ZNK11xercesc_2_717DatatypeValidator16getTypeLocalNameEv(ptr noundef nonnull align 8 dereferenceable(104) %38) #8
  %44 = tail call noundef i32 @_ZN11xercesc_2_77XSValue11getDataTypeEPKt(ptr noundef %43) #8
  %45 = getelementptr inbounds %"class.xercesc_2_7::PSVIItem", ptr %0, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !53
  %47 = call noundef ptr @_ZN11xercesc_2_77XSValue14getActualValueEPKtNS0_8DataTypeERNS0_6StatusENS0_10XMLVersionEbPNS_13MemoryManagerE(ptr noundef %42, i32 noundef %44, ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 0, i1 noundef zeroext false, ptr noundef %46) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  br label %48

48:                                               ; preds = %30, %33, %37, %40, %10, %17, %1
  %49 = phi ptr [ null, %1 ], [ null, %17 ], [ null, %10 ], [ null, %33 ], [ %47, %40 ], [ null, %37 ], [ null, %30 ]
  ret ptr %49
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_78PSVIItemC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !38 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #8
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_78PSVIItemE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !54
  %3 = getelementptr inbounds %"class.xercesc_2_7::PSVIItem", ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !53
  %4 = getelementptr inbounds %"class.xercesc_2_7::PSVIItem", ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %"class.xercesc_2_7::PSVIItem", ptr %0, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %4, i8 0, i64 36, i1 false)
  store i32 2, ptr %5, align 4, !tbaa !40
  %6 = getelementptr inbounds %"class.xercesc_2_7::PSVIItem", ptr %0, i64 0, i32 8
  store i8 0, ptr %6, align 8, !tbaa !56
  %7 = getelementptr inbounds %"class.xercesc_2_7::PSVIItem", ptr %0, i64 0, i32 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #0 comdat align 2 !prof !57 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_78PSVIItem5resetEPKtS2_NS0_14VALIDITY_STATEENS0_15ASSESSMENT_TYPEE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #3 align 2 !prof !39 {
  %6 = getelementptr inbounds %"class.xercesc_2_7::PSVIItem", ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !58
  %7 = getelementptr inbounds %"class.xercesc_2_7::PSVIItem", ptr %0, i64 0, i32 3
  store ptr %2, ptr %7, align 8, !tbaa !52
  %8 = getelementptr inbounds %"class.xercesc_2_7::PSVIItem", ptr %0, i64 0, i32 6
  store i32 %3, ptr %8, align 8, !tbaa !59
  %9 = getelementptr inbounds %"class.xercesc_2_7::PSVIItem", ptr %0, i64 0, i32 7
  store i32 %4, ptr %9, align 4, !tbaa !40
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_78PSVIItem22setValidationAttemptedENS0_15ASSESSMENT_TYPEE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(80) %0, i32 noundef %1) local_unnamed_addr #3 align 2 !prof !39 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::PSVIItem", ptr %0, i64 0, i32 7
  store i32 %1, ptr %3, align 4, !tbaa !40
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_78PSVIItem11setValidityENS0_14VALIDITY_STATEE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(80) %0, i32 noundef %1) local_unnamed_addr #3 align 2 !prof !39 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::PSVIItem", ptr %0, i64 0, i32 6
  store i32 %1, ptr %3, align 8, !tbaa !59
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_716XSTypeDefinition15getTypeCategoryEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 comdat align 2 !prof !39 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSTypeDefinition", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !60
  ret i32 %3
}

; Function Attrs: optsize
declare noundef i32 @_ZNK11xercesc_2_723XSComplexTypeDefinition14getContentTypeEv(ptr noundef nonnull align 8 dereferenceable(106)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722XSSimpleTypeDefinition20getDatatypeValidatorEv(ptr noundef nonnull align 8 dereferenceable(128) %0) local_unnamed_addr #0 comdat align 2 !prof !39 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSSimpleTypeDefinition", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !67
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_723XSComplexTypeDefinition13getSimpleTypeEv(ptr noundef nonnull align 8 dereferenceable(106) %0) local_unnamed_addr #0 comdat align 2 !prof !39 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSComplexTypeDefinition", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !70
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_724DatatypeValidatorFactory23getBuiltInBaseValidatorEPKNS_17DatatypeValidatorE(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XSValue14getActualValueEPKtNS0_8DataTypeERNS0_6StatusENS0_10XMLVersionEbPNS_13MemoryManagerE(ptr noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(4), i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_77XSValue11getDataTypeEPKt(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717DatatypeValidator16getTypeLocalNameEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #0 comdat align 2 !prof !72 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 16
  %3 = load ptr, ptr %2, align 8, !tbaa !73
  ret ptr %3
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { noreturn nounwind }
attributes #8 = { optsize }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!37}

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
!35 = distinct !{!36}
!36 = !{ptr @_ZN11xercesc_2_78PSVIItemC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 3}
!37 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!38 = !{!"function_entry_count", i64 3}
!39 = !{!"function_entry_count", i64 0}
!40 = !{!41, !46, i64 52}
!41 = !{!"_ZTSN11xercesc_2_78PSVIItemE", !42, i64 8, !42, i64 16, !42, i64 24, !42, i64 32, !42, i64 40, !45, i64 48, !46, i64 52, !47, i64 56, !42, i64 64, !42, i64 72}
!42 = !{!"any pointer", !43, i64 0}
!43 = !{!"omnipotent char", !44, i64 0}
!44 = !{!"Simple C++ TBAA"}
!45 = !{!"_ZTSN11xercesc_2_78PSVIItem14VALIDITY_STATEE", !43, i64 0}
!46 = !{!"_ZTSN11xercesc_2_78PSVIItem15ASSESSMENT_TYPEE", !43, i64 0}
!47 = !{!"bool", !43, i64 0}
!48 = !{!41, !42, i64 64}
!49 = !{!41, !42, i64 72}
!50 = !{!51, !51, i64 0}
!51 = !{!"_ZTSN11xercesc_2_77XSValue6StatusE", !43, i64 0}
!52 = !{!41, !42, i64 24}
!53 = !{!41, !42, i64 8}
!54 = !{!55, !55, i64 0}
!55 = !{!"vtable pointer", !44, i64 0}
!56 = !{!41, !47, i64 56}
!57 = !{!"function_entry_count", i64 5836268}
!58 = !{!41, !42, i64 16}
!59 = !{!41, !45, i64 48}
!60 = !{!61, !65, i64 36}
!61 = !{!"_ZTSN11xercesc_2_716XSTypeDefinitionE", !62, i64 0, !65, i64 36, !66, i64 40, !42, i64 48}
!62 = !{!"_ZTSN11xercesc_2_78XSObjectE", !63, i64 8, !42, i64 16, !42, i64 24, !64, i64 32}
!63 = !{!"_ZTSN11xercesc_2_711XSConstants14COMPONENT_TYPEE", !43, i64 0}
!64 = !{!"int", !43, i64 0}
!65 = !{!"_ZTSN11xercesc_2_716XSTypeDefinition13TYPE_CATEGORYE", !43, i64 0}
!66 = !{!"short", !43, i64 0}
!67 = !{!68, !42, i64 72}
!68 = !{!"_ZTSN11xercesc_2_722XSSimpleTypeDefinitionE", !61, i64 0, !64, i64 56, !64, i64 60, !69, i64 64, !42, i64 72, !42, i64 80, !42, i64 88, !42, i64 96, !42, i64 104, !42, i64 112, !42, i64 120}
!69 = !{!"_ZTSN11xercesc_2_722XSSimpleTypeDefinition7VARIETYE", !43, i64 0}
!70 = !{!71, !42, i64 80}
!71 = !{!"_ZTSN11xercesc_2_723XSComplexTypeDefinitionE", !61, i64 0, !42, i64 56, !42, i64 64, !42, i64 72, !42, i64 80, !42, i64 88, !42, i64 96, !66, i64 104}
!72 = !{!"function_entry_count", i64 12}
!73 = !{!74, !42, i64 80}
!74 = !{!"_ZTSN11xercesc_2_717DatatypeValidatorE", !75, i64 0, !47, i64 8, !47, i64 9, !47, i64 10, !47, i64 11, !66, i64 12, !64, i64 16, !64, i64 20, !64, i64 24, !76, i64 28, !77, i64 32, !42, i64 40, !42, i64 48, !42, i64 56, !42, i64 64, !42, i64 72, !42, i64 80, !42, i64 88, !42, i64 96}
!75 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!76 = !{!"_ZTSN11xercesc_2_717DatatypeValidator13ValidatorTypeE", !43, i64 0}
!77 = !{!"_ZTSN11xercesc_2_722XSSimpleTypeDefinition8ORDERINGE", !43, i64 0}
