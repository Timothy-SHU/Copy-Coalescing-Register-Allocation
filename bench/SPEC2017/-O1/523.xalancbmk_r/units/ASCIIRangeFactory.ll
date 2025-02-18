; ModuleID = 'ASCIIRangeFactory.cpp'
source_filename = "ASCIIRangeFactory.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::RangeFactory" = type <{ ptr, i8, i8, [6 x i8] }>
%"class.xercesc_2_7::RangeTokenMap" = type { ptr, ptr, ptr, ptr, %"class.xercesc_2_7::XMLMutex" }
%"class.xercesc_2_7::XMLMutex" = type { ptr }
%"class.xercesc_2_7::RangeToken" = type { %"class.xercesc_2_7::Token", i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::Token" = type { ptr, i16, ptr }

@_ZTVN11xercesc_2_717ASCIIRangeFactoryE = dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_717ASCIIRangeFactoryE, ptr @_ZN11xercesc_2_717ASCIIRangeFactoryD2Ev, ptr @_ZN11xercesc_2_717ASCIIRangeFactoryD0Ev, ptr @_ZN11xercesc_2_717ASCIIRangeFactory20initializeKeywordMapEPNS_13RangeTokenMapE, ptr @_ZN11xercesc_2_717ASCIIRangeFactory11buildRangesEPNS_13RangeTokenMapE] }, align 8
@_ZN11xercesc_2_7L12fgASCIISpaceE = internal constant [14 x i16] [i16 97, i16 115, i16 99, i16 105, i16 105, i16 58, i16 105, i16 115, i16 83, i16 112, i16 97, i16 99, i16 101, i16 0], align 16
@_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE = external local_unnamed_addr global ptr, align 8
@_ZN11xercesc_2_7L12fgASCIIDigitE = internal constant [14 x i16] [i16 97, i16 115, i16 99, i16 105, i16 105, i16 58, i16 105, i16 115, i16 68, i16 105, i16 103, i16 105, i16 116, i16 0], align 16
@_ZN11xercesc_2_7L11fgASCIIWordE = internal constant [13 x i16] [i16 97, i16 115, i16 99, i16 105, i16 105, i16 58, i16 105, i16 115, i16 87, i16 111, i16 114, i16 100, i16 0], align 16
@_ZN11xercesc_2_7L13fgASCIIXDigitE = internal constant [15 x i16] [i16 97, i16 115, i16 99, i16 105, i16 105, i16 58, i16 105, i16 115, i16 88, i16 68, i16 105, i16 103, i16 105, i16 116, i16 0], align 16
@_ZN11xercesc_2_7L7fgASCIIE = internal constant [14 x i16] [i16 97, i16 115, i16 99, i16 105, i16 105, i16 58, i16 105, i16 115, i16 65, i16 115, i16 99, i16 105, i16 105, i16 0], align 16
@_ZN11xercesc_2_7L15fgASCIICategoryE = internal constant [6 x i16] [i16 65, i16 83, i16 67, i16 73, i16 73, i16 0], align 2
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_717ASCIIRangeFactoryE = dso_local constant [35 x i8] c"N11xercesc_2_717ASCIIRangeFactoryE\00", align 1
@_ZTIN11xercesc_2_712RangeFactoryE = external constant ptr
@_ZTIN11xercesc_2_717ASCIIRangeFactoryE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_717ASCIIRangeFactoryE, ptr @_ZTIN11xercesc_2_712RangeFactoryE }, align 8

@_ZN11xercesc_2_717ASCIIRangeFactoryC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_717ASCIIRangeFactoryC2Ev
@_ZN11xercesc_2_717ASCIIRangeFactoryD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_717ASCIIRangeFactoryD2Ev

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717ASCIIRangeFactoryC2Ev(ptr noundef nonnull align 8 dereferenceable(10) %0) unnamed_addr #0 align 2 !prof !40 {
  tail call void @_ZN11xercesc_2_712RangeFactoryC2Ev(ptr noundef nonnull align 8 dereferenceable(10) %0)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_717ASCIIRangeFactoryE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !41
  ret void
}

