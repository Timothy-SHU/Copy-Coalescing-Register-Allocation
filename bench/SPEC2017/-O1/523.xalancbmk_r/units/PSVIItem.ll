; ModuleID = 'PSVIItem.cpp'
source_filename = "PSVIItem.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::PSVIItem" = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr }
%"class.xercesc_2_7::XSTypeDefinition" = type { %"class.xercesc_2_7::XSObject.base", i32, i16, ptr }
%"class.xercesc_2_7::XSObject.base" = type <{ ptr, i32, [4 x i8], ptr, ptr, i32 }>
%"class.xercesc_2_7::XSComplexTypeDefinition" = type <{ %"class.xercesc_2_7::XSTypeDefinition", ptr, ptr, ptr, ptr, ptr, ptr, i16, [6 x i8] }>
%"class.xercesc_2_7::XSSimpleTypeDefinition" = type { %"class.xercesc_2_7::XSTypeDefinition", i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::DatatypeValidator" = type { %"class.xercesc_2_7::XSerializable", i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XSerializable" = type { ptr }

$_ZN11xercesc_2_78PSVIItemD0Ev = comdat any

$_ZN11xercesc_2_78PSVIItemD2Ev = comdat any

$_ZTVN11xercesc_2_78PSVIItemE = comdat any

$_ZTSN11xercesc_2_78PSVIItemE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_78PSVIItemE = comdat any

@_ZTVN11xercesc_2_78PSVIItemE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_78PSVIItemE, ptr @_ZN11xercesc_2_78PSVIItemD2Ev, ptr @_ZN11xercesc_2_78PSVIItemD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZNK11xercesc_2_78PSVIItem14getActualValueEv] }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_78PSVIItemE = linkonce_odr dso_local constant [25 x i8] c"N11xercesc_2_78PSVIItemE\00", comdat, align 1
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_78PSVIItemE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_78PSVIItemE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_78PSVIItemD0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 comdat align 2 !prof !34 {
  tail call void @llvm.trap() #7
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_78PSVIItemC2EPNS_13MemoryManagerE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(80) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !35 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_78PSVIItemE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !36
  %3 = getelementptr inbounds %"class.xercesc_2_7::PSVIItem", ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !39
  %4 = getelementptr inbounds %"class.xercesc_2_7::PSVIItem", ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %"class.xercesc_2_7::PSVIItem", ptr %0, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %4, i8 0, i64 36, i1 false)
  store i32 2, ptr %5, align 4, !tbaa !46
  %6 = getelementptr inbounds %"class.xercesc_2_7::PSVIItem", ptr %0, i64 0, i32 8
  store i8 0, ptr %6, align 8, !tbaa !47
  %7 = getelementptr inbounds %"class.xercesc_2_7::PSVIItem", ptr %0, i64 0, i32 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_78PSVIItem5resetEPKtS2_NS0_14VALIDITY_STATEENS0_15ASSESSMENT_TYPEE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 align 2 !prof !34 {
  %6 = getelementptr inbounds %"class.xercesc_2_7::PSVIItem", ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !48
  %7 = getelementptr inbounds %"class.xercesc_2_7::PSVIItem", ptr %0, i64 0, i32 3
  store ptr %2, ptr %7, align 8, !tbaa !49
  %8 = getelementptr inbounds %"class.xercesc_2_7::PSVIItem", ptr %0, i64 0, i32 6
  store i32 %3, ptr %8, align 8, !tbaa !50
  %9 = getelementptr inbounds %"class.xercesc_2_7::PSVIItem", ptr %0, i64 0, i32 7
  store i32 %4, ptr %9, align 4, !tbaa !46
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_78PSVIItem22setValidationAttemptedENS0_15ASSESSMENT_TYPEE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(80) %0, i32 noundef %1) local_unnamed_addr #2 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::PSVIItem", ptr %0, i64 0, i32 7
  store i32 %1, ptr %3, align 4, !tbaa !46
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_78PSVIItem11setValidityENS0_14VALIDITY_STATEE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(80) %0, i32 noundef %1) local_unnamed_addr #2 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::PSVIItem", ptr %0, i64 0, i32 6
  store i32 %1, ptr %3, align 8, !tbaa !50
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_78PSVIItem14getActualValueEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0) unnamed_addr #3 align 2 !prof !34 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %"class.xercesc_2_7::PSVIItem", ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 4, !tbaa !46
  %5 = icmp ne i32 %4, 0
  %6 = getelementptr inbounds %"class.xercesc_2_7::PSVIItem", ptr %0, i64 0, i32 6
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 2
  %9 = select i1 %5, i1 %8, i1 false
  br i1 %9, label %10, label %53

