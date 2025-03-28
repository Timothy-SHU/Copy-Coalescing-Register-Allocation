# -*- coding: utf-8 -*-
import os
import sys
import numpy as np
import matplotlib as mplt
import matplotlib.pyplot as plt

def PlotFig(ILPSize, ILPTime, TreewidthSize, TreewidthTime, figName):
#    plt.rcParams["figure.figsize"] = (8, 6)
    plt.rcParams["figure.figsize"] = (12,8)
    plt.xlabel("|Vars|", fontsize = 14)
    plt.ylabel("runtime", fontsize = 14)

    plt.xscale('log')
    plt.yscale('log')
    plt.scatter(TreewidthSize, TreewidthTime, s = 8, alpha = 0.5, label = "Our Approach")
    plt.scatter(ILPSize, ILPTime, s = 8, alpha = 0.5, label = "ILP-based Method")

#    kx = 1.0/4
#    ky = 1.0/8
#    plt.xticks(np.power(np.arange(0, np.max(ILPSize), step = 1000), kx), [])
#    plt.yticks(np.power(np.arange(0, np.max(ILPTime), step = 2), ky), []) 
#    plt.scatter(np.power(TreewidthSize, kx), np.power(TreewidthTime, ky), s = 8, alpha = 0.5, label = "Our Algorithm")
#    plt.scatter(np.power(ILPSize, kx), np.power(ILPTime, ky), s = 8, alpha = 0.5, label = "ILP Coalescer")

    plt.legend(fontsize = 12)
    plt.savefig(figName+".pdf")
    plt.show()
 

def main():
    bench = "-LinuxKernel"
    ILPSize = []
    ILPTime = []
    input_file = open("ILP"+bench+".txt", 'r')
    for line in input_file.readlines():
        elements = line.split()
        ILPSize.append(float(elements[0]))
        ILPTime.append(float(elements[1]))
    input_file.close()

    TreewidthSize = []
    TreewidthTime = []
    input_file = open("Treewidth"+bench+".txt", 'r')
    for line in input_file.readlines():
        elements = line.split()
        TreewidthSize.append(float(elements[0]))
        TreewidthTime.append(float(elements[1]))
    input_file.close()
    
    PlotFig(ILPSize, ILPTime, TreewidthSize, TreewidthTime, "RuntimeCMP"+bench)
       
if __name__ == "__main__":
	main()