declare void @_ZN11xercesc_2_712RangeFactoryC2Ev(ptr noundef nonnull align 8 dereferenceable(10)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712RangeFactoryD2Ev(ptr noundef nonnull align 8 dereferenceable(10)) unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_717ASCIIRangeFactoryD2Ev(ptr noundef nonnull align 8 dereferenceable(10) %0) unnamed_addr #3 align 2 !prof !44 {
  tail call void @_ZN11xercesc_2_712RangeFactoryD2Ev(ptr noundef nonnull align 8 dereferenceable(10) %0) #4
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_717ASCIIRangeFactoryD0Ev(ptr noundef nonnull align 8 dereferenceable(10) %0) unnamed_addr #3 align 2 !prof !40 {
  tail call void @_ZN11xercesc_2_712RangeFactoryD2Ev(ptr noundef nonnull align 8 dereferenceable(10) %0) #4
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #4
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717ASCIIRangeFactory11buildRangesEPNS_13RangeTokenMapE(ptr noundef nonnull align 8 dereferenceable(10) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !44 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RangeFactory", ptr %0, i64 0, i32 1
  %4 = load i8, ptr %3, align 8, !tbaa !45, !range !49, !noundef !50
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %124

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::RangeFactory", ptr %0, i64 0, i32 2
  %8 = load i8, ptr %7, align 1, !tbaa !51, !range !49, !noundef !50
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = load ptr, ptr %0, align 8, !tbaa !41
  %12 = getelementptr inbounds ptr, ptr %11, i64 2
  %13 = load ptr, ptr %12, align 8
  tail call void %13(ptr noundef nonnull align 8 dereferenceable(10) %0, ptr noundef %1)
  br label %14

14:                                               ; preds = %10, %6
  %15 = getelementptr inbounds %"class.xercesc_2_7::RangeTokenMap", ptr %1, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !52
  %17 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory11createRangeEb(ptr noundef nonnull align 8 dereferenceable(128) %16, i1 noundef zeroext false)
  %18 = load ptr, ptr %17, align 8, !tbaa !41
  %19 = getelementptr inbounds ptr, ptr %18, i64 12
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(72) %17, i32 noundef 9, i32 noundef 9)
  %21 = load ptr, ptr %17, align 8, !tbaa !41
  %22 = getelementptr inbounds ptr, ptr %21, i64 12
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr noundef nonnull align 8 dereferenceable(72) %17, i32 noundef 10, i32 noundef 10)
  %24 = load ptr, ptr %17, align 8, !tbaa !41
  %25 = getelementptr inbounds ptr, ptr %24, i64 12
  %26 = load ptr, ptr %25, align 8
  tail call void %26(ptr noundef nonnull align 8 dereferenceable(72) %17, i32 noundef 12, i32 noundef 12)
  %27 = load ptr, ptr %17, align 8, !tbaa !41
  %28 = getelementptr inbounds ptr, ptr %27, i64 12
  %29 = load ptr, ptr %28, align 8
  tail call void %29(ptr noundef nonnull align 8 dereferenceable(72) %17, i32 noundef 13, i32 noundef 13)
  %30 = load ptr, ptr %17, align 8, !tbaa !41
  %31 = getelementptr inbounds ptr, ptr %30, i64 12
  %32 = load ptr, ptr %31, align 8
  tail call void %32(ptr noundef nonnull align 8 dereferenceable(72) %17, i32 noundef 32, i32 noundef 32)
  %33 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %17, i64 0, i32 6
  %34 = load ptr, ptr %33, align 8, !tbaa !56
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %14
  tail call void @_ZN11xercesc_2_710RangeToken11doCreateMapEv(ptr noundef nonnull align 8 dereferenceable(72) %17)
  br label %37