10:                                               ; preds = %1
  %11 = getelementptr inbounds %"class.xercesc_2_7::PSVIItem", ptr %0, i64 0, i32 9
  %12 = load ptr, ptr %11, align 8, !tbaa !51
  %13 = icmp eq ptr %12, null
  br i1 %13, label %53, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %"class.xercesc_2_7::XSTypeDefinition", ptr %12, i64 0, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !52
  %17 = icmp eq i32 %16, 15
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = tail call noundef i32 @_ZNK11xercesc_2_723XSComplexTypeDefinition14getContentTypeEv(ptr noundef nonnull align 8 dereferenceable(106) %12)
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %53

21:                                               ; preds = %18, %14
  %22 = getelementptr inbounds %"class.xercesc_2_7::PSVIItem", ptr %0, i64 0, i32 10
  %23 = load ptr, ptr %22, align 8, !tbaa !59
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %34

25:                                               ; preds = %21
  %26 = load ptr, ptr %11, align 8, !tbaa !51
  %27 = getelementptr inbounds %"class.xercesc_2_7::XSTypeDefinition", ptr %26, i64 0, i32 1
  %28 = load i32, ptr %27, align 4, !tbaa !52
  %29 = icmp eq i32 %28, 16
  br i1 %29, label %34, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %"class.xercesc_2_7::XSComplexTypeDefinition", ptr %26, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !60
  %33 = icmp eq ptr %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %30, %25, %21
  %35 = phi ptr [ %23, %21 ], [ %26, %25 ], [ %32, %30 ]
  %36 = getelementptr inbounds %"class.xercesc_2_7::XSSimpleTypeDefinition", ptr %35, i64 0, i32 4
  %37 = load ptr, ptr %36, align 8, !tbaa !62
  br label %38

38:                                               ; preds = %34, %30
  %39 = phi ptr [ null, %30 ], [ %37, %34 ]
  %40 = icmp eq ptr %39, null
  br i1 %40, label %53, label %41

41:                                               ; preds = %38
  %42 = tail call noundef ptr @_ZN11xercesc_2_724DatatypeValidatorFactory23getBuiltInBaseValidatorEPKNS_17DatatypeValidatorE(ptr noundef nonnull %39)
  %43 = icmp eq ptr %42, null
  br i1 %43, label %53, label %44

44:                                               ; preds = %41
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !tbaa !65
  %45 = getelementptr inbounds %"class.xercesc_2_7::PSVIItem", ptr %0, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !49
  %47 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %42, i64 0, i32 16
  %48 = load ptr, ptr %47, align 8, !tbaa !67
  %49 = tail call noundef i32 @_ZN11xercesc_2_77XSValue11getDataTypeEPKt(ptr noundef %48)
  %50 = getelementptr inbounds %"class.xercesc_2_7::PSVIItem", ptr %0, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !39
  %52 = call noundef ptr @_ZN11xercesc_2_77XSValue14getActualValueEPKtNS0_8DataTypeERNS0_6StatusENS0_10XMLVersionEbPNS_13MemoryManagerE(ptr noundef %46, i32 noundef %49, ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 0, i1 noundef zeroext false, ptr noundef %51)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  br label %53

53:                                               ; preds = %38, %41, %44, %10, %18, %1
  %54 = phi ptr [ null, %1 ], [ null, %18 ], [ null, %10 ], [ null, %38 ], [ %52, %44 ], [ null, %41 ]
  ret ptr %54
}

