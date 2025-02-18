; ModuleID = 'XSTypeDefinition.cpp'
source_filename = "XSTypeDefinition.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XSTypeDefinition" = type { %"class.xercesc_2_7::XSObject.base", i32, i16, ptr }
%"class.xercesc_2_7::XSObject.base" = type <{ ptr, i32, [4 x i8], ptr, ptr, i32 }>
%"class.xercesc_2_7::XSObject" = type <{ ptr, i32, [4 x i8], ptr, ptr, i32, [4 x i8] }>

@_ZTVN11xercesc_2_716XSTypeDefinitionE = dso_local unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_716XSTypeDefinitionE, ptr @_ZN11xercesc_2_716XSTypeDefinitionD2Ev, ptr @_ZN11xercesc_2_716XSTypeDefinitionD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZNK11xercesc_2_78XSObject5getIdEv, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_716XSTypeDefinitionE = dso_local constant [34 x i8] c"N11xercesc_2_716XSTypeDefinitionE\00", align 1
@_ZTIN11xercesc_2_78XSObjectE = external constant ptr
@_ZTIN11xercesc_2_716XSTypeDefinitionE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_716XSTypeDefinitionE, ptr @_ZTIN11xercesc_2_78XSObjectE }, align 8

@_ZN11xercesc_2_716XSTypeDefinitionD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_716XSTypeDefinitionD2Ev

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_716XSTypeDefinitionC2ENS0_13TYPE_CATEGORYEPS0_PNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #1 align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_78XSObjectC2ENS_11XSConstants14COMPONENT_TYPEEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef 3, ptr noundef %3, ptr noundef %4)
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xercesc_2_716XSTypeDefinitionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %6 = getelementptr inbounds %"class.xercesc_2_7::XSTypeDefinition", ptr %0, i64 0, i32 1
  store i32 %1, ptr %6, align 4, !tbaa !38
  %7 = getelementptr inbounds %"class.xercesc_2_7::XSTypeDefinition", ptr %0, i64 0, i32 2
  store i16 0, ptr %7, align 8, !tbaa !47
  %8 = getelementptr inbounds %"class.xercesc_2_7::XSTypeDefinition", ptr %0, i64 0, i32 3
  store ptr %2, ptr %8, align 8, !tbaa !48
  ret void
}

declare void @_ZN11xercesc_2_78XSObjectC2ENS_11XSConstants14COMPONENT_TYPEEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_78XSObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #3

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_716XSTypeDefinitionD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #4 align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_78XSObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) #7
  ret void
}

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define dso_local void @_ZN11xercesc_2_716XSTypeDefinitionD0Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #5 align 2 !prof !34 {
  tail call void @llvm.trap() #8
  unreachable
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_716XSTypeDefinition7isFinalEs(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0, i16 noundef signext %1) local_unnamed_addr #6 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XSTypeDefinition", ptr %0, i64 0, i32 2
  %4 = load i16, ptr %3, align 8, !tbaa !47
  %5 = and i16 %4, %1
  %6 = icmp ne i16 %5, 0
  ret i1 %6
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_716XSTypeDefinition11derivedFromEPKtS2_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 align 2 !prof !34 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %"class.xercesc_2_7::XSObject", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = tail call noundef ptr @_ZN11xercesc_2_77XSModel17getTypeDefinitionEPKtS2_(ptr noundef nonnull align 8 dereferenceable(298) %7, ptr noundef nonnull %2, ptr noundef %1)
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %5
  %11 = load ptr, ptr %0, align 8, !tbaa !35
  %12 = getelementptr inbounds ptr, ptr %11, i64 8
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef zeroext i1 %13(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %8)
  br label %15

15:                                               ; preds = %10, %5, %3
  %16 = phi i1 [ false, %3 ], [ %14, %10 ], [ false, %5 ]
  ret i1 %16
}

declare noundef ptr @_ZN11xercesc_2_77XSModel17getTypeDefinitionEPKtS2_(ptr noundef nonnull align 8 dereferenceable(298), ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @__cxa_pure_virtual() unnamed_addr

declare noundef i32 @_ZNK11xercesc_2_78XSObject5getIdEv(ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #2

attributes #0 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #1 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

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
!35 = !{!36, !36, i64 0}
!36 = !{!"vtable pointer", !37, i64 0}
!37 = !{!"Simple C++ TBAA"}
!38 = !{!39, !45, i64 36}
!39 = !{!"_ZTSN11xercesc_2_716XSTypeDefinitionE", !40, i64 0, !45, i64 36, !46, i64 40, !43, i64 48}
!40 = !{!"_ZTSN11xercesc_2_78XSObjectE", !41, i64 8, !43, i64 16, !43, i64 24, !44, i64 32}
!41 = !{!"_ZTSN11xercesc_2_711XSConstants14COMPONENT_TYPEE", !42, i64 0}
!42 = !{!"omnipotent char", !37, i64 0}
!43 = !{!"any pointer", !42, i64 0}
!44 = !{!"int", !42, i64 0}
!45 = !{!"_ZTSN11xercesc_2_716XSTypeDefinition13TYPE_CATEGORYE", !42, i64 0}
!46 = !{!"short", !42, i64 0}
!47 = !{!39, !46, i64 40}
!48 = !{!39, !43, i64 48}
!49 = !{!40, !43, i64 16}