37:                                               ; preds = %14, %36
  tail call void @_ZN11xercesc_2_713RangeTokenMap13setRangeTokenEPKtPNS_10RangeTokenEb(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L12fgASCIISpaceE, ptr noundef nonnull %17, i1 noundef zeroext false)
  %38 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !61
  %39 = tail call noundef ptr @_ZN11xercesc_2_710RangeToken16complementRangesEPS0_PNS_12TokenFactoryEPNS_13MemoryManagerE(ptr noundef nonnull %17, ptr noundef nonnull %16, ptr noundef %38)
  %40 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %39, i64 0, i32 6
  %41 = load ptr, ptr %40, align 8, !tbaa !56
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  tail call void @_ZN11xercesc_2_710RangeToken11doCreateMapEv(ptr noundef nonnull align 8 dereferenceable(72) %39)
  br label %44

44:                                               ; preds = %37, %43
  tail call void @_ZN11xercesc_2_713RangeTokenMap13setRangeTokenEPKtPNS_10RangeTokenEb(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L12fgASCIISpaceE, ptr noundef nonnull %39, i1 noundef zeroext true)
  %45 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory11createRangeEb(ptr noundef nonnull align 8 dereferenceable(128) %16, i1 noundef zeroext false)
  %46 = load ptr, ptr %45, align 8, !tbaa !41
  %47 = getelementptr inbounds ptr, ptr %46, i64 12
  %48 = load ptr, ptr %47, align 8
  tail call void %48(ptr noundef nonnull align 8 dereferenceable(72) %45, i32 noundef 48, i32 noundef 57)
  %49 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %45, i64 0, i32 6
  %50 = load ptr, ptr %49, align 8, !tbaa !56
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  tail call void @_ZN11xercesc_2_710RangeToken11doCreateMapEv(ptr noundef nonnull align 8 dereferenceable(72) %45)
  br label %53

53:                                               ; preds = %44, %52
  tail call void @_ZN11xercesc_2_713RangeTokenMap13setRangeTokenEPKtPNS_10RangeTokenEb(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L12fgASCIIDigitE, ptr noundef nonnull %45, i1 noundef zeroext false)
  %54 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !61
  %55 = tail call noundef ptr @_ZN11xercesc_2_710RangeToken16complementRangesEPS0_PNS_12TokenFactoryEPNS_13MemoryManagerE(ptr noundef nonnull %45, ptr noundef nonnull %16, ptr noundef %54)
  %56 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %55, i64 0, i32 6
  %57 = load ptr, ptr %56, align 8, !tbaa !56
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  tail call void @_ZN11xercesc_2_710RangeToken11doCreateMapEv(ptr noundef nonnull align 8 dereferenceable(72) %55)
  br label %60

60:                                               ; preds = %53, %59
  tail call void @_ZN11xercesc_2_713RangeTokenMap13setRangeTokenEPKtPNS_10RangeTokenEb(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L12fgASCIIDigitE, ptr noundef nonnull %55, i1 noundef zeroext true)
  %61 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory11createRangeEb(ptr noundef nonnull align 8 dereferenceable(128) %16, i1 noundef zeroext false)
  %62 = load ptr, ptr %61, align 8, !tbaa !41
  %63 = getelementptr inbounds ptr, ptr %62, i64 12
  %64 = load ptr, ptr %63, align 8
  tail call void %64(ptr noundef nonnull align 8 dereferenceable(72) %61, i32 noundef 48, i32 noundef 57)
  %65 = load ptr, ptr %61, align 8, !tbaa !41
  %66 = getelementptr inbounds ptr, ptr %65, i64 12
  %67 = load ptr, ptr %66, align 8
  tail call void %67(ptr noundef nonnull align 8 dereferenceable(72) %61, i32 noundef 65, i32 noundef 90)
  %68 = load ptr, ptr %61, align 8, !tbaa !41
  %69 = getelementptr inbounds ptr, ptr %68, i64 12
  %70 = load ptr, ptr %69, align 8
  tail call void %70(ptr noundef nonnull align 8 dereferenceable(72) %61, i32 noundef 95, i32 noundef 95)
  %71 = load ptr, ptr %61, align 8, !tbaa !41
  %72 = getelementptr inbounds ptr, ptr %71, i64 12
  %73 = load ptr, ptr %72, align 8
  tail call void %73(ptr noundef nonnull align 8 dereferenceable(72) %61, i32 noundef 97, i32 noundef 122)
  %74 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %61, i64 0, i32 6
  %75 = load ptr, ptr %74, align 8, !tbaa !56
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %78