declare noundef i32 @_ZNK11xercesc_2_723XSComplexTypeDefinition14getContentTypeEv(ptr noundef nonnull align 8 dereferenceable(106)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

declare noundef ptr @_ZN11xercesc_2_724DatatypeValidatorFactory23getBuiltInBaseValidatorEPKNS_17DatatypeValidatorE(ptr noundef) local_unnamed_addr #4

declare noundef ptr @_ZN11xercesc_2_77XSValue14getActualValueEPKtNS0_8DataTypeERNS0_6StatusENS0_10XMLVersionEbPNS_13MemoryManagerE(ptr noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(4), i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #4

declare noundef i32 @_ZN11xercesc_2_77XSValue11getDataTypeEPKt(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_78PSVIItemD2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 comdat align 2 !prof !34 {
  ret void
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { cold inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #2 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

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
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!"function_entry_count", i64 3}
!36 = !{!37, !37, i64 0}
!37 = !{!"vtable pointer", !38, i64 0}
!38 = !{!"Simple C++ TBAA"}
!39 = !{!40, !41, i64 8}
!40 = !{!"_ZTSN11xercesc_2_78PSVIItemE", !41, i64 8, !41, i64 16, !41, i64 24, !41, i64 32, !41, i64 40, !43, i64 48, !44, i64 52, !45, i64 56, !41, i64 64, !41, i64 72}
!41 = !{!"any pointer", !42, i64 0}
!42 = !{!"omnipotent char", !38, i64 0}
!43 = !{!"_ZTSN11xercesc_2_78PSVIItem14VALIDITY_STATEE", !42, i64 0}
!44 = !{!"_ZTSN11xercesc_2_78PSVIItem15ASSESSMENT_TYPEE", !42, i64 0}
!45 = !{!"bool", !42, i64 0}
!46 = !{!40, !44, i64 52}
!47 = !{!40, !45, i64 56}
!48 = !{!40, !41, i64 16}
!49 = !{!40, !41, i64 24}
!50 = !{!40, !43, i64 48}
!51 = !{!40, !41, i64 64}
!52 = !{!53, !57, i64 36}
!53 = !{!"_ZTSN11xercesc_2_716XSTypeDefinitionE", !54, i64 0, !57, i64 36, !58, i64 40, !41, i64 48}
!54 = !{!"_ZTSN11xercesc_2_78XSObjectE", !55, i64 8, !41, i64 16, !41, i64 24, !56, i64 32}
!55 = !{!"_ZTSN11xercesc_2_711XSConstants14COMPONENT_TYPEE", !42, i64 0}
!56 = !{!"int", !42, i64 0}
!57 = !{!"_ZTSN11xercesc_2_716XSTypeDefinition13TYPE_CATEGORYE", !42, i64 0}
!58 = !{!"short", !42, i64 0}
!59 = !{!40, !41, i64 72}
!60 = !{!61, !41, i64 80}
!61 = !{!"_ZTSN11xercesc_2_723XSComplexTypeDefinitionE", !53, i64 0, !41, i64 56, !41, i64 64, !41, i64 72, !41, i64 80, !41, i64 88, !41, i64 96, !58, i64 104}
!62 = !{!63, !41, i64 72}
!63 = !{!"_ZTSN11xercesc_2_722XSSimpleTypeDefinitionE", !53, i64 0, !56, i64 56, !56, i64 60, !64, i64 64, !41, i64 72, !41, i64 80, !41, i64 88, !41, i64 96, !41, i64 104, !41, i64 112, !41, i64 120}
!64 = !{!"_ZTSN11xercesc_2_722XSSimpleTypeDefinition7VARIETYE", !42, i64 0}
!65 = !{!66, !66, i64 0}
!66 = !{!"_ZTSN11xercesc_2_77XSValue6StatusE", !42, i64 0}
!67 = !{!68, !41, i64 80}
!68 = !{!"_ZTSN11xercesc_2_717DatatypeValidatorE", !69, i64 0, !45, i64 8, !45, i64 9, !45, i64 10, !45, i64 11, !58, i64 12, !56, i64 16, !56, i64 20, !56, i64 24, !70, i64 28, !71, i64 32, !41, i64 40, !41, i64 48, !41, i64 56, !41, i64 64, !41, i64 72, !41, i64 80, !41, i64 88, !41, i64 96}
!69 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!70 = !{!"_ZTSN11xercesc_2_717DatatypeValidator13ValidatorTypeE", !42, i64 0}
!71 = !{!"_ZTSN11xercesc_2_722XSSimpleTypeDefinition8ORDERINGE", !42, i64 0}
