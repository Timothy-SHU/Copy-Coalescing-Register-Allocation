; ModuleID = 'ASCIIRangeFactory.cpp'
source_filename = "ASCIIRangeFactory.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::RangeFactory" = type <{ ptr, i8, i8, [6 x i8] }>
%"class.xercesc_2_7::RangeTokenMap" = type { ptr, ptr, ptr, ptr, %"class.xercesc_2_7::XMLMutex" }
%"class.xercesc_2_7::XMLMutex" = type { ptr }
%"class.xercesc_2_7::RangeToken" = type { %"class.xercesc_2_7::Token", i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::Token" = type { ptr, i16, ptr }

$_ZNK11xercesc_2_713RangeTokenMap15getTokenFactoryEv = comdat any

$_ZN11xercesc_2_710RangeToken9createMapEv = comdat any

@_ZTVN11xercesc_2_717ASCIIRangeFactoryE = dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_717ASCIIRangeFactoryE, ptr @_ZN11xercesc_2_717ASCIIRangeFactoryD2Ev, ptr @_ZN11xercesc_2_717ASCIIRangeFactoryD0Ev, ptr @_ZN11xercesc_2_717ASCIIRangeFactory20initializeKeywordMapEPNS_13RangeTokenMapE, ptr @_ZN11xercesc_2_717ASCIIRangeFactory11buildRangesEPNS_13RangeTokenMapE] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_717ASCIIRangeFactoryE = dso_local constant [35 x i8] c"N11xercesc_2_717ASCIIRangeFactoryE\00", align 1
@_ZTIN11xercesc_2_712RangeFactoryE = external constant ptr
@_ZTIN11xercesc_2_717ASCIIRangeFactoryE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_717ASCIIRangeFactoryE, ptr @_ZTIN11xercesc_2_712RangeFactoryE }, align 8
@_ZN11xercesc_2_7L12fgASCIISpaceE = internal constant [14 x i16] [i16 97, i16 115, i16 99, i16 105, i16 105, i16 58, i16 105, i16 115, i16 83, i16 112, i16 97, i16 99, i16 101, i16 0], align 16
@_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE = external local_unnamed_addr global ptr, align 8
@_ZN11xercesc_2_7L12fgASCIIDigitE = internal constant [14 x i16] [i16 97, i16 115, i16 99, i16 105, i16 105, i16 58, i16 105, i16 115, i16 68, i16 105, i16 103, i16 105, i16 116, i16 0], align 16
@_ZN11xercesc_2_7L11fgASCIIWordE = internal constant [13 x i16] [i16 97, i16 115, i16 99, i16 105, i16 105, i16 58, i16 105, i16 115, i16 87, i16 111, i16 114, i16 100, i16 0], align 16
@_ZN11xercesc_2_7L13fgASCIIXDigitE = internal constant [15 x i16] [i16 97, i16 115, i16 99, i16 105, i16 105, i16 58, i16 105, i16 115, i16 88, i16 68, i16 105, i16 103, i16 105, i16 116, i16 0], align 16
@_ZN11xercesc_2_7L7fgASCIIE = internal constant [14 x i16] [i16 97, i16 115, i16 99, i16 105, i16 105, i16 58, i16 105, i16 115, i16 65, i16 115, i16 99, i16 105, i16 105, i16 0], align 16
@_ZN11xercesc_2_7L15fgASCIICategoryE = internal constant [6 x i16] [i16 65, i16 83, i16 67, i16 73, i16 73, i16 0], align 2