77:                                               ; preds = %60
  tail call void @_ZN11xercesc_2_710RangeToken11doCreateMapEv(ptr noundef nonnull align 8 dereferenceable(72) %61)
  br label %78

78:                                               ; preds = %60, %77
  tail call void @_ZN11xercesc_2_713RangeTokenMap13setRangeTokenEPKtPNS_10RangeTokenEb(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L11fgASCIIWordE, ptr noundef nonnull %61, i1 noundef zeroext false)
  %79 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !61
  %80 = tail call noundef ptr @_ZN11xercesc_2_710RangeToken16complementRangesEPS0_PNS_12TokenFactoryEPNS_13MemoryManagerE(ptr noundef nonnull %61, ptr noundef nonnull %16, ptr noundef %79)
  %81 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %80, i64 0, i32 6
  %82 = load ptr, ptr %81, align 8, !tbaa !56
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  tail call void @_ZN11xercesc_2_710RangeToken11doCreateMapEv(ptr noundef nonnull align 8 dereferenceable(72) %80)
  br label %85

85:                                               ; preds = %78, %84
  tail call void @_ZN11xercesc_2_713RangeTokenMap13setRangeTokenEPKtPNS_10RangeTokenEb(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L11fgASCIIWordE, ptr noundef nonnull %80, i1 noundef zeroext true)
  %86 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory11createRangeEb(ptr noundef nonnull align 8 dereferenceable(128) %16, i1 noundef zeroext false)
  %87 = load ptr, ptr %86, align 8, !tbaa !41
  %88 = getelementptr inbounds ptr, ptr %87, i64 12
  %89 = load ptr, ptr %88, align 8
  tail call void %89(ptr noundef nonnull align 8 dereferenceable(72) %86, i32 noundef 48, i32 noundef 57)
  %90 = load ptr, ptr %86, align 8, !tbaa !41
  %91 = getelementptr inbounds ptr, ptr %90, i64 12
  %92 = load ptr, ptr %91, align 8
  tail call void %92(ptr noundef nonnull align 8 dereferenceable(72) %86, i32 noundef 65, i32 noundef 70)
  %93 = load ptr, ptr %86, align 8, !tbaa !41
  %94 = getelementptr inbounds ptr, ptr %93, i64 12
  %95 = load ptr, ptr %94, align 8
  tail call void %95(ptr noundef nonnull align 8 dereferenceable(72) %86, i32 noundef 97, i32 noundef 97)
  %96 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %86, i64 0, i32 6
  %97 = load ptr, ptr %96, align 8, !tbaa !56
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %100

99:                                               ; preds = %85
  tail call void @_ZN11xercesc_2_710RangeToken11doCreateMapEv(ptr noundef nonnull align 8 dereferenceable(72) %86)
  br label %100

100:                                              ; preds = %85, %99
  tail call void @_ZN11xercesc_2_713RangeTokenMap13setRangeTokenEPKtPNS_10RangeTokenEb(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L13fgASCIIXDigitE, ptr noundef nonnull %86, i1 noundef zeroext false)
  %101 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !61
  %102 = tail call noundef ptr @_ZN11xercesc_2_710RangeToken16complementRangesEPS0_PNS_12TokenFactoryEPNS_13MemoryManagerE(ptr noundef nonnull %86, ptr noundef nonnull %16, ptr noundef %101)
  %103 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %102, i64 0, i32 6
  %104 = load ptr, ptr %103, align 8, !tbaa !56
  %105 = icmp eq ptr %104, null
  br i1 %105, label %106, label %107

106:                                              ; preds = %100
  tail call void @_ZN11xercesc_2_710RangeToken11doCreateMapEv(ptr noundef nonnull align 8 dereferenceable(72) %102)
  br label %107

107:                                              ; preds = %100, %106
  tail call void @_ZN11xercesc_2_713RangeTokenMap13setRangeTokenEPKtPNS_10RangeTokenEb(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L13fgASCIIXDigitE, ptr noundef nonnull %102, i1 noundef zeroext true)
  %108 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory11createRangeEb(ptr noundef nonnull align 8 dereferenceable(128) %16, i1 noundef zeroext false)
  %109 = load ptr, ptr %108, align 8, !tbaa !41
  %110 = getelementptr inbounds ptr, ptr %109, i64 12
  %111 = load ptr, ptr %110, align 8
  tail call void %111(ptr noundef nonnull align 8 dereferenceable(72) %108, i32 noundef 0, i32 noundef 127)
  %112 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %108, i64 0, i32 6
  %113 = load ptr, ptr %112, align 8, !tbaa !56
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %116

115:                                              ; preds = %107
  tail call void @_ZN11xercesc_2_710RangeToken11doCreateMapEv(ptr noundef nonnull align 8 dereferenceable(72) %108)
  br label %116

116:                                              ; preds = %107, %115
  tail call void @_ZN11xercesc_2_713RangeTokenMap13setRangeTokenEPKtPNS_10RangeTokenEb(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L7fgASCIIE, ptr noundef nonnull %108, i1 noundef zeroext false)
  %117 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !61
  %118 = tail call noundef ptr @_ZN11xercesc_2_710RangeToken16complementRangesEPS0_PNS_12TokenFactoryEPNS_13MemoryManagerE(ptr noundef nonnull %108, ptr noundef nonnull %16, ptr noundef %117)
  %119 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %118, i64 0, i32 6
  %120 = load ptr, ptr %119, align 8, !tbaa !56
  %121 = icmp eq ptr %120, null
  br i1 %121, label %122, label %123

122:                                              ; preds = %116
  tail call void @_ZN11xercesc_2_710RangeToken11doCreateMapEv(ptr noundef nonnull align 8 dereferenceable(72) %118)
  br label %123

123:                                              ; preds = %116, %122
  tail call void @_ZN11xercesc_2_713RangeTokenMap13setRangeTokenEPKtPNS_10RangeTokenEb(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L7fgASCIIE, ptr noundef nonnull %118, i1 noundef zeroext true)
  store i8 1, ptr %3, align 8, !tbaa !45
  br label %124

124:                                              ; preds = %2, %123
  ret void
}

declare noundef ptr @_ZN11xercesc_2_712TokenFactory11createRangeEb(ptr noundef nonnull align 8 dereferenceable(128), i1 noundef zeroext) local_unnamed_addr #1