@_ZN11xercesc_2_717ASCIIRangeFactoryC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_717ASCIIRangeFactoryC2Ev
@_ZN11xercesc_2_717ASCIIRangeFactoryD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_717ASCIIRangeFactoryD2Ev

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_717ASCIIRangeFactoryD0Ev(ptr noundef nonnull align 8 dereferenceable(10) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xercesc_2_717ASCIIRangeFactoryD2Ev(ptr noundef nonnull align 8 dereferenceable(10) %0) #4
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #4
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717ASCIIRangeFactory20initializeKeywordMapEPNS_13RangeTokenMapE(ptr nocapture noundef nonnull align 8 dereferenceable(10) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !41 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RangeFactory", ptr %0, i64 0, i32 2
  %4 = load i8, ptr %3, align 1, !tbaa !42, !range !47, !noundef !48
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %7, !prof !49

6:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_713RangeTokenMap13addKeywordMapEPKtS2_(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L12fgASCIISpaceE, ptr noundef nonnull @_ZN11xercesc_2_7L15fgASCIICategoryE) #5
  tail call void @_ZN11xercesc_2_713RangeTokenMap13addKeywordMapEPKtS2_(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L12fgASCIIDigitE, ptr noundef nonnull @_ZN11xercesc_2_7L15fgASCIICategoryE) #5
  tail call void @_ZN11xercesc_2_713RangeTokenMap13addKeywordMapEPKtS2_(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L11fgASCIIWordE, ptr noundef nonnull @_ZN11xercesc_2_7L15fgASCIICategoryE) #5
  tail call void @_ZN11xercesc_2_713RangeTokenMap13addKeywordMapEPKtS2_(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L13fgASCIIXDigitE, ptr noundef nonnull @_ZN11xercesc_2_7L15fgASCIICategoryE) #5
  tail call void @_ZN11xercesc_2_713RangeTokenMap13addKeywordMapEPKtS2_(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L7fgASCIIE, ptr noundef nonnull @_ZN11xercesc_2_7L15fgASCIICategoryE) #5
  store i8 1, ptr %3, align 1, !tbaa !42
  br label %7

7:                                                ; preds = %2, %6
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717ASCIIRangeFactory11buildRangesEPNS_13RangeTokenMapE(ptr noundef nonnull align 8 dereferenceable(10) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !50 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RangeFactory", ptr %0, i64 0, i32 1
  %4 = load i8, ptr %3, align 8, !tbaa !51, !range !47, !noundef !48
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %73

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::RangeFactory", ptr %0, i64 0, i32 2
  %8 = load i8, ptr %7, align 1, !tbaa !42, !range !47, !noundef !48
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = load ptr, ptr %0, align 8, !tbaa !52
  %12 = getelementptr inbounds ptr, ptr %11, i64 2
  %13 = load ptr, ptr %12, align 8
  tail call void %13(ptr noundef nonnull align 8 dereferenceable(10) %0, ptr noundef %1) #5
  br label %14

14:                                               ; preds = %10, %6
  %15 = tail call noundef ptr @_ZNK11xercesc_2_713RangeTokenMap15getTokenFactoryEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #5
  %16 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory11createRangeEb(ptr noundef nonnull align 8 dereferenceable(128) %15, i1 noundef zeroext false) #5
  %17 = load ptr, ptr %16, align 8, !tbaa !52
  %18 = getelementptr inbounds ptr, ptr %17, i64 12
  %19 = load ptr, ptr %18, align 8
  tail call void %19(ptr noundef nonnull align 8 dereferenceable(72) %16, i32 noundef 9, i32 noundef 9) #5
  %20 = load ptr, ptr %16, align 8, !tbaa !52
  %21 = getelementptr inbounds ptr, ptr %20, i64 12
  %22 = load ptr, ptr %21, align 8
  tail call void %22(ptr noundef nonnull align 8 dereferenceable(72) %16, i32 noundef 10, i32 noundef 10) #5
  %23 = load ptr, ptr %16, align 8, !tbaa !52
  %24 = getelementptr inbounds ptr, ptr %23, i64 12
  %25 = load ptr, ptr %24, align 8
  tail call void %25(ptr noundef nonnull align 8 dereferenceable(72) %16, i32 noundef 12, i32 noundef 12) #5
  %26 = load ptr, ptr %16, align 8, !tbaa !52
  %27 = getelementptr inbounds ptr, ptr %26, i64 12
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(72) %16, i32 noundef 13, i32 noundef 13) #5
  %29 = load ptr, ptr %16, align 8, !tbaa !52
  %30 = getelementptr inbounds ptr, ptr %29, i64 12
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(72) %16, i32 noundef 32, i32 noundef 32) #5
  tail call void @_ZN11xercesc_2_710RangeToken9createMapEv(ptr noundef nonnull align 8 dereferenceable(72) %16) #5
  tail call void @_ZN11xercesc_2_713RangeTokenMap13setRangeTokenEPKtPNS_10RangeTokenEb(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L12fgASCIISpaceE, ptr noundef nonnull %16, i1 noundef zeroext false) #5
  %32 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !54
  %33 = tail call noundef ptr @_ZN11xercesc_2_710RangeToken16complementRangesEPS0_PNS_12TokenFactoryEPNS_13MemoryManagerE(ptr noundef nonnull %16, ptr noundef nonnull %15, ptr noundef %32) #5
  tail call void @_ZN11xercesc_2_710RangeToken9createMapEv(ptr noundef nonnull align 8 dereferenceable(72) %33) #5
  tail call void @_ZN11xercesc_2_713RangeTokenMap13setRangeTokenEPKtPNS_10RangeTokenEb(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L12fgASCIISpaceE, ptr noundef nonnull %33, i1 noundef zeroext true) #5
  %34 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory11createRangeEb(ptr noundef nonnull align 8 dereferenceable(128) %15, i1 noundef zeroext false) #5
  %35 = load ptr, ptr %34, align 8, !tbaa !52
  %36 = getelementptr inbounds ptr, ptr %35, i64 12
  %37 = load ptr, ptr %36, align 8
  tail call void %37(ptr noundef nonnull align 8 dereferenceable(72) %34, i32 noundef 48, i32 noundef 57) #5
  tail call void @_ZN11xercesc_2_710RangeToken9createMapEv(ptr noundef nonnull align 8 dereferenceable(72) %34) #5
  tail call void @_ZN11xercesc_2_713RangeTokenMap13setRangeTokenEPKtPNS_10RangeTokenEb(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L12fgASCIIDigitE, ptr noundef nonnull %34, i1 noundef zeroext false) #5
  %38 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !54
  %39 = tail call noundef ptr @_ZN11xercesc_2_710RangeToken16complementRangesEPS0_PNS_12TokenFactoryEPNS_13MemoryManagerE(ptr noundef nonnull %34, ptr noundef nonnull %15, ptr noundef %38) #5
  tail call void @_ZN11xercesc_2_710RangeToken9createMapEv(ptr noundef nonnull align 8 dereferenceable(72) %39) #5
  tail call void @_ZN11xercesc_2_713RangeTokenMap13setRangeTokenEPKtPNS_10RangeTokenEb(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L12fgASCIIDigitE, ptr noundef nonnull %39, i1 noundef zeroext true) #5
  %40 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory11createRangeEb(ptr noundef nonnull align 8 dereferenceable(128) %15, i1 noundef zeroext false) #5
  %41 = load ptr, ptr %40, align 8, !tbaa !52
  %42 = getelementptr inbounds ptr, ptr %41, i64 12
  %43 = load ptr, ptr %42, align 8
  tail call void %43(ptr noundef nonnull align 8 dereferenceable(72) %40, i32 noundef 48, i32 noundef 57) #5
  %44 = load ptr, ptr %40, align 8, !tbaa !52
  %45 = getelementptr inbounds ptr, ptr %44, i64 12
  %46 = load ptr, ptr %45, align 8
  tail call void %46(ptr noundef nonnull align 8 dereferenceable(72) %40, i32 noundef 65, i32 noundef 90) #5
  %47 = load ptr, ptr %40, align 8, !tbaa !52
  %48 = getelementptr inbounds ptr, ptr %47, i64 12
  %49 = load ptr, ptr %48, align 8
  tail call void %49(ptr noundef nonnull align 8 dereferenceable(72) %40, i32 noundef 95, i32 noundef 95) #5
  %50 = load ptr, ptr %40, align 8, !tbaa !52
  %51 = getelementptr inbounds ptr, ptr %50, i64 12
  %52 = load ptr, ptr %51, align 8
  tail call void %52(ptr noundef nonnull align 8 dereferenceable(72) %40, i32 noundef 97, i32 noundef 122) #5
  tail call void @_ZN11xercesc_2_710RangeToken9createMapEv(ptr noundef nonnull align 8 dereferenceable(72) %40) #5
  tail call void @_ZN11xercesc_2_713RangeTokenMap13setRangeTokenEPKtPNS_10RangeTokenEb(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L11fgASCIIWordE, ptr noundef nonnull %40, i1 noundef zeroext false) #5
  %53 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !54
  %54 = tail call noundef ptr @_ZN11xercesc_2_710RangeToken16complementRangesEPS0_PNS_12TokenFactoryEPNS_13MemoryManagerE(ptr noundef nonnull %40, ptr noundef nonnull %15, ptr noundef %53) #5
  tail call void @_ZN11xercesc_2_710RangeToken9createMapEv(ptr noundef nonnull align 8 dereferenceable(72) %54) #5
  tail call void @_ZN11xercesc_2_713RangeTokenMap13setRangeTokenEPKtPNS_10RangeTokenEb(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L11fgASCIIWordE, ptr noundef nonnull %54, i1 noundef zeroext true) #5
  %55 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory11createRangeEb(ptr noundef nonnull align 8 dereferenceable(128) %15, i1 noundef zeroext false) #5
  %56 = load ptr, ptr %55, align 8, !tbaa !52
  %57 = getelementptr inbounds ptr, ptr %56, i64 12
  %58 = load ptr, ptr %57, align 8
  tail call void %58(ptr noundef nonnull align 8 dereferenceable(72) %55, i32 noundef 48, i32 noundef 57) #5
  %59 = load ptr, ptr %55, align 8, !tbaa !52
  %60 = getelementptr inbounds ptr, ptr %59, i64 12
  %61 = load ptr, ptr %60, align 8
  tail call void %61(ptr noundef nonnull align 8 dereferenceable(72) %55, i32 noundef 65, i32 noundef 70) #5
  %62 = load ptr, ptr %55, align 8, !tbaa !52
  %63 = getelementptr inbounds ptr, ptr %62, i64 12
  %64 = load ptr, ptr %63, align 8
  tail call void %64(ptr noundef nonnull align 8 dereferenceable(72) %55, i32 noundef 97, i32 noundef 97) #5
  tail call void @_ZN11xercesc_2_710RangeToken9createMapEv(ptr noundef nonnull align 8 dereferenceable(72) %55) #5
  tail call void @_ZN11xercesc_2_713RangeTokenMap13setRangeTokenEPKtPNS_10RangeTokenEb(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L13fgASCIIXDigitE, ptr noundef nonnull %55, i1 noundef zeroext false) #5
  %65 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !54
  %66 = tail call noundef ptr @_ZN11xercesc_2_710RangeToken16complementRangesEPS0_PNS_12TokenFactoryEPNS_13MemoryManagerE(ptr noundef nonnull %55, ptr noundef nonnull %15, ptr noundef %65) #5
  tail call void @_ZN11xercesc_2_710RangeToken9createMapEv(ptr noundef nonnull align 8 dereferenceable(72) %66) #5
  tail call void @_ZN11xercesc_2_713RangeTokenMap13setRangeTokenEPKtPNS_10RangeTokenEb(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L13fgASCIIXDigitE, ptr noundef nonnull %66, i1 noundef zeroext true) #5
  %67 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory11createRangeEb(ptr noundef nonnull align 8 dereferenceable(128) %15, i1 noundef zeroext false) #5
  %68 = load ptr, ptr %67, align 8, !tbaa !52
  %69 = getelementptr inbounds ptr, ptr %68, i64 12
  %70 = load ptr, ptr %69, align 8
  tail call void %70(ptr noundef nonnull align 8 dereferenceable(72) %67, i32 noundef 0, i32 noundef 127) #5
  tail call void @_ZN11xercesc_2_710RangeToken9createMapEv(ptr noundef nonnull align 8 dereferenceable(72) %67) #5
  tail call void @_ZN11xercesc_2_713RangeTokenMap13setRangeTokenEPKtPNS_10RangeTokenEb(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L7fgASCIIE, ptr noundef nonnull %67, i1 noundef zeroext false) #5
  %71 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !54
  %72 = tail call noundef ptr @_ZN11xercesc_2_710RangeToken16complementRangesEPS0_PNS_12TokenFactoryEPNS_13MemoryManagerE(ptr noundef nonnull %67, ptr noundef nonnull %15, ptr noundef %71) #5
  tail call void @_ZN11xercesc_2_710RangeToken9createMapEv(ptr noundef nonnull align 8 dereferenceable(72) %72) #5
  tail call void @_ZN11xercesc_2_713RangeTokenMap13setRangeTokenEPKtPNS_10RangeTokenEb(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L7fgASCIIE, ptr noundef nonnull %72, i1 noundef zeroext true) #5
  store i8 1, ptr %3, align 8, !tbaa !51
  br label %73

73:                                               ; preds = %2, %14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717ASCIIRangeFactoryC2Ev(ptr noundef nonnull align 8 dereferenceable(10) %0) unnamed_addr #1 align 2 !prof !41 {
  tail call void @_ZN11xercesc_2_712RangeFactoryC2Ev(ptr noundef nonnull align 8 dereferenceable(10) %0) #5
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_717ASCIIRangeFactoryE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !52
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712RangeFactoryC2Ev(ptr noundef nonnull align 8 dereferenceable(10)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_717ASCIIRangeFactoryD2Ev(ptr noundef nonnull align 8 dereferenceable(10) %0) unnamed_addr #0 align 2 !prof !41 {
  tail call void @_ZN11xercesc_2_712RangeFactoryD2Ev(ptr noundef nonnull align 8 dereferenceable(10) %0) #4
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712RangeFactoryD2Ev(ptr noundef nonnull align 8 dereferenceable(10)) unnamed_addr #3

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713RangeTokenMap15getTokenFactoryEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 comdat align 2 !prof !41 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RangeTokenMap", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !56
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_712TokenFactory11createRangeEb(ptr noundef nonnull align 8 dereferenceable(128), i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710RangeToken9createMapEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #1 comdat align 2 !prof !59 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !60
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6, !prof !65

5:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_710RangeToken11doCreateMapEv(ptr noundef nonnull align 8 dereferenceable(72) %0) #5
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713RangeTokenMap13setRangeTokenEPKtPNS_10RangeTokenEb(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_710RangeToken16complementRangesEPS0_PNS_12TokenFactoryEPNS_13MemoryManagerE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710RangeToken11doCreateMapEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713RangeTokenMap13addKeywordMapEPKtS2_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind optsize }
attributes #5 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!40}

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
!35 = distinct !{!36, !37, !38, !39}
!36 = !{ptr @_ZN11xercesc_2_717ASCIIRangeFactory20initializeKeywordMapEPNS_13RangeTokenMapE, ptr @_ZN11xercesc_2_713RangeTokenMap13addKeywordMapEPKtS2_, i64 5}
!37 = !{ptr @_ZN11xercesc_2_717ASCIIRangeFactoryC2Ev, ptr @_ZN11xercesc_2_712RangeFactoryC2Ev, i64 1}
!38 = !{ptr @_ZN11xercesc_2_717ASCIIRangeFactoryD2Ev, ptr @_ZN11xercesc_2_712RangeFactoryD2Ev, i64 1}
!39 = !{ptr @_ZN11xercesc_2_710RangeToken9createMapEv, ptr @_ZN11xercesc_2_710RangeToken11doCreateMapEv, i64 18}
!40 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!41 = !{!"function_entry_count", i64 1}
!42 = !{!43, !44, i64 9}
!43 = !{!"_ZTSN11xercesc_2_712RangeFactoryE", !44, i64 8, !44, i64 9}
!44 = !{!"bool", !45, i64 0}
!45 = !{!"omnipotent char", !46, i64 0}
!46 = !{!"Simple C++ TBAA"}
!47 = !{i8 0, i8 2}
!48 = !{}
!49 = !{!"branch_weights", i32 2, i32 1}
!50 = !{!"function_entry_count", i64 0}
!51 = !{!43, !44, i64 8}
!52 = !{!53, !53, i64 0}
!53 = !{!"vtable pointer", !46, i64 0}
!54 = !{!55, !55, i64 0}
!55 = !{!"any pointer", !45, i64 0}
!56 = !{!57, !55, i64 24}
!57 = !{!"_ZTSN11xercesc_2_713RangeTokenMapE", !55, i64 0, !55, i64 8, !55, i64 16, !55, i64 24, !58, i64 32}
!58 = !{!"_ZTSN11xercesc_2_78XMLMutexE", !55, i64 0}
!59 = !{!"function_entry_count", i64 1301042}
!60 = !{!61, !55, i64 40}
!61 = !{!"_ZTSN11xercesc_2_710RangeTokenE", !62, i64 0, !44, i64 24, !44, i64 25, !64, i64 28, !64, i64 32, !64, i64 36, !55, i64 40, !55, i64 48, !55, i64 56, !55, i64 64}
!62 = !{!"_ZTSN11xercesc_2_75TokenE", !63, i64 8, !55, i64 16}
!63 = !{!"short", !45, i64 0}
!64 = !{!"int", !45, i64 0}
!65 = !{!"branch_weights", i32 18, i32 1301026}