declare void @_ZN11xercesc_2_713RangeTokenMap13setRangeTokenEPKtPNS_10RangeTokenEb(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_710RangeToken16complementRangesEPS0_PNS_12TokenFactoryEPNS_13MemoryManagerE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717ASCIIRangeFactory20initializeKeywordMapEPNS_13RangeTokenMapE(ptr nocapture noundef nonnull align 8 dereferenceable(10) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !40 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RangeFactory", ptr %0, i64 0, i32 2
  %4 = load i8, ptr %3, align 1, !tbaa !51, !range !49, !noundef !50
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %7, !prof !62

6:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_713RangeTokenMap13addKeywordMapEPKtS2_(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L12fgASCIISpaceE, ptr noundef nonnull @_ZN11xercesc_2_7L15fgASCIICategoryE)
  tail call void @_ZN11xercesc_2_713RangeTokenMap13addKeywordMapEPKtS2_(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L12fgASCIIDigitE, ptr noundef nonnull @_ZN11xercesc_2_7L15fgASCIICategoryE)
  tail call void @_ZN11xercesc_2_713RangeTokenMap13addKeywordMapEPKtS2_(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L11fgASCIIWordE, ptr noundef nonnull @_ZN11xercesc_2_7L15fgASCIICategoryE)
  tail call void @_ZN11xercesc_2_713RangeTokenMap13addKeywordMapEPKtS2_(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L13fgASCIIXDigitE, ptr noundef nonnull @_ZN11xercesc_2_7L15fgASCIICategoryE)
  tail call void @_ZN11xercesc_2_713RangeTokenMap13addKeywordMapEPKtS2_(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L7fgASCIIE, ptr noundef nonnull @_ZN11xercesc_2_7L15fgASCIICategoryE)
  store i8 1, ptr %3, align 1, !tbaa !51
  br label %7

7:                                                ; preds = %2, %6
  ret void
}

declare void @_ZN11xercesc_2_713RangeTokenMap13addKeywordMapEPKtS2_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN11xercesc_2_710RangeToken11doCreateMapEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #1

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!39}

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
!34 = distinct !{!35, !36, !37, !38}
!35 = !{ptr @_ZN11xercesc_2_717ASCIIRangeFactoryC2Ev, ptr @_ZN11xercesc_2_712RangeFactoryC2Ev, i64 1}
!36 = !{ptr @_ZN11xercesc_2_717ASCIIRangeFactoryD0Ev, ptr @_ZN11xercesc_2_712RangeFactoryD2Ev, i64 1}
!37 = !{ptr @_ZN11xercesc_2_717ASCIIRangeFactoryD0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 1}
!38 = !{ptr @_ZN11xercesc_2_717ASCIIRangeFactory20initializeKeywordMapEPNS_13RangeTokenMapE, ptr @_ZN11xercesc_2_713RangeTokenMap13addKeywordMapEPKtS2_, i64 5}
!39 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!40 = !{!"function_entry_count", i64 1}
!41 = !{!42, !42, i64 0}
!42 = !{!"vtable pointer", !43, i64 0}
!43 = !{!"Simple C++ TBAA"}
!44 = !{!"function_entry_count", i64 0}
!45 = !{!46, !47, i64 8}
!46 = !{!"_ZTSN11xercesc_2_712RangeFactoryE", !47, i64 8, !47, i64 9}
!47 = !{!"bool", !48, i64 0}
!48 = !{!"omnipotent char", !43, i64 0}
!49 = !{i8 0, i8 2}
!50 = !{}
!51 = !{!46, !47, i64 9}
!52 = !{!53, !54, i64 24}
!53 = !{!"_ZTSN11xercesc_2_713RangeTokenMapE", !54, i64 0, !54, i64 8, !54, i64 16, !54, i64 24, !55, i64 32}
!54 = !{!"any pointer", !48, i64 0}
!55 = !{!"_ZTSN11xercesc_2_78XMLMutexE", !54, i64 0}
!56 = !{!57, !54, i64 40}
!57 = !{!"_ZTSN11xercesc_2_710RangeTokenE", !58, i64 0, !47, i64 24, !47, i64 25, !60, i64 28, !60, i64 32, !60, i64 36, !54, i64 40, !54, i64 48, !54, i64 56, !54, i64 64}
!58 = !{!"_ZTSN11xercesc_2_75TokenE", !59, i64 8, !54, i64 16}
!59 = !{!"short", !48, i64 0}
!60 = !{!"int", !48, i64 0}
!61 = !{!54, !54, i64 0}
!62 = !{!"branch_weights", i32 1, i32 0}
